pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with aarch64_linux_gnu_bits_types_FILE_h;
with Interfaces.C.Strings;

package gsl_gsl_block_uint_h is

   type gsl_block_uint_struct is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_block_uint.h:40
      data : access unsigned;  -- /usr/include/gsl/gsl_block_uint.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_block_uint.h:38

   subtype gsl_block_uint is gsl_block_uint_struct;  -- /usr/include/gsl/gsl_block_uint.h:44

   function gsl_block_uint_alloc (n : stddef_h.size_t) return access gsl_block_uint  -- /usr/include/gsl/gsl_block_uint.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uint_alloc";

   function gsl_block_uint_calloc (n : stddef_h.size_t) return access gsl_block_uint  -- /usr/include/gsl/gsl_block_uint.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uint_calloc";

   procedure gsl_block_uint_free (b : access gsl_block_uint)  -- /usr/include/gsl/gsl_block_uint.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uint_free";

   function gsl_block_uint_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access gsl_block_uint) return int  -- /usr/include/gsl/gsl_block_uint.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uint_fread";

   function gsl_block_uint_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access constant gsl_block_uint) return int  -- /usr/include/gsl/gsl_block_uint.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uint_fwrite";

   function gsl_block_uint_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access gsl_block_uint) return int  -- /usr/include/gsl/gsl_block_uint.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uint_fscanf";

   function gsl_block_uint_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access constant gsl_block_uint;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_uint.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uint_fprintf";

   function gsl_block_uint_raw_fread
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access unsigned;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_uint.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uint_raw_fread";

   function gsl_block_uint_raw_fwrite
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access unsigned;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_uint.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uint_raw_fwrite";

   function gsl_block_uint_raw_fscanf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access unsigned;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_uint.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uint_raw_fscanf";

   function gsl_block_uint_raw_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access unsigned;
      n : stddef_h.size_t;
      stride : stddef_h.size_t;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_uint.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uint_raw_fprintf";

   function gsl_block_uint_size (b : access constant gsl_block_uint) return stddef_h.size_t  -- /usr/include/gsl/gsl_block_uint.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uint_size";

   function gsl_block_uint_data (b : access constant gsl_block_uint) return access unsigned  -- /usr/include/gsl/gsl_block_uint.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_uint_data";

end gsl_gsl_block_uint_h;
