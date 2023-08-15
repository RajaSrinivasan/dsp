with Ada.Text_IO;                   use Ada.Text_IO;
with Ada.Integer_Text_IO;           use Ada.Integer_Text_IO;
with Ada.Long_Long_Integer_Text_IO; use Ada.Long_Long_Integer_Text_IO;
with Ada.Float_Text_IO;             use Ada.Float_Text_IO;
package body sndfile is

   package int_text_io is new Ada.Text_Io.Integer_IO (Interfaces.C.int);
   use int_text_io;

   SF_FALSE : constant int := 0;
   SF_TRUE  : constant int := 1;

   -- /* Modes for opening files. */
   SFM_READ  : constant int := 16#10#;
   SFM_WRITE : constant int := 16#20#;
   SFM_RDWR  : constant int := 16#30#;

   -- Status codes
   SF_ERR_NO_ERROR             : constant int := 0;
   SF_ERR_UNRECOGNISED_FORMAT  : constant int := 1;
   SF_ERR_SYSTEM               : constant int := 2;
   SF_ERR_MALFORMED_FILE       : constant int := 3;
   SF_ERR_UNSUPPORTED_ENCODING : constant int := 4;

   NullFile : constant SNDFILE := SNDFILE (System.Null_Address);
   -------------------------------------------

   type SF_FORMAT_INFO is record
      format    : aliased int;  -- ../sndfile.h:373
      name      : chars_ptr;  -- ../sndfile.h:374
      extension : chars_ptr;  -- ../sndfile.h:375
   end record with
      Convention => C_Pass_By_Copy;  -- ../sndfile.h:376

   type SF_DITHER_INFO is record
      c_type : aliased int;  -- ../sndfile.h:394
      level  : aliased double;  -- ../sndfile.h:395
      name   : Interfaces.C.Strings.chars_ptr;  -- ../sndfile.h:396
   end record with
      Convention => C_Pass_By_Copy;  -- ../sndfile.h:397

      --  skipped anonymous struct anon_anon_11

   type SF_EMBED_FILE_INFO is record
      offset : aliased sf_count_t;  -- ../sndfile.h:404
      length : aliased sf_count_t;  -- ../sndfile.h:405
   end record with
      Convention => C_Pass_By_Copy;  -- ../sndfile.h:406

   function sf_open
     (path   : Interfaces.C.Strings.chars_ptr; mode : int;
      sfinfo : access SF_INFO)
      return SNDFILE  -- ../sndfile.h:562
   with
      Import        => True,
      Convention    => C,
      External_Name => "sf_open";
   function sf_open_fd
     (fd : int; mode : int; sfinfo : access SF_INFO; close_desc : int)
      return SNDFILE  -- ../sndfile.h:577
   with
      Import        => True,
      Convention    => C,
      External_Name => "sf_open_fd";

   function sf_close
     (the_sndfile : SNDFILE)
      return int  -- ../sndfile.h:727
   with
      Import        => True,
      Convention    => C,
      External_Name => "sf_close";

   function sf_seek
     (the_sndfile : SNDFILE; frames : sf_count_t; whence : int)
      return sf_count_t  -- ../sndfile.h:641
   with
      Import        => True,
      Convention    => C,
      External_Name => "sf_seek";

   function sf_error
     (the_sndfile : SNDFILE)
      return int  -- ../sndfile.h:586
   with
      Import        => True,
      Convention    => C,
      External_Name => "sf_error";

   function sf_strerror
     (the_sndfile : SNDFILE) return Interfaces.C.Strings
     .chars_ptr  -- ../sndfile.h:593
   with
      Import        => True,
      Convention    => C,
      External_Name => "sf_strerror";

   function sf_error_number
     (errnum : int) return Interfaces.C.Strings
     .chars_ptr  -- ../sndfile.h:601
   with
      Import        => True,
      Convention    => C,
      External_Name => "sf_error_number";

   function sf_read_float
     (the_sndfile : SNDFILE; ptr : Address; items : sf_count_t)
      return sf_count_t  -- ../sndfile.h:715
   with
      Import        => True,
      Convention    => C,
      External_Name => "sf_read_float";

   function sf_write_float
     (the_sndfile : SNDFILE; ptr : Address; items : sf_count_t)
      return sf_count_t  -- ../sndfile.h:716
   with
      Import        => True,
      Convention    => C,
      External_Name => "sf_write_float";

      -------------------------------------------------
   procedure Show (info : SF_INFO) is
   begin
      Put ("Frames : ");
      Put (info.frames);
      New_Line;
      Put ("Sample Rate : ");
      Put (info.samplerate);
      New_Line;
      Put ("Audio Length : ");
      Put (float (info.frames) / float (info.samplerate));
      Put (" seconds");
      New_Line;
      Put ("Channels : ");
      Put (info.channels);
      Put (" format : ");
      Put (info.format);
      Put (" sections : ");
      Put (info.sections);
      Put (" seekable : ");
      Put (info.seekable);
      New_Line;
   end Show;
   procedure ReportError (f : SNDFILE) is
   begin
      Put ("Error: ");
      Put (Value (sf_strerror (f)));
      New_Line;
   end ReportError;

   function Open (fn : string) return File_Type is
      use Interfaces.C.Strings;
      result : File_Type;
   begin
      result.file := sf_open (New_String (fn), SFM_READ, result.info'Access);
      if result.file = NullFile then
         ReportError (NullFile);
         raise Program_Error with "Open " & fn;
      end if;

      if Verbose then
         Put ("File ");
         Put (fn);
         Put (" opened");
         New_Line;
         Show (result.info);

      end if;

      return result;
   end Open;

   function Create (fn : string; info : SF_INFO) return File_Type is
      use Interfaces.C.Strings;
      result : File_Type;
   begin
      --if Verbose
      --then
      Put ("Creating ");
      Put (fn);
      Put (" with ");
      New_Line;
      Show (info);
      --end if ;

      result.info := info;
      result.file := sf_open (New_String (fn), SFM_WRITE, result.info'Access);
      if result.file = NullFile then
         ReportError (NullFile);
         raise Program_Error with "Create " & fn;
      end if;

      return result;
   end Create;

   function Info (f : File_Type) return SF_INFO is
      use System;
   begin
      if f.file = SNDFILE (System.Null_Address) then
         raise Program_Error with "Info of null file";
      end if;
      return f.info;
   end Info;
   BLOCKSIZE : constant integer := 1_024;
   function Read
     (f : File_Type; from : float; span : float) return AudioFragment_Type
   is
      result        : AudioFragment_Type;
      start_frame   : sf_count_t;
      need_frames   : sf_count_t;
      started_frame : sf_count_t;
      readframes    : sf_count_t;

      BLOCK : aliased Ada.Numerics.Real_Arrays.Real_Vector (1 .. BLOCKSIZE);
      BLOCKFRAMES : integer;
      CURFRAME    : integer;
   begin
      if f.info.seekable = 0 then
         raise Program_Error with "Read audio not seekable";
      end if;
      start_frame := sf_count_t (from * float (f.info.samplerate));
      if start_frame > f.info.frames then
         raise Program_Error with "Read startframe";
      end if;
      need_frames := 1 + sf_count_t (span * float (f.info.samplerate));
      if start_frame + need_frames > f.info.frames then
         raise Program_Error with "Read frames";
      end if;
      if Verbose then
         Put ("Reading ");
         Put (need_frames);
         Put (" frames from ");
         Put (start_frame);
         New_Line;
      end if;
      result.ch1 :=
        new Ada.Numerics.Real_Arrays.Real_Vector (1 .. integer (need_frames));
      if f.info.channels > 1 then
         result.ch2 :=
           new Ada.Numerics.Real_Arrays.Real_Vector
             (1 .. integer (need_frames));
      end if;

      started_frame := sf_seek (f.file, start_frame, 0);
      if started_frame < 0 then
         raise Program_Error with "Read seek error";
      end if;

      if f.info.channels > 1 then
         BLOCKFRAMES := BLOCKSIZE / 2;
      else
         BLOCKFRAMES := BLOCKSIZE;
      end if;
      CURFRAME := 1;
      while need_frames > 0 loop
         readframes :=
           sf_read_float
             (f.file, BLOCK (BLOCK'First)'Address, sf_count_t (BLOCKFRAMES));
         if readframes < 1 then
            exit;
         end if;
         if verbose
         then
            Put ("Read ");
            Put (readframes);
            Put (" frames. Current frame ");
            Put (CURFRAME);
            New_Line;
         end if;
         for frame in 1 .. readframes loop
            result.ch1 (CURFRAME) := BLOCK (integer (frame));
            if f.info.channels > 1 then
               result.ch2 (CURFRAME) := BLOCK (integer (frame) + 1);
            end if;
            CURFRAME    := CURFRAME + 1;
            need_frames := need_frames - 1;
            if need_frames < 1 then
               exit;
            end if;
         end loop;
      end loop;
      return result;
   end Read;

   procedure Write (f : File_Type; frag : AudioFragment_Type) is

      BLOCK : aliased Ada.Numerics.Real_Arrays.Real_Vector (1 .. BLOCKSIZE);
      BLOCKFRAMES : integer;

      WRITEFRAMES : integer := frag.ch1'Length;
      writecount  : sf_count_t;
   begin
      if f.file = NullFile then
         raise Program_Error with "Write null file";
      end if;
      Show (f.info);
      if f.info.channels > 1 then
         BLOCKFRAMES := BLOCKSIZE / 2;
      else
         BLOCKFRAMES := BLOCKSIZE;
      end if;

      for cf in 1 .. WRITEFRAMES loop
         BLOCK (1) := frag.ch1 (CF);
         if f.info.channels > 1 then
            BLOCK (2) := frag.ch2 (CF);
         end if;
         writecount := sf_write_float (f.file, BLOCK (1)'Address, 2);
         if writecount /= 2 then
            Put ("Wrote ");
            Put (writecount);
            Put (" frames");
            New_Line;
            ReportError (f.file);
         end if;
      end loop;

   end Write;

   procedure Close (f : in out File_Type) is
      status : int;
   begin
      status := sf_close (f.file);
      f.file := SNDFILE (System.Null_Address);
   end Close;

end sndfile;
