pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with aarch64_linux_gnu_bits_types_FILE_h;
with Interfaces.C.Strings;

package gsl_gsl_block_float_h is

   type gsl_block_float_struct is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_block_float.h:40
      data : access float;  -- /usr/include/gsl/gsl_block_float.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_block_float.h:38

   subtype gsl_block_float is gsl_block_float_struct;  -- /usr/include/gsl/gsl_block_float.h:44

   function gsl_block_float_alloc (n : stddef_h.size_t) return access gsl_block_float  -- /usr/include/gsl/gsl_block_float.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_float_alloc";

   function gsl_block_float_calloc (n : stddef_h.size_t) return access gsl_block_float  -- /usr/include/gsl/gsl_block_float.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_float_calloc";

   procedure gsl_block_float_free (b : access gsl_block_float)  -- /usr/include/gsl/gsl_block_float.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_float_free";

   function gsl_block_float_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access gsl_block_float) return int  -- /usr/include/gsl/gsl_block_float.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_float_fread";

   function gsl_block_float_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access constant gsl_block_float) return int  -- /usr/include/gsl/gsl_block_float.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_float_fwrite";

   function gsl_block_float_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access gsl_block_float) return int  -- /usr/include/gsl/gsl_block_float.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_float_fscanf";

   function gsl_block_float_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access constant gsl_block_float;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_float.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_float_fprintf";

   function gsl_block_float_raw_fread
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access float;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_float.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_float_raw_fread";

   function gsl_block_float_raw_fwrite
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access float;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_float.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_float_raw_fwrite";

   function gsl_block_float_raw_fscanf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access float;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_float.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_float_raw_fscanf";

   function gsl_block_float_raw_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access float;
      n : stddef_h.size_t;
      stride : stddef_h.size_t;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_float.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_float_raw_fprintf";

   function gsl_block_float_size (b : access constant gsl_block_float) return stddef_h.size_t  -- /usr/include/gsl/gsl_block_float.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_float_size";

   function gsl_block_float_data (b : access constant gsl_block_float) return access float  -- /usr/include/gsl/gsl_block_float.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_float_data";

end gsl_gsl_block_float_h;
