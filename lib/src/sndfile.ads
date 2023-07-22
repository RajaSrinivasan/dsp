with System ; use System ;
with Interfaces.C; use Interfaces.C ;
with Interfaces.C.Strings ; use Interfaces.C.Strings ;
with Ada.Numerics.Real_Arrays ;
with wave ;

package sndfile is

   verbose : boolean := True ;
   
   function Version return Interfaces.C.Strings.chars_ptr  -- ../sndfile.h:659
   with Import => True, 
        Convention => C, 
     External_Name => "sf_version_string";

   subtype sf_count_t is Long_Long_Integer;  -- ../sndfile.h:340
   type SF_INFO is record
      frames : aliased sf_count_t := 0 ;  -- ../sndfile.h:351
      samplerate : aliased int := 0 ;  -- ../sndfile.h:352
      channels : aliased int := 0 ;  -- ../sndfile.h:353
      format : aliased int := 0;  -- ../sndfile.h:354
      sections : aliased int := 0;  -- ../sndfile.h:355
      seekable : aliased int := 0;  -- ../sndfile.h:356
   end record
     with Convention => C_Pass_By_Copy;  -- ../sndfile.h:350
   type SNDFILE is new System.Address ;
   type File_Type is private ;

   type AudioFragment_Type is
      record
         ch1 : access Ada.Numerics.Real_Arrays.Real_Vector ;
         ch2 :  access Ada.Numerics.Real_Arrays.Real_Vector ;
      end record ;
   
   function Open( fn : string ) return File_Type ;
   function Create( fn : string ; info : SF_INFO ) return File_Type ;
   function Info( f : file_Type ) return SF_INFO ;
   function Read( f : file_type ; from : float ; span : float ) return AudioFragment_Type ;
   procedure Write( f : File_Type ; frag : AudioFragment_Type );
   procedure Close( f : in out File_Type ) ;

private
   type File_Type is 
      record
         file : SNDFILE := SNDFILE(System.Null_Address) ;
         info : aliased SF_INFO ;
      end record ;
end sndfile;
