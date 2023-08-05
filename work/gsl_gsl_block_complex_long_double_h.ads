pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with aarch64_linux_gnu_bits_types_FILE_h;
with Interfaces.C.Strings;

package gsl_gsl_block_complex_long_double_h is

   type gsl_block_complex_long_double_struct is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_block_complex_long_double.h:40
      data : access long_double;  -- /usr/include/gsl/gsl_block_complex_long_double.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_block_complex_long_double.h:38

   subtype gsl_block_complex_long_double is gsl_block_complex_long_double_struct;  -- /usr/include/gsl/gsl_block_complex_long_double.h:44

   function gsl_block_complex_long_double_alloc (n : stddef_h.size_t) return access gsl_block_complex_long_double  -- /usr/include/gsl/gsl_block_complex_long_double.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_long_double_alloc";

   function gsl_block_complex_long_double_calloc (n : stddef_h.size_t) return access gsl_block_complex_long_double  -- /usr/include/gsl/gsl_block_complex_long_double.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_long_double_calloc";

   procedure gsl_block_complex_long_double_free (b : access gsl_block_complex_long_double)  -- /usr/include/gsl/gsl_block_complex_long_double.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_long_double_free";

   function gsl_block_complex_long_double_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access gsl_block_complex_long_double) return int  -- /usr/include/gsl/gsl_block_complex_long_double.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_long_double_fread";

   function gsl_block_complex_long_double_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access constant gsl_block_complex_long_double) return int  -- /usr/include/gsl/gsl_block_complex_long_double.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_long_double_fwrite";

   function gsl_block_complex_long_double_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access gsl_block_complex_long_double) return int  -- /usr/include/gsl/gsl_block_complex_long_double.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_long_double_fscanf";

   function gsl_block_complex_long_double_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access constant gsl_block_complex_long_double;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_complex_long_double.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_long_double_fprintf";

   function gsl_block_complex_long_double_raw_fread
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access long_double;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_complex_long_double.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_long_double_raw_fread";

   function gsl_block_complex_long_double_raw_fwrite
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access long_double;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_complex_long_double.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_long_double_raw_fwrite";

   function gsl_block_complex_long_double_raw_fscanf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access long_double;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_complex_long_double.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_long_double_raw_fscanf";

   function gsl_block_complex_long_double_raw_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access long_double;
      n : stddef_h.size_t;
      stride : stddef_h.size_t;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_complex_long_double.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_long_double_raw_fprintf";

   function gsl_block_complex_long_double_size (b : access constant gsl_block_complex_long_double) return stddef_h.size_t  -- /usr/include/gsl/gsl_block_complex_long_double.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_long_double_size";

   function gsl_block_complex_long_double_data (b : access constant gsl_block_complex_long_double) return access long_double  -- /usr/include/gsl/gsl_block_complex_long_double.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_complex_long_double_data";

end gsl_gsl_block_complex_long_double_h;
