pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with gsl_gsl_block_complex_long_double_h;
with gsl_gsl_vector_long_double_h;
with gsl_gsl_complex_h;
limited with aarch64_linux_gnu_bits_types_FILE_h;
with Interfaces.C.Strings;

package gsl_gsl_vector_complex_long_double_h is

   --  skipped anonymous struct anon_anon_26

   type gsl_vector_complex_long_double is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_vector_complex_long_double.h:46
      stride : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_vector_complex_long_double.h:47
      data : access long_double;  -- /usr/include/gsl/gsl_vector_complex_long_double.h:48
      block : access gsl_gsl_block_complex_long_double_h.gsl_block_complex_long_double;  -- /usr/include/gsl/gsl_vector_complex_long_double.h:49
      owner : aliased int;  -- /usr/include/gsl/gsl_vector_complex_long_double.h:50
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_complex_long_double.h:51

   --  skipped anonymous struct anon_anon_27

   type u_gsl_vector_complex_long_double_view is record
      vector : aliased gsl_vector_complex_long_double;  -- /usr/include/gsl/gsl_vector_complex_long_double.h:55
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_complex_long_double.h:56

   subtype gsl_vector_complex_long_double_view is u_gsl_vector_complex_long_double_view;  -- /usr/include/gsl/gsl_vector_complex_long_double.h:58

   --  skipped anonymous struct anon_anon_28

   type u_gsl_vector_complex_long_double_const_view is record
      vector : aliased gsl_vector_complex_long_double;  -- /usr/include/gsl/gsl_vector_complex_long_double.h:62
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_complex_long_double.h:63

   subtype gsl_vector_complex_long_double_const_view is u_gsl_vector_complex_long_double_const_view;  -- /usr/include/gsl/gsl_vector_complex_long_double.h:65

   function gsl_vector_complex_long_double_alloc (n : stddef_h.size_t) return access gsl_vector_complex_long_double  -- /usr/include/gsl/gsl_vector_complex_long_double.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_alloc";

   function gsl_vector_complex_long_double_calloc (n : stddef_h.size_t) return access gsl_vector_complex_long_double  -- /usr/include/gsl/gsl_vector_complex_long_double.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_calloc";

   function gsl_vector_complex_long_double_alloc_from_block
     (b : access gsl_gsl_block_complex_long_double_h.gsl_block_complex_long_double;
      offset : stddef_h.size_t;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return access gsl_vector_complex_long_double  -- /usr/include/gsl/gsl_vector_complex_long_double.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_alloc_from_block";

   function gsl_vector_complex_long_double_alloc_from_vector
     (v : access gsl_vector_complex_long_double;
      offset : stddef_h.size_t;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return access gsl_vector_complex_long_double  -- /usr/include/gsl/gsl_vector_complex_long_double.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_alloc_from_vector";

   procedure gsl_vector_complex_long_double_free (v : access gsl_vector_complex_long_double)  -- /usr/include/gsl/gsl_vector_complex_long_double.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_free";

   function gsl_vector_complex_long_double_view_array (base : access long_double; n : stddef_h.size_t) return u_gsl_vector_complex_long_double_view  -- /usr/include/gsl/gsl_vector_complex_long_double.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_view_array";

   function gsl_vector_complex_long_double_view_array_with_stride
     (base : access long_double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return u_gsl_vector_complex_long_double_view  -- /usr/include/gsl/gsl_vector_complex_long_double.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_view_array_with_stride";

   function gsl_vector_complex_long_double_const_view_array (base : access long_double; n : stddef_h.size_t) return u_gsl_vector_complex_long_double_const_view  -- /usr/include/gsl/gsl_vector_complex_long_double.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_const_view_array";

   function gsl_vector_complex_long_double_const_view_array_with_stride
     (base : access long_double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return u_gsl_vector_complex_long_double_const_view  -- /usr/include/gsl/gsl_vector_complex_long_double.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_const_view_array_with_stride";

   function gsl_vector_complex_long_double_subvector
     (base : access gsl_vector_complex_long_double;
      i : stddef_h.size_t;
      n : stddef_h.size_t) return u_gsl_vector_complex_long_double_view  -- /usr/include/gsl/gsl_vector_complex_long_double.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_subvector";

   function gsl_vector_complex_long_double_subvector_with_stride
     (v : access gsl_vector_complex_long_double;
      i : stddef_h.size_t;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return u_gsl_vector_complex_long_double_view  -- /usr/include/gsl/gsl_vector_complex_long_double.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_subvector_with_stride";

   function gsl_vector_complex_long_double_const_subvector
     (base : access constant gsl_vector_complex_long_double;
      i : stddef_h.size_t;
      n : stddef_h.size_t) return u_gsl_vector_complex_long_double_const_view  -- /usr/include/gsl/gsl_vector_complex_long_double.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_const_subvector";

   function gsl_vector_complex_long_double_const_subvector_with_stride
     (v : access constant gsl_vector_complex_long_double;
      i : stddef_h.size_t;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return u_gsl_vector_complex_long_double_const_view  -- /usr/include/gsl/gsl_vector_complex_long_double.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_const_subvector_with_stride";

   function gsl_vector_complex_long_double_real (v : access gsl_vector_complex_long_double) return gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_view  -- /usr/include/gsl/gsl_vector_complex_long_double.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_real";

   function gsl_vector_complex_long_double_imag (v : access gsl_vector_complex_long_double) return gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_view  -- /usr/include/gsl/gsl_vector_complex_long_double.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_imag";

   function gsl_vector_complex_long_double_const_real (v : access constant gsl_vector_complex_long_double) return gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_const_view  -- /usr/include/gsl/gsl_vector_complex_long_double.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_const_real";

   function gsl_vector_complex_long_double_const_imag (v : access constant gsl_vector_complex_long_double) return gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_const_view  -- /usr/include/gsl/gsl_vector_complex_long_double.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_const_imag";

   procedure gsl_vector_complex_long_double_set_zero (v : access gsl_vector_complex_long_double)  -- /usr/include/gsl/gsl_vector_complex_long_double.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_set_zero";

   procedure gsl_vector_complex_long_double_set_all (v : access gsl_vector_complex_long_double; z : gsl_gsl_complex_h.gsl_complex_long_double)  -- /usr/include/gsl/gsl_vector_complex_long_double.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_set_all";

   function gsl_vector_complex_long_double_set_basis (v : access gsl_vector_complex_long_double; i : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_set_basis";

   function gsl_vector_complex_long_double_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; v : access gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_fread";

   function gsl_vector_complex_long_double_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; v : access constant gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_fwrite";

   function gsl_vector_complex_long_double_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; v : access gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_fscanf";

   function gsl_vector_complex_long_double_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      v : access constant gsl_vector_complex_long_double;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_fprintf";

   function gsl_vector_complex_long_double_memcpy (dest : access gsl_vector_complex_long_double; src : access constant gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_memcpy";

   function gsl_vector_complex_long_double_reverse (v : access gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_reverse";

   function gsl_vector_complex_long_double_swap (v : access gsl_vector_complex_long_double; w : access gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_swap";

   function gsl_vector_complex_long_double_swap_elements
     (v : access gsl_vector_complex_long_double;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_swap_elements";

   function gsl_vector_complex_long_double_equal (u : access constant gsl_vector_complex_long_double; v : access constant gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_equal";

   function gsl_vector_complex_long_double_isnull (v : access constant gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_isnull";

   function gsl_vector_complex_long_double_ispos (v : access constant gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_ispos";

   function gsl_vector_complex_long_double_isneg (v : access constant gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_isneg";

   function gsl_vector_complex_long_double_isnonneg (v : access constant gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_isnonneg";

   function gsl_vector_complex_long_double_add (a : access gsl_vector_complex_long_double; b : access constant gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_add";

   function gsl_vector_complex_long_double_sub (a : access gsl_vector_complex_long_double; b : access constant gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_sub";

   function gsl_vector_complex_long_double_mul (a : access gsl_vector_complex_long_double; b : access constant gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_mul";

   function gsl_vector_complex_long_double_div (a : access gsl_vector_complex_long_double; b : access constant gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_div";

   function gsl_vector_complex_long_double_scale (a : access gsl_vector_complex_long_double; x : gsl_gsl_complex_h.gsl_complex_long_double) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_scale";

   function gsl_vector_complex_long_double_add_constant (a : access gsl_vector_complex_long_double; x : gsl_gsl_complex_h.gsl_complex_long_double) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_add_constant";

   function gsl_vector_complex_long_double_axpby
     (alpha : gsl_gsl_complex_h.gsl_complex_long_double;
      x : access constant gsl_vector_complex_long_double;
      beta : gsl_gsl_complex_h.gsl_complex_long_double;
      y : access gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_vector_complex_long_double.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_axpby";

   function gsl_vector_complex_long_double_get (v : access constant gsl_vector_complex_long_double; i : stddef_h.size_t) return gsl_gsl_complex_h.gsl_complex_long_double  -- /usr/include/gsl/gsl_vector_complex_long_double.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_get";

   procedure gsl_vector_complex_long_double_set
     (v : access gsl_vector_complex_long_double;
      i : stddef_h.size_t;
      z : gsl_gsl_complex_h.gsl_complex_long_double)  -- /usr/include/gsl/gsl_vector_complex_long_double.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_set";

   function gsl_vector_complex_long_double_ptr (v : access gsl_vector_complex_long_double; i : stddef_h.size_t) return access gsl_gsl_complex_h.gsl_complex_long_double  -- /usr/include/gsl/gsl_vector_complex_long_double.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_ptr";

   function gsl_vector_complex_long_double_const_ptr (v : access constant gsl_vector_complex_long_double; i : stddef_h.size_t) return access constant gsl_gsl_complex_h.gsl_complex_long_double  -- /usr/include/gsl/gsl_vector_complex_long_double.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_complex_long_double_const_ptr";

end gsl_gsl_vector_complex_long_double_h;
