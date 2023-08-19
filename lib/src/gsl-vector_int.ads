pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C_Streams;

with gsl.block_int;
with Interfaces.C.Strings;

package gsl.vector_int is
     package ICS renames Interfaces.C_Streams;

   --  skipped anonymous struct anon_anon_20

   type gsl_vector_int is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_vector_int.h:44
      stride : aliased size_t;  -- /usr/include/gsl/gsl_vector_int.h:45
      data : access int;  -- /usr/include/gsl/gsl_vector_int.h:46
      block : access gsl.block_int.gsl_block_int;  -- /usr/include/gsl/gsl_vector_int.h:47
      owner : aliased int;  -- /usr/include/gsl/gsl_vector_int.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_int.h:50

   --  skipped anonymous struct anon_anon_21

   type u_gsl_vector_int_view is record
      vector : aliased gsl_vector_int;  -- /usr/include/gsl/gsl_vector_int.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_int.h:55

   subtype gsl_vector_int_view is u_gsl_vector_int_view;  -- /usr/include/gsl/gsl_vector_int.h:57

   --  skipped anonymous struct anon_anon_22

   type u_gsl_vector_int_const_view is record
      vector : aliased gsl_vector_int;  -- /usr/include/gsl/gsl_vector_int.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_int.h:62

   subtype gsl_vector_int_const_view is u_gsl_vector_int_const_view;  -- /usr/include/gsl/gsl_vector_int.h:64

   function gsl_vector_int_alloc (n : size_t) return access gsl_vector_int  -- /usr/include/gsl/gsl_vector_int.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_alloc";

   function gsl_vector_int_calloc (n : size_t) return access gsl_vector_int  -- /usr/include/gsl/gsl_vector_int.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_calloc";

   function gsl_vector_int_alloc_from_block
     (b : access gsl.block_int.gsl_block_int;
      offset : size_t;
      n : size_t;
      stride : size_t) return access gsl_vector_int  -- /usr/include/gsl/gsl_vector_int.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_alloc_from_block";

   function gsl_vector_int_alloc_from_vector
     (v : access gsl_vector_int;
      offset : size_t;
      n : size_t;
      stride : size_t) return access gsl_vector_int  -- /usr/include/gsl/gsl_vector_int.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_alloc_from_vector";

   procedure gsl_vector_int_free (v : access gsl_vector_int)  -- /usr/include/gsl/gsl_vector_int.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_free";

   function gsl_vector_int_view_array (v : access int; n : size_t) return u_gsl_vector_int_view  -- /usr/include/gsl/gsl_vector_int.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_view_array";

   function gsl_vector_int_view_array_with_stride
     (base : access int;
      stride : size_t;
      n : size_t) return u_gsl_vector_int_view  -- /usr/include/gsl/gsl_vector_int.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_view_array_with_stride";

   function gsl_vector_int_const_view_array (v : access int; n : size_t) return u_gsl_vector_int_const_view  -- /usr/include/gsl/gsl_vector_int.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_const_view_array";

   function gsl_vector_int_const_view_array_with_stride
     (base : access int;
      stride : size_t;
      n : size_t) return u_gsl_vector_int_const_view  -- /usr/include/gsl/gsl_vector_int.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_const_view_array_with_stride";

   function gsl_vector_int_subvector
     (v : access gsl_vector_int;
      i : size_t;
      n : size_t) return u_gsl_vector_int_view  -- /usr/include/gsl/gsl_vector_int.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_subvector";

   function gsl_vector_int_subvector_with_stride
     (v : access gsl_vector_int;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_int_view  -- /usr/include/gsl/gsl_vector_int.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_subvector_with_stride";

   function gsl_vector_int_const_subvector
     (v : access constant gsl_vector_int;
      i : size_t;
      n : size_t) return u_gsl_vector_int_const_view  -- /usr/include/gsl/gsl_vector_int.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_const_subvector";

   function gsl_vector_int_const_subvector_with_stride
     (v : access constant gsl_vector_int;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_int_const_view  -- /usr/include/gsl/gsl_vector_int.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_const_subvector_with_stride";

   procedure gsl_vector_int_set_zero (v : access gsl_vector_int)  -- /usr/include/gsl/gsl_vector_int.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_set_zero";

   procedure gsl_vector_int_set_all (v : access gsl_vector_int; x : int)  -- /usr/include/gsl/gsl_vector_int.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_set_all";

   function gsl_vector_int_set_basis (v : access gsl_vector_int; i : size_t) return int  -- /usr/include/gsl/gsl_vector_int.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_set_basis";

   function gsl_vector_int_fread (stream : access ICS.FILEs; v : access gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_fread";

   function gsl_vector_int_fwrite (stream : access ICS.FILEs; v : access constant gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_fwrite";

   function gsl_vector_int_fscanf (stream : access ICS.FILEs; v : access gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_fscanf";

   function gsl_vector_int_fprintf
     (stream : access ICS.FILEs;
      v : access constant gsl_vector_int;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_vector_int.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_fprintf";

   function gsl_vector_int_memcpy (dest : access gsl_vector_int; src : access constant gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_memcpy";

   function gsl_vector_int_reverse (v : access gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_reverse";

   function gsl_vector_int_swap (v : access gsl_vector_int; w : access gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_swap";

   function gsl_vector_int_swap_elements
     (v : access gsl_vector_int;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_vector_int.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_swap_elements";

   function gsl_vector_int_max (v : access constant gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_max";

   function gsl_vector_int_min (v : access constant gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_min";

   procedure gsl_vector_int_minmax
     (v : access constant gsl_vector_int;
      min_out : access int;
      max_out : access int)  -- /usr/include/gsl/gsl_vector_int.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_minmax";

   function gsl_vector_int_max_index (v : access constant gsl_vector_int) return size_t  -- /usr/include/gsl/gsl_vector_int.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_max_index";

   function gsl_vector_int_min_index (v : access constant gsl_vector_int) return size_t  -- /usr/include/gsl/gsl_vector_int.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_min_index";

   procedure gsl_vector_int_minmax_index
     (v : access constant gsl_vector_int;
      imin : access size_t;
      imax : access size_t)  -- /usr/include/gsl/gsl_vector_int.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_minmax_index";

   function gsl_vector_int_add (a : access gsl_vector_int; b : access constant gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_add";

   function gsl_vector_int_sub (a : access gsl_vector_int; b : access constant gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_sub";

   function gsl_vector_int_mul (a : access gsl_vector_int; b : access constant gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_mul";

   function gsl_vector_int_div (a : access gsl_vector_int; b : access constant gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_div";

   function gsl_vector_int_scale (a : access gsl_vector_int; x : int) return int  -- /usr/include/gsl/gsl_vector_int.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_scale";

   function gsl_vector_int_add_constant (a : access gsl_vector_int; x : int) return int  -- /usr/include/gsl/gsl_vector_int.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_add_constant";

   function gsl_vector_int_axpby
     (alpha : int;
      x : access constant gsl_vector_int;
      beta : int;
      y : access gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_axpby";

   function gsl_vector_int_sum (a : access constant gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_sum";

   function gsl_vector_int_equal (u : access constant gsl_vector_int; v : access constant gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_equal";

   function gsl_vector_int_isnull (v : access constant gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_isnull";

   function gsl_vector_int_ispos (v : access constant gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_ispos";

   function gsl_vector_int_isneg (v : access constant gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_isneg";

   function gsl_vector_int_isnonneg (v : access constant gsl_vector_int) return int  -- /usr/include/gsl/gsl_vector_int.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_isnonneg";

   function gsl_vector_int_get (v : access constant gsl_vector_int; i : size_t) return int  -- /usr/include/gsl/gsl_vector_int.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_get";

   procedure gsl_vector_int_set
     (v : access gsl_vector_int;
      i : size_t;
      x : int)  -- /usr/include/gsl/gsl_vector_int.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_set";

   function gsl_vector_int_ptr (v : access gsl_vector_int; i : size_t) return access int  -- /usr/include/gsl/gsl_vector_int.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_ptr";

   function gsl_vector_int_const_ptr (v : access constant gsl_vector_int; i : size_t) return access int  -- /usr/include/gsl/gsl_vector_int.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_int_const_ptr";

end gsl.vector_int;
