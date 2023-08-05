pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
with Interfaces.C.Strings;
limited with aarch64_linux_gnu_bits_types_FILE_h;

package gsl_gsl_block_char_h is

   type gsl_block_char_struct is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_block_char.h:40
      data : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_block_char.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_block_char.h:38

   subtype gsl_block_char is gsl_block_char_struct;  -- /usr/include/gsl/gsl_block_char.h:44

   function gsl_block_char_alloc (n : stddef_h.size_t) return access gsl_block_char  -- /usr/include/gsl/gsl_block_char.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_char_alloc";

   function gsl_block_char_calloc (n : stddef_h.size_t) return access gsl_block_char  -- /usr/include/gsl/gsl_block_char.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_char_calloc";

   procedure gsl_block_char_free (b : access gsl_block_char)  -- /usr/include/gsl/gsl_block_char.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_char_free";

   function gsl_block_char_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access gsl_block_char) return int  -- /usr/include/gsl/gsl_block_char.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_char_fread";

   function gsl_block_char_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access constant gsl_block_char) return int  -- /usr/include/gsl/gsl_block_char.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_char_fwrite";

   function gsl_block_char_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; b : access gsl_block_char) return int  -- /usr/include/gsl/gsl_block_char.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_char_fscanf";

   function gsl_block_char_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : access constant gsl_block_char;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_char.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_char_fprintf";

   function gsl_block_char_raw_fread
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : Interfaces.C.Strings.chars_ptr;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_char.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_char_raw_fread";

   function gsl_block_char_raw_fwrite
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : Interfaces.C.Strings.chars_ptr;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_char.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_char_raw_fwrite";

   function gsl_block_char_raw_fscanf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : Interfaces.C.Strings.chars_ptr;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_block_char.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_char_raw_fscanf";

   function gsl_block_char_raw_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      b : Interfaces.C.Strings.chars_ptr;
      n : stddef_h.size_t;
      stride : stddef_h.size_t;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_block_char.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_char_raw_fprintf";

   function gsl_block_char_size (b : access constant gsl_block_char) return stddef_h.size_t  -- /usr/include/gsl/gsl_block_char.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_char_size";

   function gsl_block_char_data (b : access constant gsl_block_char) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_block_char.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_block_char_data";

end gsl_gsl_block_char_h;
