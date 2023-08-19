pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C_Streams;
with Ada.Streams.Stream_IO.C_Streams;
with gsl.block_double ;

with Interfaces.C.Strings;

package gsl.vector_double is
     package ICS Renames Interfaces.C_Streams;

   --  skipped anonymous struct anon_anon_20

   type gsl_vector is record
      size : aliased size_t;  -- /usr/include/gsl/gsl_vector_double.h:44
      stride : aliased size_t;  -- /usr/include/gsl/gsl_vector_double.h:45
      data : access double;  -- /usr/include/gsl/gsl_vector_double.h:46
      block : access gsl.block_double.gsl_block;  -- /usr/include/gsl/gsl_vector_double.h:47
      owner : aliased int;  -- /usr/include/gsl/gsl_vector_double.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_double.h:50

   --  skipped anonymous struct anon_anon_21

   type u_gsl_vector_view is record
      vector : aliased gsl_vector;  -- /usr/include/gsl/gsl_vector_double.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_double.h:55

   subtype gsl_vector_view is u_gsl_vector_view;  -- /usr/include/gsl/gsl_vector_double.h:57

   --  skipped anonymous struct anon_anon_22

   type u_gsl_vector_const_view is record
      vector : aliased gsl_vector;  -- /usr/include/gsl/gsl_vector_double.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_vector_double.h:62

   subtype gsl_vector_const_view is u_gsl_vector_const_view;  -- /usr/include/gsl/gsl_vector_double.h:64

   function gsl_vector_alloc (n : size_t) return access gsl_vector  -- /usr/include/gsl/gsl_vector_double.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_alloc";

   function gsl_vector_calloc (n : size_t) return access gsl_vector  -- /usr/include/gsl/gsl_vector_double.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_calloc";

   function gsl_vector_alloc_from_block
     (b : access gsl.block_double.gsl_block;
      offset : size_t;
      n : size_t;
      stride : size_t) return access gsl_vector  -- /usr/include/gsl/gsl_vector_double.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_alloc_from_block";

   function gsl_vector_alloc_from_vector
     (v : access gsl_vector;
      offset : size_t;
      n : size_t;
      stride : size_t) return access gsl_vector  -- /usr/include/gsl/gsl_vector_double.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_alloc_from_vector";

   procedure gsl_vector_free (v : access gsl_vector)  -- /usr/include/gsl/gsl_vector_double.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_free";

   function gsl_vector_view_array (v : access double; n : size_t) return u_gsl_vector_view  -- /usr/include/gsl/gsl_vector_double.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_view_array";

   function gsl_vector_view_array_with_stride
     (base : access double;
      stride : size_t;
      n : size_t) return u_gsl_vector_view  -- /usr/include/gsl/gsl_vector_double.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_view_array_with_stride";

   function gsl_vector_const_view_array (v : access double; n : size_t) return u_gsl_vector_const_view  -- /usr/include/gsl/gsl_vector_double.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_const_view_array";

   function gsl_vector_const_view_array_with_stride
     (base : access double;
      stride : size_t;
      n : size_t) return u_gsl_vector_const_view  -- /usr/include/gsl/gsl_vector_double.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_const_view_array_with_stride";

   function gsl_vector_subvector
     (v : access gsl_vector;
      i : size_t;
      n : size_t) return u_gsl_vector_view  -- /usr/include/gsl/gsl_vector_double.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_subvector";

   function gsl_vector_subvector_with_stride
     (v : access gsl_vector;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_view  -- /usr/include/gsl/gsl_vector_double.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_subvector_with_stride";

   function gsl_vector_const_subvector
     (v : access constant gsl_vector;
      i : size_t;
      n : size_t) return u_gsl_vector_const_view  -- /usr/include/gsl/gsl_vector_double.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_const_subvector";

   function gsl_vector_const_subvector_with_stride
     (v : access constant gsl_vector;
      i : size_t;
      stride : size_t;
      n : size_t) return u_gsl_vector_const_view  -- /usr/include/gsl/gsl_vector_double.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_const_subvector_with_stride";

   procedure gsl_vector_set_zero (v : access gsl_vector)  -- /usr/include/gsl/gsl_vector_double.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_set_zero";

   procedure gsl_vector_set_all (v : access gsl_vector; x : double)  -- /usr/include/gsl/gsl_vector_double.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_set_all";

   function gsl_vector_set_basis (v : access gsl_vector; i : size_t) return int  -- /usr/include/gsl/gsl_vector_double.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_set_basis";

   function gsl_vector_fread (stream : access ICS.FILEs ; v : access gsl_vector) return int  -- /usr/include/gsl/gsl_vector_double.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_fread";

   function gsl_vector_fwrite (stream : access ICS.FILEs; v : access constant gsl_vector) return int  -- /usr/include/gsl/gsl_vector_double.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_fwrite";

   function gsl_vector_fscanf (stream : access ICS.FILEs; v : access gsl_vector) return int  -- /usr/include/gsl/gsl_vector_double.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_fscanf";

   function gsl_vector_fprintf
     (stream : access ICS.FILEs;
      v : access constant gsl_vector;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_vector_double.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_fprintf";

   function gsl_vector_memcpy (dest : access gsl_vector; src : access constant gsl_vector) return int  -- /usr/include/gsl/gsl_vector_double.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_memcpy";

   function gsl_vector_reverse (v : access gsl_vector) return int  -- /usr/include/gsl/gsl_vector_double.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_reverse";

   function gsl_vector_swap (v : access gsl_vector; w : access gsl_vector) return int  -- /usr/include/gsl/gsl_vector_double.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_swap";

   function gsl_vector_swap_elements
     (v : access gsl_vector;
      i : size_t;
      j : size_t) return int  -- /usr/include/gsl/gsl_vector_double.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_swap_elements";

   function gsl_vector_max (v : access constant gsl_vector) return double  -- /usr/include/gsl/gsl_vector_double.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_max";

   function gsl_vector_min (v : access constant gsl_vector) return double  -- /usr/include/gsl/gsl_vector_double.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_min";

   procedure gsl_vector_minmax
     (v : access constant gsl_vector;
      min_out : access double;
      max_out : access double)  -- /usr/include/gsl/gsl_vector_double.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_minmax";

   function gsl_vector_max_index (v : access constant gsl_vector) return size_t  -- /usr/include/gsl/gsl_vector_double.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_max_index";

   function gsl_vector_min_index (v : access constant gsl_vector) return size_t  -- /usr/include/gsl/gsl_vector_double.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_min_index";

   procedure gsl_vector_minmax_index
     (v : access constant gsl_vector;
      imin : access size_t;
      imax : access size_t)  -- /usr/include/gsl/gsl_vector_double.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_minmax_index";

   function gsl_vector_add (a : access gsl_vector; b : access constant gsl_vector) return int  -- /usr/include/gsl/gsl_vector_double.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_add";

   function gsl_vector_sub (a : access gsl_vector; b : access constant gsl_vector) return int  -- /usr/include/gsl/gsl_vector_double.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_sub";

   function gsl_vector_mul (a : access gsl_vector; b : access constant gsl_vector) return int  -- /usr/include/gsl/gsl_vector_double.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_mul";

   function gsl_vector_div (a : access gsl_vector; b : access constant gsl_vector) return int  -- /usr/include/gsl/gsl_vector_double.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_div";

   function gsl_vector_scale (a : access gsl_vector; x : double) return int  -- /usr/include/gsl/gsl_vector_double.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_scale";

   function gsl_vector_add_constant (a : access gsl_vector; x : double) return int  -- /usr/include/gsl/gsl_vector_double.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_add_constant";

   function gsl_vector_axpby
     (alpha : double;
      x : access constant gsl_vector;
      beta : double;
      y : access gsl_vector) return int  -- /usr/include/gsl/gsl_vector_double.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_axpby";

   function gsl_vector_sum (a : access constant gsl_vector) return double  -- /usr/include/gsl/gsl_vector_double.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_sum";

   function gsl_vector_equal (u : access constant gsl_vector; v : access constant gsl_vector) return int  -- /usr/include/gsl/gsl_vector_double.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_equal";

   function gsl_vector_isnull (v : access constant gsl_vector) return int  -- /usr/include/gsl/gsl_vector_double.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_isnull";

   function gsl_vector_ispos (v : access constant gsl_vector) return int  -- /usr/include/gsl/gsl_vector_double.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ispos";

   function gsl_vector_isneg (v : access constant gsl_vector) return int  -- /usr/include/gsl/gsl_vector_double.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_isneg";

   function gsl_vector_isnonneg (v : access constant gsl_vector) return int  -- /usr/include/gsl/gsl_vector_double.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_isnonneg";

   function gsl_vector_get (v : access constant gsl_vector; i : size_t) return double  -- /usr/include/gsl/gsl_vector_double.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_get";

   procedure gsl_vector_set
     (v : access gsl_vector;
      i : size_t;
      x : double)  -- /usr/include/gsl/gsl_vector_double.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_set";

   function gsl_vector_ptr (v : access gsl_vector; i : size_t) return access double  -- /usr/include/gsl/gsl_vector_double.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_ptr";

   function gsl_vector_const_ptr (v : access constant gsl_vector; i : size_t) return access double  -- /usr/include/gsl/gsl_vector_double.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_const_ptr";

end gsl.vector_double;
