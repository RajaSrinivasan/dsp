pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_sf_result_h;

package gsl_gsl_sf_sincos_pi_h is

   function gsl_sf_sin_pi_e (x : double; result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_sincos_pi.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_sin_pi_e";

   function gsl_sf_sin_pi (x : double) return double  -- /usr/include/gsl/gsl_sf_sincos_pi.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_sin_pi";

   function gsl_sf_cos_pi_e (x : double; result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_sincos_pi.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_cos_pi_e";

   function gsl_sf_cos_pi (x : double) return double  -- /usr/include/gsl/gsl_sf_sincos_pi.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_cos_pi";

end gsl_gsl_sf_sincos_pi_h;
