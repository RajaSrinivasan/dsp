pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with aarch64_linux_gnu_bits_types_FILE_h;
with Interfaces.C.Strings;

package gsl_gsl_block_ulong_h is

   type gsl_block_ulong_struct is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_block_ulong.h:40
      data : access unsigned_long;  -- /usr/include/gsl/gsl_block_ulong.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_block_ulong.h:38

   subtype gsl_block_ulong is gsl_block_ulong_struct;  -- /usr/include/gsl/gsl_block_ulong.h:44

   function gsl_block_ulong_alloc (n : stddef_h.size_t) return access gsl_block_ulong  -- /usr/include/gsl/gsl_block_ulong.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ulong_alloc";

   function gsl_block_ulong_calloc (n : stddef_h.size_t) return access gsl_block_ulong  -- /usr/include/gsl/gsl_block_ulong.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ulong_calloc";

   procedure gsl_block_ulong_free (b : access gsl_block_ulong)  -- /usr/include/gsl/gsl_block_ulong.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ulong_free";

   function gsl_block_ulong_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access gsl_block_ulong) return int  -- /usr/include/gsl/gsl_block_ulong.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ulong_fread";

   function gsl_block_ulong_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access constant gsl_block_ulong) return int  -- /usr/include/gsl/gsl_block_ulong.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ulong_fwrite";

   function gsl_block_ulong_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access gsl_block_ulong) return int  -- /usr/include/gsl/gsl_block_ulong.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ulong_fscanf";

   function gsl_block_ulong_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access constant gsl_block_ulong;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_ulong.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ulong_fprintf";

   function gsl_block_ulong_raw_fread
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access unsigned_long;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_ulong.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ulong_raw_fread";

   function gsl_block_ulong_raw_fwrite
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access unsigned_long;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_ulong.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ulong_raw_fwrite";

   function gsl_block_ulong_raw_fscanf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access unsigned_long;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_ulong.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ulong_raw_fscanf";

   function gsl_block_ulong_raw_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access unsigned_long;
      n : stddef_h.size_t;
      stride : stddef_h.size_t;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_ulong.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ulong_raw_fprintf";

   function gsl_block_ulong_size (b : access constant gsl_block_ulong) return stddef_h.size_t  -- /usr/include/gsl/gsl_block_ulong.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ulong_size";

   function gsl_block_ulong_data (b : access constant gsl_block_ulong) return access unsigned_long  -- /usr/include/gsl/gsl_block_ulong.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ulong_data";

end gsl_gsl_block_ulong_h;
