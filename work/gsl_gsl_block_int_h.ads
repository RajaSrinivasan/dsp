pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with aarch64_linux_gnu_bits_types_FILE_h;
with Interfaces.C.Strings;

package gsl_gsl_block_int_h is

   type gsl_block_int_struct is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_block_int.h:40
      data : access int;  -- /usr/include/gsl/gsl_block_int.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_block_int.h:38

   subtype gsl_block_int is gsl_block_int_struct;  -- /usr/include/gsl/gsl_block_int.h:44

   function gsl_block_int_alloc (n : stddef_h.size_t) return access gsl_block_int  -- /usr/include/gsl/gsl_block_int.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_int_alloc";

   function gsl_block_int_calloc (n : stddef_h.size_t) return access gsl_block_int  -- /usr/include/gsl/gsl_block_int.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_int_calloc";

   procedure gsl_block_int_free (b : access gsl_block_int)  -- /usr/include/gsl/gsl_block_int.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_int_free";

   function gsl_block_int_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access gsl_block_int) return int  -- /usr/include/gsl/gsl_block_int.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_int_fread";

   function gsl_block_int_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access constant gsl_block_int) return int  -- /usr/include/gsl/gsl_block_int.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_int_fwrite";

   function gsl_block_int_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access gsl_block_int) return int  -- /usr/include/gsl/gsl_block_int.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_int_fscanf";

   function gsl_block_int_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access constant gsl_block_int;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_int.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_int_fprintf";

   function gsl_block_int_raw_fread
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access int;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_int.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_int_raw_fread";

   function gsl_block_int_raw_fwrite
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access int;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_int.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_int_raw_fwrite";

   function gsl_block_int_raw_fscanf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access int;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_int.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_int_raw_fscanf";

   function gsl_block_int_raw_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access int;
      n : stddef_h.size_t;
      stride : stddef_h.size_t;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_int.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_int_raw_fprintf";

   function gsl_block_int_size (b : access constant gsl_block_int) return stddef_h.size_t  -- /usr/include/gsl/gsl_block_int.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_int_size";

   function gsl_block_int_data (b : access constant gsl_block_int) return access int  -- /usr/include/gsl/gsl_block_int.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_int_data";

end gsl_gsl_block_int_h;
