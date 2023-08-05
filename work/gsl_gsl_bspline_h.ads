pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with gsl_gsl_vector_double_h;
limited with gsl_gsl_matrix_double_h;

package gsl_gsl_bspline_h is

   --  skipped anonymous struct anon_anon_157

   type gsl_bspline_workspace is record
      k : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_bspline.h:43
      km1 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_bspline.h:44
      l : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_bspline.h:45
      nbreak : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_bspline.h:46
      n : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_bspline.h:47
      knots : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_bspline.h:49
      deltal : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_bspline.h:50
      deltar : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_bspline.h:51
      B : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_bspline.h:52
      A : access gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_bspline.h:55
      dB : access gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_bspline.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_bspline.h:57

   function gsl_bspline_alloc (k : stddef_h.size_t; nbreak : stddef_h.size_t) return access gsl_bspline_workspace  -- /usr/include/gsl/gsl_bspline.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_alloc";

   procedure gsl_bspline_free (w : access gsl_bspline_workspace)  -- /usr/include/gsl/gsl_bspline.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_free";

   function gsl_bspline_ncoeffs (w : access gsl_bspline_workspace) return stddef_h.size_t  -- /usr/include/gsl/gsl_bspline.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_ncoeffs";

   function gsl_bspline_order (w : access gsl_bspline_workspace) return stddef_h.size_t  -- /usr/include/gsl/gsl_bspline.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_order";

   function gsl_bspline_nbreak (w : access gsl_bspline_workspace) return stddef_h.size_t  -- /usr/include/gsl/gsl_bspline.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_nbreak";

   function gsl_bspline_breakpoint (i : stddef_h.size_t; w : access gsl_bspline_workspace) return double  -- /usr/include/gsl/gsl_bspline.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_breakpoint";

   function gsl_bspline_greville_abscissa (i : stddef_h.size_t; w : access gsl_bspline_workspace) return double  -- /usr/include/gsl/gsl_bspline.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_greville_abscissa";

   function gsl_bspline_knots (breakpts : access constant gsl_gsl_vector_double_h.gsl_vector; w : access gsl_bspline_workspace) return int  -- /usr/include/gsl/gsl_bspline.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_knots";

   function gsl_bspline_knots_uniform
     (a : double;
      b : double;
      w : access gsl_bspline_workspace) return int  -- /usr/include/gsl/gsl_bspline.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_knots_uniform";

   function gsl_bspline_knots_greville
     (abscissae : access constant gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_bspline_workspace;
      abserr : access double) return int  -- /usr/include/gsl/gsl_bspline.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_knots_greville";

   function gsl_bspline_eval
     (x : double;
      B : access gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_bspline_workspace) return int  -- /usr/include/gsl/gsl_bspline.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_eval";

   function gsl_bspline_eval_nonzero
     (x : double;
      Bk : access gsl_gsl_vector_double_h.gsl_vector;
      istart : access stddef_h.size_t;
      iend : access stddef_h.size_t;
      w : access gsl_bspline_workspace) return int  -- /usr/include/gsl/gsl_bspline.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_eval_nonzero";

   function gsl_bspline_deriv_eval
     (x : double;
      nderiv : stddef_h.size_t;
      dB : access gsl_gsl_matrix_double_h.gsl_matrix;
      w : access gsl_bspline_workspace) return int  -- /usr/include/gsl/gsl_bspline.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_deriv_eval";

   function gsl_bspline_deriv_eval_nonzero
     (x : double;
      nderiv : stddef_h.size_t;
      dB : access gsl_gsl_matrix_double_h.gsl_matrix;
      istart : access stddef_h.size_t;
      iend : access stddef_h.size_t;
      w : access gsl_bspline_workspace) return int  -- /usr/include/gsl/gsl_bspline.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bspline_deriv_eval_nonzero";

end gsl_gsl_bspline_h;
