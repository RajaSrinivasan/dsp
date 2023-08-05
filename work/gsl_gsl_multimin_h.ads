pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_vector_double_h;
with System;
with stddef_h;
with Interfaces.C.Strings;

package gsl_gsl_multimin_h is

   --  arg-macro: function GSL_MULTIMIN_FN_EVAL (F, x)
   --    return *((F).f))(x,(F).params;
   --  arg-macro: function GSL_MULTIMIN_FN_EVAL_F (F, x)
   --    return *((F).f))(x,(F).params;
   --  arg-macro: function GSL_MULTIMIN_FN_EVAL_DF (F, x, g)
   --    return *((F).df))(x,(F).params,(g);
   --  arg-macro: function GSL_MULTIMIN_FN_EVAL_F_DF (F, x, y, g)
   --    return *((F).fdf))(x,(F).params,(y),(g);
   type gsl_multimin_function_struct is record
      f : access function (arg1 : access constant gsl_gsl_vector_double_h.gsl_vector; arg2 : System.Address) return double;  -- /usr/include/gsl/gsl_multimin.h:49
      n : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multimin.h:50
      params : System.Address;  -- /usr/include/gsl/gsl_multimin.h:51
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multimin.h:47

   subtype gsl_multimin_function is gsl_multimin_function_struct;  -- /usr/include/gsl/gsl_multimin.h:54

   type gsl_multimin_function_fdf_struct is record
      f : access function (arg1 : access constant gsl_gsl_vector_double_h.gsl_vector; arg2 : System.Address) return double;  -- /usr/include/gsl/gsl_multimin.h:62
      df : access procedure
           (arg1 : access constant gsl_gsl_vector_double_h.gsl_vector;
            arg2 : System.Address;
            arg3 : access gsl_gsl_vector_double_h.gsl_vector);  -- /usr/include/gsl/gsl_multimin.h:63
      fdf : access procedure
           (arg1 : access constant gsl_gsl_vector_double_h.gsl_vector;
            arg2 : System.Address;
            arg3 : access double;
            arg4 : access gsl_gsl_vector_double_h.gsl_vector);  -- /usr/include/gsl/gsl_multimin.h:64
      n : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multimin.h:65
      params : System.Address;  -- /usr/include/gsl/gsl_multimin.h:66
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multimin.h:60

   subtype gsl_multimin_function_fdf is gsl_multimin_function_fdf_struct;  -- /usr/include/gsl/gsl_multimin.h:69

   function gsl_multimin_diff
     (f : access constant gsl_multimin_function;
      x : access constant gsl_gsl_vector_double_h.gsl_vector;
      g : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multimin.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_diff";

   --  skipped anonymous struct anon_anon_159

   type gsl_multimin_fminimizer_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multimin.h:82
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multimin.h:83
      alloc : access function (arg1 : System.Address; arg2 : stddef_h.size_t) return int;  -- /usr/include/gsl/gsl_multimin.h:84
      set : access function
           (arg1 : System.Address;
            arg2 : access gsl_multimin_function;
            arg3 : access constant gsl_gsl_vector_double_h.gsl_vector;
            arg4 : access double;
            arg5 : access constant gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multimin.h:85
      iterate : access function
           (arg1 : System.Address;
            arg2 : access gsl_multimin_function;
            arg3 : access gsl_gsl_vector_double_h.gsl_vector;
            arg4 : access double;
            arg5 : access double) return int;  -- /usr/include/gsl/gsl_multimin.h:89
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_multimin.h:93
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multimin.h:95

   --  skipped anonymous struct anon_anon_160

   type gsl_multimin_fminimizer is record
      c_type : access constant gsl_multimin_fminimizer_type;  -- /usr/include/gsl/gsl_multimin.h:100
      f : access gsl_multimin_function;  -- /usr/include/gsl/gsl_multimin.h:101
      fval : aliased double;  -- /usr/include/gsl/gsl_multimin.h:103
      x : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multimin.h:104
      size : aliased double;  -- /usr/include/gsl/gsl_multimin.h:106
      state : System.Address;  -- /usr/include/gsl/gsl_multimin.h:108
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multimin.h:110

   function gsl_multimin_fminimizer_alloc (T : access constant gsl_multimin_fminimizer_type; n : stddef_h.size_t) return access gsl_multimin_fminimizer  -- /usr/include/gsl/gsl_multimin.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fminimizer_alloc";

   function gsl_multimin_fminimizer_set
     (s : access gsl_multimin_fminimizer;
      f : access gsl_multimin_function;
      x : access constant gsl_gsl_vector_double_h.gsl_vector;
      step_size : access constant gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multimin.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fminimizer_set";

   procedure gsl_multimin_fminimizer_free (s : access gsl_multimin_fminimizer)  -- /usr/include/gsl/gsl_multimin.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fminimizer_free";

   function gsl_multimin_fminimizer_name (s : access constant gsl_multimin_fminimizer) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_multimin.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fminimizer_name";

   function gsl_multimin_fminimizer_iterate (s : access gsl_multimin_fminimizer) return int  -- /usr/include/gsl/gsl_multimin.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fminimizer_iterate";

   function gsl_multimin_fminimizer_x (s : access constant gsl_multimin_fminimizer) return access gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multimin.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fminimizer_x";

   function gsl_multimin_fminimizer_minimum (s : access constant gsl_multimin_fminimizer) return double  -- /usr/include/gsl/gsl_multimin.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fminimizer_minimum";

   function gsl_multimin_fminimizer_size (s : access constant gsl_multimin_fminimizer) return double  -- /usr/include/gsl/gsl_multimin.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fminimizer_size";

   function gsl_multimin_test_gradient (g : access constant gsl_gsl_vector_double_h.gsl_vector; epsabs : double) return int  -- /usr/include/gsl/gsl_multimin.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_test_gradient";

   function gsl_multimin_test_size (size : double; epsabs : double) return int  -- /usr/include/gsl/gsl_multimin.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_test_size";

   --  skipped anonymous struct anon_anon_161

   type gsl_multimin_fdfminimizer_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multimin.h:152
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multimin.h:153
      alloc : access function (arg1 : System.Address; arg2 : stddef_h.size_t) return int;  -- /usr/include/gsl/gsl_multimin.h:154
      set : access function
           (arg1 : System.Address;
            arg2 : access gsl_multimin_function_fdf;
            arg3 : access constant gsl_gsl_vector_double_h.gsl_vector;
            arg4 : access double;
            arg5 : access gsl_gsl_vector_double_h.gsl_vector;
            arg6 : double;
            arg7 : double) return int;  -- /usr/include/gsl/gsl_multimin.h:155
      iterate : access function
           (arg1 : System.Address;
            arg2 : access gsl_multimin_function_fdf;
            arg3 : access gsl_gsl_vector_double_h.gsl_vector;
            arg4 : access double;
            arg5 : access gsl_gsl_vector_double_h.gsl_vector;
            arg6 : access gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multimin.h:158
      restart : access function (arg1 : System.Address) return int;  -- /usr/include/gsl/gsl_multimin.h:161
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_multimin.h:162
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multimin.h:164

   --  skipped anonymous struct anon_anon_162

   type gsl_multimin_fdfminimizer is record
      c_type : access constant gsl_multimin_fdfminimizer_type;  -- /usr/include/gsl/gsl_multimin.h:169
      fdf : access gsl_multimin_function_fdf;  -- /usr/include/gsl/gsl_multimin.h:170
      f : aliased double;  -- /usr/include/gsl/gsl_multimin.h:172
      x : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multimin.h:173
      gradient : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multimin.h:174
      dx : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multimin.h:175
      state : System.Address;  -- /usr/include/gsl/gsl_multimin.h:177
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multimin.h:179

   function gsl_multimin_fdfminimizer_alloc (T : access constant gsl_multimin_fdfminimizer_type; n : stddef_h.size_t) return access gsl_multimin_fdfminimizer  -- /usr/include/gsl/gsl_multimin.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fdfminimizer_alloc";

   function gsl_multimin_fdfminimizer_set
     (s : access gsl_multimin_fdfminimizer;
      fdf : access gsl_multimin_function_fdf;
      x : access constant gsl_gsl_vector_double_h.gsl_vector;
      step_size : double;
      tol : double) return int  -- /usr/include/gsl/gsl_multimin.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fdfminimizer_set";

   procedure gsl_multimin_fdfminimizer_free (s : access gsl_multimin_fdfminimizer)  -- /usr/include/gsl/gsl_multimin.h:192
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fdfminimizer_free";

   function gsl_multimin_fdfminimizer_name (s : access constant gsl_multimin_fdfminimizer) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_multimin.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fdfminimizer_name";

   function gsl_multimin_fdfminimizer_iterate (s : access gsl_multimin_fdfminimizer) return int  -- /usr/include/gsl/gsl_multimin.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fdfminimizer_iterate";

   function gsl_multimin_fdfminimizer_restart (s : access gsl_multimin_fdfminimizer) return int  -- /usr/include/gsl/gsl_multimin.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fdfminimizer_restart";

   function gsl_multimin_fdfminimizer_x (s : access constant gsl_multimin_fdfminimizer) return access gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multimin.h:204
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fdfminimizer_x";

   function gsl_multimin_fdfminimizer_dx (s : access constant gsl_multimin_fdfminimizer) return access gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multimin.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fdfminimizer_dx";

   function gsl_multimin_fdfminimizer_gradient (s : access constant gsl_multimin_fdfminimizer) return access gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multimin.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fdfminimizer_gradient";

   function gsl_multimin_fdfminimizer_minimum (s : access constant gsl_multimin_fdfminimizer) return double  -- /usr/include/gsl/gsl_multimin.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fdfminimizer_minimum";

   gsl_multimin_fdfminimizer_steepest_descent : access constant gsl_multimin_fdfminimizer_type  -- /usr/include/gsl/gsl_multimin.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fdfminimizer_steepest_descent";

   gsl_multimin_fdfminimizer_conjugate_pr : access constant gsl_multimin_fdfminimizer_type  -- /usr/include/gsl/gsl_multimin.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fdfminimizer_conjugate_pr";

   gsl_multimin_fdfminimizer_conjugate_fr : access constant gsl_multimin_fdfminimizer_type  -- /usr/include/gsl/gsl_multimin.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fdfminimizer_conjugate_fr";

   gsl_multimin_fdfminimizer_vector_bfgs : access constant gsl_multimin_fdfminimizer_type  -- /usr/include/gsl/gsl_multimin.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fdfminimizer_vector_bfgs";

   gsl_multimin_fdfminimizer_vector_bfgs2 : access constant gsl_multimin_fdfminimizer_type  -- /usr/include/gsl/gsl_multimin.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fdfminimizer_vector_bfgs2";

   gsl_multimin_fminimizer_nmsimplex : access constant gsl_multimin_fminimizer_type  -- /usr/include/gsl/gsl_multimin.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fminimizer_nmsimplex";

   gsl_multimin_fminimizer_nmsimplex2 : access constant gsl_multimin_fminimizer_type  -- /usr/include/gsl/gsl_multimin.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fminimizer_nmsimplex2";

   gsl_multimin_fminimizer_nmsimplex2rand : access constant gsl_multimin_fminimizer_type  -- /usr/include/gsl/gsl_multimin.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multimin_fminimizer_nmsimplex2rand";

end gsl_gsl_multimin_h;
