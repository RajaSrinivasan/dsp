pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with gsl_gsl_monte_h;
limited with gsl_gsl_rng_h;

package gsl_gsl_monte_miser_h is

   --  skipped anonymous struct anon_anon_23

   type gsl_monte_miser_state is record
      min_calls : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_monte_miser.h:43
      min_calls_per_bisection : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_monte_miser.h:44
      dither : aliased double;  -- /usr/include/gsl/gsl_monte_miser.h:45
      estimate_frac : aliased double;  -- /usr/include/gsl/gsl_monte_miser.h:46
      alpha : aliased double;  -- /usr/include/gsl/gsl_monte_miser.h:47
      dim : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_monte_miser.h:48
      estimate_style : aliased int;  -- /usr/include/gsl/gsl_monte_miser.h:49
      depth : aliased int;  -- /usr/include/gsl/gsl_monte_miser.h:50
      verbose : aliased int;  -- /usr/include/gsl/gsl_monte_miser.h:51
      x : access double;  -- /usr/include/gsl/gsl_monte_miser.h:52
      xmid : access double;  -- /usr/include/gsl/gsl_monte_miser.h:53
      sigma_l : access double;  -- /usr/include/gsl/gsl_monte_miser.h:54
      sigma_r : access double;  -- /usr/include/gsl/gsl_monte_miser.h:55
      fmax_l : access double;  -- /usr/include/gsl/gsl_monte_miser.h:56
      fmax_r : access double;  -- /usr/include/gsl/gsl_monte_miser.h:57
      fmin_l : access double;  -- /usr/include/gsl/gsl_monte_miser.h:58
      fmin_r : access double;  -- /usr/include/gsl/gsl_monte_miser.h:59
      fsum_l : access double;  -- /usr/include/gsl/gsl_monte_miser.h:60
      fsum_r : access double;  -- /usr/include/gsl/gsl_monte_miser.h:61
      fsum2_l : access double;  -- /usr/include/gsl/gsl_monte_miser.h:62
      fsum2_r : access double;  -- /usr/include/gsl/gsl_monte_miser.h:63
      hits_l : access stddef_h.size_t;  -- /usr/include/gsl/gsl_monte_miser.h:64
      hits_r : access stddef_h.size_t;  -- /usr/include/gsl/gsl_monte_miser.h:65
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_monte_miser.h:66

   function gsl_monte_miser_integrate
     (f : access gsl_gsl_monte_h.gsl_monte_function;
      xl : access double;
      xh : access double;
      dim : stddef_h.size_t;
      calls : stddef_h.size_t;
      r : access gsl_gsl_rng_h.gsl_rng;
      state : access gsl_monte_miser_state;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_monte_miser.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_miser_integrate";

   function gsl_monte_miser_alloc (dim : stddef_h.size_t) return access gsl_monte_miser_state  -- /usr/include/gsl/gsl_monte_miser.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_miser_alloc";

   function gsl_monte_miser_init (state : access gsl_monte_miser_state) return int  -- /usr/include/gsl/gsl_monte_miser.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_miser_init";

   procedure gsl_monte_miser_free (state : access gsl_monte_miser_state)  -- /usr/include/gsl/gsl_monte_miser.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_miser_free";

   --  skipped anonymous struct anon_anon_24

   type gsl_monte_miser_params is record
      estimate_frac : aliased double;  -- /usr/include/gsl/gsl_monte_miser.h:82
      min_calls : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_monte_miser.h:83
      min_calls_per_bisection : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_monte_miser.h:84
      alpha : aliased double;  -- /usr/include/gsl/gsl_monte_miser.h:85
      dither : aliased double;  -- /usr/include/gsl/gsl_monte_miser.h:86
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_monte_miser.h:87

   procedure gsl_monte_miser_params_get (state : access constant gsl_monte_miser_state; params : access gsl_monte_miser_params)  -- /usr/include/gsl/gsl_monte_miser.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_miser_params_get";

   procedure gsl_monte_miser_params_set (state : access gsl_monte_miser_state; params : access constant gsl_monte_miser_params)  -- /usr/include/gsl/gsl_monte_miser.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_miser_params_set";

end gsl_gsl_monte_miser_h;
