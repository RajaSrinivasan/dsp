pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with gsl_gsl_math_h;
with gsl_gsl_mode_h;

package gsl_gsl_chebyshev_h is

   type gsl_cheb_series_struct is record
      c : access double;  -- /usr/include/gsl/gsl_chebyshev.h:44
      order : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_chebyshev.h:45
      a : aliased double;  -- /usr/include/gsl/gsl_chebyshev.h:46
      b : aliased double;  -- /usr/include/gsl/gsl_chebyshev.h:47
      order_sp : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_chebyshev.h:59
      f : access double;  -- /usr/include/gsl/gsl_chebyshev.h:63
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_chebyshev.h:42

   subtype gsl_cheb_series is gsl_cheb_series_struct;  -- /usr/include/gsl/gsl_chebyshev.h:65

   function gsl_cheb_alloc (order : stddef_h.size_t) return access gsl_cheb_series  -- /usr/include/gsl/gsl_chebyshev.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_alloc";

   procedure gsl_cheb_free (cs : access gsl_cheb_series)  -- /usr/include/gsl/gsl_chebyshev.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_free";

   function gsl_cheb_init
     (cs : access gsl_cheb_series;
      func : access constant gsl_gsl_math_h.gsl_function;
      a : double;
      b : double) return int  -- /usr/include/gsl/gsl_chebyshev.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_init";

   function gsl_cheb_order (cs : access constant gsl_cheb_series) return stddef_h.size_t  -- /usr/include/gsl/gsl_chebyshev.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_order";

   function gsl_cheb_size (cs : access constant gsl_cheb_series) return stddef_h.size_t  -- /usr/include/gsl/gsl_chebyshev.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_size";

   function gsl_cheb_coeffs (cs : access constant gsl_cheb_series) return access double  -- /usr/include/gsl/gsl_chebyshev.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_coeffs";

   function gsl_cheb_eval (cs : access constant gsl_cheb_series; x : double) return double  -- /usr/include/gsl/gsl_chebyshev.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_eval";

   function gsl_cheb_eval_err
     (cs : access constant gsl_cheb_series;
      x : double;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_chebyshev.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_eval_err";

   function gsl_cheb_eval_n
     (cs : access constant gsl_cheb_series;
      order : stddef_h.size_t;
      x : double) return double  -- /usr/include/gsl/gsl_chebyshev.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_eval_n";

   function gsl_cheb_eval_n_err
     (cs : access constant gsl_cheb_series;
      order : stddef_h.size_t;
      x : double;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_chebyshev.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_eval_n_err";

   function gsl_cheb_eval_mode
     (cs : access constant gsl_cheb_series;
      x : double;
      mode : gsl_gsl_mode_h.gsl_mode_t) return double  -- /usr/include/gsl/gsl_chebyshev.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_eval_mode";

   function gsl_cheb_eval_mode_e
     (cs : access constant gsl_cheb_series;
      x : double;
      mode : gsl_gsl_mode_h.gsl_mode_t;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_chebyshev.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_eval_mode_e";

   function gsl_cheb_calc_deriv (deriv : access gsl_cheb_series; cs : access constant gsl_cheb_series) return int  -- /usr/include/gsl/gsl_chebyshev.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_calc_deriv";

   function gsl_cheb_calc_integ (integ : access gsl_cheb_series; cs : access constant gsl_cheb_series) return int  -- /usr/include/gsl/gsl_chebyshev.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_cheb_calc_integ";

end gsl_gsl_chebyshev_h;
