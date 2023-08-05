pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with aarch64_linux_gnu_bits_types_FILE_h;
with Interfaces.C.Strings;

package gsl_gsl_block_short_h is

   type gsl_block_short_struct is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_block_short.h:40
      data : access short;  -- /usr/include/gsl/gsl_block_short.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_block_short.h:38

   subtype gsl_block_short is gsl_block_short_struct;  -- /usr/include/gsl/gsl_block_short.h:44

   function gsl_block_short_alloc (n : stddef_h.size_t) return access gsl_block_short  -- /usr/include/gsl/gsl_block_short.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_short_alloc";

   function gsl_block_short_calloc (n : stddef_h.size_t) return access gsl_block_short  -- /usr/include/gsl/gsl_block_short.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_short_calloc";

   procedure gsl_block_short_free (b : access gsl_block_short)  -- /usr/include/gsl/gsl_block_short.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_short_free";

   function gsl_block_short_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access gsl_block_short) return int  -- /usr/include/gsl/gsl_block_short.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_short_fread";

   function gsl_block_short_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access constant gsl_block_short) return int  -- /usr/include/gsl/gsl_block_short.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_short_fwrite";

   function gsl_block_short_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access gsl_block_short) return int  -- /usr/include/gsl/gsl_block_short.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_short_fscanf";

   function gsl_block_short_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access constant gsl_block_short;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_short.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_short_fprintf";

   function gsl_block_short_raw_fread
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access short;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_short.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_short_raw_fread";

   function gsl_block_short_raw_fwrite
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access short;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_short.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_short_raw_fwrite";

   function gsl_block_short_raw_fscanf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access short;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_short.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_short_raw_fscanf";

   function gsl_block_short_raw_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access short;
      n : stddef_h.size_t;
      stride : stddef_h.size_t;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_short.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_short_raw_fprintf";

   function gsl_block_short_size (b : access constant gsl_block_short) return stddef_h.size_t  -- /usr/include/gsl/gsl_block_short.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_short_size";

   function gsl_block_short_data (b : access constant gsl_block_short) return access short  -- /usr/include/gsl/gsl_block_short.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_short_data";

end gsl_gsl_block_short_h;
