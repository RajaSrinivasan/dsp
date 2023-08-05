pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
with Interfaces.C.Strings;
limited with gsl_gsl_block_char_h;
limited with aarch64_linux_gnu_bits_types_FILE_h;

package gsl_gsl_vector_char_h is

   --  skipped anonymous struct anon_anon_20

   type gsl_vector_char is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_vector_char.h:44
      stride : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_vector_char.h:45
      data : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_vector_char.h:46
      block : access gsl_gsl_block_char_h.gsl_block_char;  -- /usr/include/gsl/gsl_vector_char.h:47
      owner : aliased int;  -- /usr/include/gsl/gsl_vector_char.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_char.h:50

   --  skipped anonymous struct anon_anon_21

   type u_gsl_vector_char_view is record
      vector : aliased gsl_vector_char;  -- /usr/include/gsl/gsl_vector_char.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_char.h:55

   subtype gsl_vector_char_view is u_gsl_vector_char_view;  -- /usr/include/gsl/gsl_vector_char.h:57

   --  skipped anonymous struct anon_anon_22

   type u_gsl_vector_char_const_view is record
      vector : aliased gsl_vector_char;  -- /usr/include/gsl/gsl_vector_char.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_char.h:62

   subtype gsl_vector_char_const_view is u_gsl_vector_char_const_view;  -- /usr/include/gsl/gsl_vector_char.h:64

   function gsl_vector_char_alloc (n : stddef_h.size_t) return access gsl_vector_char  -- /usr/include/gsl/gsl_vector_char.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_alloc";

   function gsl_vector_char_calloc (n : stddef_h.size_t) return access gsl_vector_char  -- /usr/include/gsl/gsl_vector_char.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_calloc";

   function gsl_vector_char_alloc_from_block
     (b : access gsl_gsl_block_char_h.gsl_block_char;
      offset : stddef_h.size_t;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return access gsl_vector_char  -- /usr/include/gsl/gsl_vector_char.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_alloc_from_block";

   function gsl_vector_char_alloc_from_vector
     (v : access gsl_vector_char;
      offset : stddef_h.size_t;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return access gsl_vector_char  -- /usr/include/gsl/gsl_vector_char.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_alloc_from_vector";

   procedure gsl_vector_char_free (v : access gsl_vector_char)  -- /usr/include/gsl/gsl_vector_char.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_free";

   function gsl_vector_char_view_array (v : Interfaces.C.Strings.chars_ptr; n : stddef_h.size_t) return u_gsl_vector_char_view  -- /usr/include/gsl/gsl_vector_char.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_view_array";

   function gsl_vector_char_view_array_with_stride
     (base : Interfaces.C.Strings.chars_ptr;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return u_gsl_vector_char_view  -- /usr/include/gsl/gsl_vector_char.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_view_array_with_stride";

   function gsl_vector_char_const_view_array (v : Interfaces.C.Strings.chars_ptr; n : stddef_h.size_t) return u_gsl_vector_char_const_view  -- /usr/include/gsl/gsl_vector_char.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_const_view_array";

   function gsl_vector_char_const_view_array_with_stride
     (base : Interfaces.C.Strings.chars_ptr;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return u_gsl_vector_char_const_view  -- /usr/include/gsl/gsl_vector_char.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_const_view_array_with_stride";

   function gsl_vector_char_subvector
     (v : access gsl_vector_char;
      i : stddef_h.size_t;
      n : stddef_h.size_t) return u_gsl_vector_char_view  -- /usr/include/gsl/gsl_vector_char.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_subvector";

   function gsl_vector_char_subvector_with_stride
     (v : access gsl_vector_char;
      i : stddef_h.size_t;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return u_gsl_vector_char_view  -- /usr/include/gsl/gsl_vector_char.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_subvector_with_stride";

   function gsl_vector_char_const_subvector
     (v : access constant gsl_vector_char;
      i : stddef_h.size_t;
      n : stddef_h.size_t) return u_gsl_vector_char_const_view  -- /usr/include/gsl/gsl_vector_char.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_const_subvector";

   function gsl_vector_char_const_subvector_with_stride
     (v : access constant gsl_vector_char;
      i : stddef_h.size_t;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return u_gsl_vector_char_const_view  -- /usr/include/gsl/gsl_vector_char.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_const_subvector_with_stride";

   procedure gsl_vector_char_set_zero (v : access gsl_vector_char)  -- /usr/include/gsl/gsl_vector_char.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_set_zero";

   procedure gsl_vector_char_set_all (v : access gsl_vector_char; x : char)  -- /usr/include/gsl/gsl_vector_char.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_set_all";

   function gsl_vector_char_set_basis (v : access gsl_vector_char; i : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_vector_char.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_set_basis";

   function gsl_vector_char_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; v : access gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_fread";

   function gsl_vector_char_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; v : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_fwrite";

   function gsl_vector_char_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; v : access gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_fscanf";

   function gsl_vector_char_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      v : access constant gsl_vector_char;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_vector_char.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_fprintf";

   function gsl_vector_char_memcpy (dest : access gsl_vector_char; src : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_memcpy";

   function gsl_vector_char_reverse (v : access gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_reverse";

   function gsl_vector_char_swap (v : access gsl_vector_char; w : access gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_swap";

   function gsl_vector_char_swap_elements
     (v : access gsl_vector_char;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_vector_char.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_swap_elements";

   function gsl_vector_char_max (v : access constant gsl_vector_char) return char  -- /usr/include/gsl/gsl_vector_char.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_max";

   function gsl_vector_char_min (v : access constant gsl_vector_char) return char  -- /usr/include/gsl/gsl_vector_char.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_min";

   procedure gsl_vector_char_minmax
     (v : access constant gsl_vector_char;
      min_out : Interfaces.C.Strings.chars_ptr;
      max_out : Interfaces.C.Strings.chars_ptr)  -- /usr/include/gsl/gsl_vector_char.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_minmax";

   function gsl_vector_char_max_index (v : access constant gsl_vector_char) return stddef_h.size_t  -- /usr/include/gsl/gsl_vector_char.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_max_index";

   function gsl_vector_char_min_index (v : access constant gsl_vector_char) return stddef_h.size_t  -- /usr/include/gsl/gsl_vector_char.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_min_index";

   procedure gsl_vector_char_minmax_index
     (v : access constant gsl_vector_char;
      imin : access stddef_h.size_t;
      imax : access stddef_h.size_t)  -- /usr/include/gsl/gsl_vector_char.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_minmax_index";

   function gsl_vector_char_add (a : access gsl_vector_char; b : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_add";

   function gsl_vector_char_sub (a : access gsl_vector_char; b : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_sub";

   function gsl_vector_char_mul (a : access gsl_vector_char; b : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_mul";

   function gsl_vector_char_div (a : access gsl_vector_char; b : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_div";

   function gsl_vector_char_scale (a : access gsl_vector_char; x : char) return int  -- /usr/include/gsl/gsl_vector_char.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_scale";

   function gsl_vector_char_add_constant (a : access gsl_vector_char; x : char) return int  -- /usr/include/gsl/gsl_vector_char.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_add_constant";

   function gsl_vector_char_axpby
     (alpha : char;
      x : access constant gsl_vector_char;
      beta : char;
      y : access gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_axpby";

   function gsl_vector_char_sum (a : access constant gsl_vector_char) return char  -- /usr/include/gsl/gsl_vector_char.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_sum";

   function gsl_vector_char_equal (u : access constant gsl_vector_char; v : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_equal";

   function gsl_vector_char_isnull (v : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_isnull";

   function gsl_vector_char_ispos (v : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_ispos";

   function gsl_vector_char_isneg (v : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_isneg";

   function gsl_vector_char_isnonneg (v : access constant gsl_vector_char) return int  -- /usr/include/gsl/gsl_vector_char.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_isnonneg";

   function gsl_vector_char_get (v : access constant gsl_vector_char; i : stddef_h.size_t) return char  -- /usr/include/gsl/gsl_vector_char.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_get";

   procedure gsl_vector_char_set
     (v : access gsl_vector_char;
      i : stddef_h.size_t;
      x : char)  -- /usr/include/gsl/gsl_vector_char.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_set";

   function gsl_vector_char_ptr (v : access gsl_vector_char; i : stddef_h.size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_vector_char.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_ptr";

   function gsl_vector_char_const_ptr (v : access constant gsl_vector_char; i : stddef_h.size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_vector_char.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_char_const_ptr";

end gsl_gsl_vector_char_h;
