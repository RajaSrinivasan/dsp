pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_vector_double_h;
with System;
with stddef_h;
limited with gsl_gsl_matrix_double_h;
with Interfaces.C.Strings;

package gsl_gsl_multiroots_h is

   --  arg-macro: function GSL_MULTIROOT_FN_EVAL (F, x, y)
   --    return *((F).f))(x,(F).params,(y);
   --  arg-macro: function GSL_MULTIROOT_FN_EVAL_F (F, x, y)
   --    return (*((F).f))(x,(F).params,(y));
   --  arg-macro: function GSL_MULTIROOT_FN_EVAL_DF (F, x, dy)
   --    return (*((F).df))(x,(F).params,(dy));
   --  arg-macro: function GSL_MULTIROOT_FN_EVAL_F_DF (F, x, y, dy)
   --    return (*((F).fdf))(x,(F).params,(y),(dy));
   type gsl_multiroot_function_struct is record
      f : access function
           (arg1 : access constant gsl_gsl_vector_double_h.gsl_vector;
            arg2 : System.Address;
            arg3 : access gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multiroots.h:45
      n : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multiroots.h:46
      params : System.Address;  -- /usr/include/gsl/gsl_multiroots.h:47
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multiroots.h:43

   subtype gsl_multiroot_function is gsl_multiroot_function_struct;  -- /usr/include/gsl/gsl_multiroots.h:50

   function gsl_multiroot_fdjacobian
     (F : access gsl_multiroot_function;
      x : access constant gsl_gsl_vector_double_h.gsl_vector;
      f : access constant gsl_gsl_vector_double_h.gsl_vector;
      epsrel : double;
      jacobian : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_multiroots.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdjacobian";

   --  skipped anonymous struct anon_anon_157

   type gsl_multiroot_fsolver_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multiroots.h:61
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multiroots.h:62
      alloc : access function (arg1 : System.Address; arg2 : stddef_h.size_t) return int;  -- /usr/include/gsl/gsl_multiroots.h:63
      set : access function
           (arg1 : System.Address;
            arg2 : access gsl_multiroot_function;
            arg3 : access gsl_gsl_vector_double_h.gsl_vector;
            arg4 : access gsl_gsl_vector_double_h.gsl_vector;
            arg5 : access gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multiroots.h:64
      iterate : access function
           (arg1 : System.Address;
            arg2 : access gsl_multiroot_function;
            arg3 : access gsl_gsl_vector_double_h.gsl_vector;
            arg4 : access gsl_gsl_vector_double_h.gsl_vector;
            arg5 : access gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multiroots.h:65
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_multiroots.h:66
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multiroots.h:68

   --  skipped anonymous struct anon_anon_158

   type gsl_multiroot_fsolver is record
      c_type : access constant gsl_multiroot_fsolver_type;  -- /usr/include/gsl/gsl_multiroots.h:72
      c_function : access gsl_multiroot_function;  -- /usr/include/gsl/gsl_multiroots.h:73
      x : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multiroots.h:74
      f : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multiroots.h:75
      dx : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multiroots.h:76
      state : System.Address;  -- /usr/include/gsl/gsl_multiroots.h:77
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multiroots.h:79

   function gsl_multiroot_fsolver_alloc (T : access constant gsl_multiroot_fsolver_type; n : stddef_h.size_t) return access gsl_multiroot_fsolver  -- /usr/include/gsl/gsl_multiroots.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_alloc";

   procedure gsl_multiroot_fsolver_free (s : access gsl_multiroot_fsolver)  -- /usr/include/gsl/gsl_multiroots.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_free";

   function gsl_multiroot_fsolver_set
     (s : access gsl_multiroot_fsolver;
      f : access gsl_multiroot_function;
      x : access constant gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multiroots.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_set";

   function gsl_multiroot_fsolver_iterate (s : access gsl_multiroot_fsolver) return int  -- /usr/include/gsl/gsl_multiroots.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_iterate";

   function gsl_multiroot_fsolver_name (s : access constant gsl_multiroot_fsolver) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_multiroots.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_name";

   function gsl_multiroot_fsolver_root (s : access constant gsl_multiroot_fsolver) return access gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multiroots.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_root";

   function gsl_multiroot_fsolver_dx (s : access constant gsl_multiroot_fsolver) return access gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multiroots.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_dx";

   function gsl_multiroot_fsolver_f (s : access constant gsl_multiroot_fsolver) return access gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multiroots.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_f";

   type gsl_multiroot_function_fdf_struct is record
      f : access function
           (arg1 : access constant gsl_gsl_vector_double_h.gsl_vector;
            arg2 : System.Address;
            arg3 : access gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multiroots.h:103
      df : access function
           (arg1 : access constant gsl_gsl_vector_double_h.gsl_vector;
            arg2 : System.Address;
            arg3 : access gsl_gsl_matrix_double_h.gsl_matrix) return int;  -- /usr/include/gsl/gsl_multiroots.h:104
      fdf : access function
           (arg1 : access constant gsl_gsl_vector_double_h.gsl_vector;
            arg2 : System.Address;
            arg3 : access gsl_gsl_vector_double_h.gsl_vector;
            arg4 : access gsl_gsl_matrix_double_h.gsl_matrix) return int;  -- /usr/include/gsl/gsl_multiroots.h:105
      n : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multiroots.h:106
      params : System.Address;  -- /usr/include/gsl/gsl_multiroots.h:107
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multiroots.h:101

   subtype gsl_multiroot_function_fdf is gsl_multiroot_function_fdf_struct;  -- /usr/include/gsl/gsl_multiroots.h:110

   --  skipped anonymous struct anon_anon_159

   type gsl_multiroot_fdfsolver_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multiroots.h:118
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multiroots.h:119
      alloc : access function (arg1 : System.Address; arg2 : stddef_h.size_t) return int;  -- /usr/include/gsl/gsl_multiroots.h:120
      set : access function
           (arg1 : System.Address;
            arg2 : access gsl_multiroot_function_fdf;
            arg3 : access gsl_gsl_vector_double_h.gsl_vector;
            arg4 : access gsl_gsl_vector_double_h.gsl_vector;
            arg5 : access gsl_gsl_matrix_double_h.gsl_matrix;
            arg6 : access gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multiroots.h:121
      iterate : access function
           (arg1 : System.Address;
            arg2 : access gsl_multiroot_function_fdf;
            arg3 : access gsl_gsl_vector_double_h.gsl_vector;
            arg4 : access gsl_gsl_vector_double_h.gsl_vector;
            arg5 : access gsl_gsl_matrix_double_h.gsl_matrix;
            arg6 : access gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multiroots.h:122
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_multiroots.h:123
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multiroots.h:125

   --  skipped anonymous struct anon_anon_160

   type gsl_multiroot_fdfsolver is record
      c_type : access constant gsl_multiroot_fdfsolver_type;  -- /usr/include/gsl/gsl_multiroots.h:129
      fdf : access gsl_multiroot_function_fdf;  -- /usr/include/gsl/gsl_multiroots.h:130
      x : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multiroots.h:131
      f : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multiroots.h:132
      J : access gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_multiroots.h:133
      dx : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multiroots.h:134
      state : System.Address;  -- /usr/include/gsl/gsl_multiroots.h:135
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multiroots.h:137

   function gsl_multiroot_fdfsolver_alloc (T : access constant gsl_multiroot_fdfsolver_type; n : stddef_h.size_t) return access gsl_multiroot_fdfsolver  -- /usr/include/gsl/gsl_multiroots.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_alloc";

   function gsl_multiroot_fdfsolver_set
     (s : access gsl_multiroot_fdfsolver;
      fdf : access gsl_multiroot_function_fdf;
      x : access constant gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multiroots.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_set";

   function gsl_multiroot_fdfsolver_iterate (s : access gsl_multiroot_fdfsolver) return int  -- /usr/include/gsl/gsl_multiroots.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_iterate";

   procedure gsl_multiroot_fdfsolver_free (s : access gsl_multiroot_fdfsolver)  -- /usr/include/gsl/gsl_multiroots.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_free";

   function gsl_multiroot_fdfsolver_name (s : access constant gsl_multiroot_fdfsolver) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_multiroots.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_name";

   function gsl_multiroot_fdfsolver_root (s : access constant gsl_multiroot_fdfsolver) return access gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multiroots.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_root";

   function gsl_multiroot_fdfsolver_dx (s : access constant gsl_multiroot_fdfsolver) return access gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multiroots.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_dx";

   function gsl_multiroot_fdfsolver_f (s : access constant gsl_multiroot_fdfsolver) return access gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multiroots.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_f";

   function gsl_multiroot_test_delta
     (dx : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access constant gsl_gsl_vector_double_h.gsl_vector;
      epsabs : double;
      epsrel : double) return int  -- /usr/include/gsl/gsl_multiroots.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_test_delta";

   function gsl_multiroot_test_residual (f : access constant gsl_gsl_vector_double_h.gsl_vector; epsabs : double) return int  -- /usr/include/gsl/gsl_multiroots.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_test_residual";

   gsl_multiroot_fsolver_dnewton : access constant gsl_multiroot_fsolver_type  -- /usr/include/gsl/gsl_multiroots.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_dnewton";

   gsl_multiroot_fsolver_broyden : access constant gsl_multiroot_fsolver_type  -- /usr/include/gsl/gsl_multiroots.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_broyden";

   gsl_multiroot_fsolver_hybrid : access constant gsl_multiroot_fsolver_type  -- /usr/include/gsl/gsl_multiroots.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_hybrid";

   gsl_multiroot_fsolver_hybrids : access constant gsl_multiroot_fsolver_type  -- /usr/include/gsl/gsl_multiroots.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fsolver_hybrids";

   gsl_multiroot_fdfsolver_newton : access constant gsl_multiroot_fdfsolver_type  -- /usr/include/gsl/gsl_multiroots.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_newton";

   gsl_multiroot_fdfsolver_gnewton : access constant gsl_multiroot_fdfsolver_type  -- /usr/include/gsl/gsl_multiroots.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_gnewton";

   gsl_multiroot_fdfsolver_hybridj : access constant gsl_multiroot_fdfsolver_type  -- /usr/include/gsl/gsl_multiroots.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_hybridj";

   gsl_multiroot_fdfsolver_hybridsj : access constant gsl_multiroot_fdfsolver_type  -- /usr/include/gsl/gsl_multiroots.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multiroot_fdfsolver_hybridsj";

end gsl_gsl_multiroots_h;
