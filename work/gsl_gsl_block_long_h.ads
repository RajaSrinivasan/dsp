pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with aarch64_linux_gnu_bits_types_FILE_h;
with Interfaces.C.Strings;

package gsl_gsl_block_long_h is

   type gsl_block_long_struct is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_block_long.h:40
      data : access long;  -- /usr/include/gsl/gsl_block_long.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_block_long.h:38

   subtype gsl_block_long is gsl_block_long_struct;  -- /usr/include/gsl/gsl_block_long.h:44

   function gsl_block_long_alloc (n : stddef_h.size_t) return access gsl_block_long  -- /usr/include/gsl/gsl_block_long.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_long_alloc";

   function gsl_block_long_calloc (n : stddef_h.size_t) return access gsl_block_long  -- /usr/include/gsl/gsl_block_long.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_long_calloc";

   procedure gsl_block_long_free (b : access gsl_block_long)  -- /usr/include/gsl/gsl_block_long.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_long_free";

   function gsl_block_long_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access gsl_block_long) return int  -- /usr/include/gsl/gsl_block_long.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_long_fread";

   function gsl_block_long_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access constant gsl_block_long) return int  -- /usr/include/gsl/gsl_block_long.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_long_fwrite";

   function gsl_block_long_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access gsl_block_long) return int  -- /usr/include/gsl/gsl_block_long.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_long_fscanf";

   function gsl_block_long_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access constant gsl_block_long;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_long.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_long_fprintf";

   function gsl_block_long_raw_fread
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access long;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_long.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_long_raw_fread";

   function gsl_block_long_raw_fwrite
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access long;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_long.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_long_raw_fwrite";

   function gsl_block_long_raw_fscanf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access long;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_long.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_long_raw_fscanf";

   function gsl_block_long_raw_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access long;
      n : stddef_h.size_t;
      stride : stddef_h.size_t;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_long.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_long_raw_fprintf";

   function gsl_block_long_size (b : access constant gsl_block_long) return stddef_h.size_t  -- /usr/include/gsl/gsl_block_long.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_long_size";

   function gsl_block_long_data (b : access constant gsl_block_long) return access long  -- /usr/include/gsl/gsl_block_long.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_long_data";

end gsl_gsl_block_long_h;
