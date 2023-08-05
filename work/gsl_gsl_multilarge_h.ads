pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with stddef_h;
with System;
limited with gsl_gsl_matrix_double_h;
limited with gsl_gsl_vector_double_h;

package gsl_gsl_multilarge_h is

   --  skipped anonymous struct anon_anon_157

   type gsl_multilarge_linear_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multilarge.h:43
      alloc : access function (arg1 : stddef_h.size_t) return System.Address;  -- /usr/include/gsl/gsl_multilarge.h:44
      reset : access function (arg1 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge.h:45
      accumulate : access function
           (arg1 : access gsl_gsl_matrix_double_h.gsl_matrix;
            arg2 : access gsl_gsl_vector_double_h.gsl_vector;
            arg3 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge.h:46
      solve : access function
           (arg1 : double;
            arg2 : access gsl_gsl_vector_double_h.gsl_vector;
            arg3 : access double;
            arg4 : access double;
            arg5 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge.h:48
      rcond : access function (arg1 : access double; arg2 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge.h:50
      lcurve : access function
           (arg1 : access gsl_gsl_vector_double_h.gsl_vector;
            arg2 : access gsl_gsl_vector_double_h.gsl_vector;
            arg3 : access gsl_gsl_vector_double_h.gsl_vector;
            arg4 : System.Address) return int;  -- /usr/include/gsl/gsl_multilarge.h:51
      matrix_ptr : access function (arg1 : System.Address) return access constant gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_multilarge.h:53
      rhs_ptr : access function (arg1 : System.Address) return access constant gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multilarge.h:54
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_multilarge.h:55
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multilarge.h:56

   --  skipped anonymous struct anon_anon_158

   type gsl_multilarge_linear_workspace is record
      c_type : access constant gsl_multilarge_linear_type;  -- /usr/include/gsl/gsl_multilarge.h:60
      state : System.Address;  -- /usr/include/gsl/gsl_multilarge.h:61
      p : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multilarge.h:62
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multilarge.h:63

   gsl_multilarge_linear_normal : access constant gsl_multilarge_linear_type  -- /usr/include/gsl/gsl_multilarge.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_normal";

   gsl_multilarge_linear_tsqr : access constant gsl_multilarge_linear_type  -- /usr/include/gsl/gsl_multilarge.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_tsqr";

   function gsl_multilarge_linear_alloc (T : access constant gsl_multilarge_linear_type; p : stddef_h.size_t) return access gsl_multilarge_linear_workspace  -- /usr/include/gsl/gsl_multilarge.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_alloc";

   procedure gsl_multilarge_linear_free (w : access gsl_multilarge_linear_workspace)  -- /usr/include/gsl/gsl_multilarge.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_free";

   function gsl_multilarge_linear_name (w : access constant gsl_multilarge_linear_workspace) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_multilarge.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_name";

   function gsl_multilarge_linear_reset (w : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_reset";

   function gsl_multilarge_linear_accumulate
     (X : access gsl_gsl_matrix_double_h.gsl_matrix;
      y : access gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_accumulate";

   function gsl_multilarge_linear_solve
     (lambda : double;
      c : access gsl_gsl_vector_double_h.gsl_vector;
      rnorm : access double;
      snorm : access double;
      w : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_solve";

   function gsl_multilarge_linear_rcond (rcond : access double; w : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_rcond";

   function gsl_multilarge_linear_lcurve
     (reg_param : access gsl_gsl_vector_double_h.gsl_vector;
      rho : access gsl_gsl_vector_double_h.gsl_vector;
      eta : access gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_lcurve";

   function gsl_multilarge_linear_wstdform1
     (L : access constant gsl_gsl_vector_double_h.gsl_vector;
      X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant gsl_gsl_vector_double_h.gsl_vector;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      Xs : access gsl_gsl_matrix_double_h.gsl_matrix;
      ys : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_wstdform1";

   function gsl_multilarge_linear_stdform1
     (L : access constant gsl_gsl_vector_double_h.gsl_vector;
      X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      Xs : access gsl_gsl_matrix_double_h.gsl_matrix;
      ys : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_stdform1";

   function gsl_multilarge_linear_L_decomp (L : access gsl_gsl_matrix_double_h.gsl_matrix; tau : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multilarge.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_L_decomp";

   function gsl_multilarge_linear_wstdform2
     (LQR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      Ltau : access constant gsl_gsl_vector_double_h.gsl_vector;
      X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant gsl_gsl_vector_double_h.gsl_vector;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      Xs : access gsl_gsl_matrix_double_h.gsl_matrix;
      ys : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_wstdform2";

   function gsl_multilarge_linear_stdform2
     (LQR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      Ltau : access constant gsl_gsl_vector_double_h.gsl_vector;
      X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      Xs : access gsl_gsl_matrix_double_h.gsl_matrix;
      ys : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_stdform2";

   function gsl_multilarge_linear_genform1
     (L : access constant gsl_gsl_vector_double_h.gsl_vector;
      cs : access constant gsl_gsl_vector_double_h.gsl_vector;
      c : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_genform1";

   function gsl_multilarge_linear_genform2
     (LQR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      Ltau : access constant gsl_gsl_vector_double_h.gsl_vector;
      cs : access constant gsl_gsl_vector_double_h.gsl_vector;
      c : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multilarge_linear_workspace) return int  -- /usr/include/gsl/gsl_multilarge.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_genform2";

   function gsl_multilarge_linear_matrix_ptr (work : access constant gsl_multilarge_linear_workspace) return access constant gsl_gsl_matrix_double_h.gsl_matrix  -- /usr/include/gsl/gsl_multilarge.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_matrix_ptr";

   function gsl_multilarge_linear_rhs_ptr (work : access constant gsl_multilarge_linear_workspace) return access constant gsl_gsl_vector_double_h.gsl_vector  -- /usr/include/gsl/gsl_multilarge.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multilarge_linear_rhs_ptr";

end gsl_gsl_multilarge_h;
