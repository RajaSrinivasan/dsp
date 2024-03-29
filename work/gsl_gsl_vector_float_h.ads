pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with gsl_gsl_block_float_h;
limited with aarch64_linux_gnu_bits_types_FILE_h;
with Interfaces.C.Strings;

package gsl_gsl_vector_float_h is

   --  skipped anonymous struct anon_anon_20

   type gsl_vector_float is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_vector_float.h:44
      stride : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_vector_float.h:45
      data : access float;  -- /usr/include/gsl/gsl_vector_float.h:46
      block : access gsl_gsl_block_float_h.gsl_block_float;  -- /usr/include/gsl/gsl_vector_float.h:47
      owner : aliased int;  -- /usr/include/gsl/gsl_vector_float.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_float.h:50

   --  skipped anonymous struct anon_anon_21

   type u_gsl_vector_float_view is record
      vector : aliased gsl_vector_float;  -- /usr/include/gsl/gsl_vector_float.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_float.h:55

   subtype gsl_vector_float_view is u_gsl_vector_float_view;  -- /usr/include/gsl/gsl_vector_float.h:57

   --  skipped anonymous struct anon_anon_22

   type u_gsl_vector_float_const_view is record
      vector : aliased gsl_vector_float;  -- /usr/include/gsl/gsl_vector_float.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_float.h:62

   subtype gsl_vector_float_const_view is u_gsl_vector_float_const_view;  -- /usr/include/gsl/gsl_vector_float.h:64

   function gsl_vector_float_alloc (n : stddef_h.size_t) return access gsl_vector_float  -- /usr/include/gsl/gsl_vector_float.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_alloc";

   function gsl_vector_float_calloc (n : stddef_h.size_t) return access gsl_vector_float  -- /usr/include/gsl/gsl_vector_float.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_calloc";

   function gsl_vector_float_alloc_from_block
     (b : access gsl_gsl_block_float_h.gsl_block_float;
      offset : stddef_h.size_t;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return access gsl_vector_float  -- /usr/include/gsl/gsl_vector_float.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_alloc_from_block";

   function gsl_vector_float_alloc_from_vector
     (v : access gsl_vector_float;
      offset : stddef_h.size_t;
      n : stddef_h.size_t;
      stride : stddef_h.size_t) return access gsl_vector_float  -- /usr/include/gsl/gsl_vector_float.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_alloc_from_vector";

   procedure gsl_vector_float_free (v : access gsl_vector_float)  -- /usr/include/gsl/gsl_vector_float.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_free";

   function gsl_vector_float_view_array (v : access float; n : stddef_h.size_t) return u_gsl_vector_float_view  -- /usr/include/gsl/gsl_vector_float.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_view_array";

   function gsl_vector_float_view_array_with_stride
     (base : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return u_gsl_vector_float_view  -- /usr/include/gsl/gsl_vector_float.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_view_array_with_stride";

   function gsl_vector_float_const_view_array (v : access float; n : stddef_h.size_t) return u_gsl_vector_float_const_view  -- /usr/include/gsl/gsl_vector_float.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_const_view_array";

   function gsl_vector_float_const_view_array_with_stride
     (base : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return u_gsl_vector_float_const_view  -- /usr/include/gsl/gsl_vector_float.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_const_view_array_with_stride";

   function gsl_vector_float_subvector
     (v : access gsl_vector_float;
      i : stddef_h.size_t;
      n : stddef_h.size_t) return u_gsl_vector_float_view  -- /usr/include/gsl/gsl_vector_float.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_subvector";

   function gsl_vector_float_subvector_with_stride
     (v : access gsl_vector_float;
      i : stddef_h.size_t;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return u_gsl_vector_float_view  -- /usr/include/gsl/gsl_vector_float.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_subvector_with_stride";

   function gsl_vector_float_const_subvector
     (v : access constant gsl_vector_float;
      i : stddef_h.size_t;
      n : stddef_h.size_t) return u_gsl_vector_float_const_view  -- /usr/include/gsl/gsl_vector_float.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_const_subvector";

   function gsl_vector_float_const_subvector_with_stride
     (v : access constant gsl_vector_float;
      i : stddef_h.size_t;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return u_gsl_vector_float_const_view  -- /usr/include/gsl/gsl_vector_float.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_const_subvector_with_stride";

   procedure gsl_vector_float_set_zero (v : access gsl_vector_float)  -- /usr/include/gsl/gsl_vector_float.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_set_zero";

   procedure gsl_vector_float_set_all (v : access gsl_vector_float; x : float)  -- /usr/include/gsl/gsl_vector_float.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_set_all";

   function gsl_vector_float_set_basis (v : access gsl_vector_float; i : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_vector_float.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_set_basis";

   function gsl_vector_float_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; v : access gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_fread";

   function gsl_vector_float_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; v : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_fwrite";

   function gsl_vector_float_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; v : access gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_fscanf";

   function gsl_vector_float_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      v : access constant gsl_vector_float;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_vector_float.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_fprintf";

   function gsl_vector_float_memcpy (dest : access gsl_vector_float; src : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_memcpy";

   function gsl_vector_float_reverse (v : access gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_reverse";

   function gsl_vector_float_swap (v : access gsl_vector_float; w : access gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_swap";

   function gsl_vector_float_swap_elements
     (v : access gsl_vector_float;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_vector_float.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_swap_elements";

   function gsl_vector_float_max (v : access constant gsl_vector_float) return float  -- /usr/include/gsl/gsl_vector_float.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_max";

   function gsl_vector_float_min (v : access constant gsl_vector_float) return float  -- /usr/include/gsl/gsl_vector_float.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_min";

   procedure gsl_vector_float_minmax
     (v : access constant gsl_vector_float;
      min_out : access float;
      max_out : access float)  -- /usr/include/gsl/gsl_vector_float.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_minmax";

   function gsl_vector_float_max_index (v : access constant gsl_vector_float) return stddef_h.size_t  -- /usr/include/gsl/gsl_vector_float.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_max_index";

   function gsl_vector_float_min_index (v : access constant gsl_vector_float) return stddef_h.size_t  -- /usr/include/gsl/gsl_vector_float.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_min_index";

   procedure gsl_vector_float_minmax_index
     (v : access constant gsl_vector_float;
      imin : access stddef_h.size_t;
      imax : access stddef_h.size_t)  -- /usr/include/gsl/gsl_vector_float.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_minmax_index";

   function gsl_vector_float_add (a : access gsl_vector_float; b : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_add";

   function gsl_vector_float_sub (a : access gsl_vector_float; b : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_sub";

   function gsl_vector_float_mul (a : access gsl_vector_float; b : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_mul";

   function gsl_vector_float_div (a : access gsl_vector_float; b : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_div";

   function gsl_vector_float_scale (a : access gsl_vector_float; x : float) return int  -- /usr/include/gsl/gsl_vector_float.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_scale";

   function gsl_vector_float_add_constant (a : access gsl_vector_float; x : float) return int  -- /usr/include/gsl/gsl_vector_float.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_add_constant";

   function gsl_vector_float_axpby
     (alpha : float;
      x : access constant gsl_vector_float;
      beta : float;
      y : access gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_axpby";

   function gsl_vector_float_sum (a : access constant gsl_vector_float) return float  -- /usr/include/gsl/gsl_vector_float.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_sum";

   function gsl_vector_float_equal (u : access constant gsl_vector_float; v : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_equal";

   function gsl_vector_float_isnull (v : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_isnull";

   function gsl_vector_float_ispos (v : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_ispos";

   function gsl_vector_float_isneg (v : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_isneg";

   function gsl_vector_float_isnonneg (v : access constant gsl_vector_float) return int  -- /usr/include/gsl/gsl_vector_float.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_isnonneg";

   function gsl_vector_float_get (v : access constant gsl_vector_float; i : stddef_h.size_t) return float  -- /usr/include/gsl/gsl_vector_float.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_get";

   procedure gsl_vector_float_set
     (v : access gsl_vector_float;
      i : stddef_h.size_t;
      x : float)  -- /usr/include/gsl/gsl_vector_float.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_set";

   function gsl_vector_float_ptr (v : access gsl_vector_float; i : stddef_h.size_t) return access float  -- /usr/include/gsl/gsl_vector_float.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_ptr";

   function gsl_vector_float_const_ptr (v : access constant gsl_vector_float; i : stddef_h.size_t) return access float  -- /usr/include/gsl/gsl_vector_float.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_float_const_ptr";

end gsl_gsl_vector_float_h;
