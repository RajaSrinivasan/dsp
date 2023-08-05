pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with aarch64_linux_gnu_bits_types_FILE_h;
with Interfaces.C.Strings;

package gsl_gsl_block_ushort_h is

   type gsl_block_ushort_struct is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_block_ushort.h:40
      data : access unsigned_short;  -- /usr/include/gsl/gsl_block_ushort.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_block_ushort.h:38

   subtype gsl_block_ushort is gsl_block_ushort_struct;  -- /usr/include/gsl/gsl_block_ushort.h:44

   function gsl_block_ushort_alloc (n : stddef_h.size_t) return access gsl_block_ushort  -- /usr/include/gsl/gsl_block_ushort.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_alloc";

   function gsl_block_ushort_calloc (n : stddef_h.size_t) return access gsl_block_ushort  -- /usr/include/gsl/gsl_block_ushort.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_calloc";

   procedure gsl_block_ushort_free (b : access gsl_block_ushort)  -- /usr/include/gsl/gsl_block_ushort.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_free";

   function gsl_block_ushort_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access gsl_block_ushort) return int  -- /usr/include/gsl/gsl_block_ushort.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_fread";

   function gsl_block_ushort_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access constant gsl_block_ushort) return int  -- /usr/include/gsl/gsl_block_ushort.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_fwrite";

   function gsl_block_ushort_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access gsl_block_ushort) return int  -- /usr/include/gsl/gsl_block_ushort.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_fscanf";

   function gsl_block_ushort_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access constant gsl_block_ushort;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_ushort.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_fprintf";

   function gsl_block_ushort_raw_fread
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access unsigned_short;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_ushort.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_raw_fread";

   function gsl_block_ushort_raw_fwrite
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access unsigned_short;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_ushort.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_raw_fwrite";

   function gsl_block_ushort_raw_fscanf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access unsigned_short;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_ushort.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_raw_fscanf";

   function gsl_block_ushort_raw_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access unsigned_short;
      n : stddef_h.size_t;
      stride : stddef_h.size_t;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_ushort.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_raw_fprintf";

   function gsl_block_ushort_size (b : access constant gsl_block_ushort) return stddef_h.size_t  -- /usr/include/gsl/gsl_block_ushort.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_size";

   function gsl_block_ushort_data (b : access constant gsl_block_ushort) return access unsigned_short  -- /usr/include/gsl/gsl_block_ushort.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_ushort_data";

end gsl_gsl_block_ushort_h;
