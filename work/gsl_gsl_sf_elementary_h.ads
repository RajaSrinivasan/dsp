pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_sf_result_h;

package gsl_gsl_sf_elementary_h is

   function gsl_sf_multiply_e
     (x : double;
      y : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_elementary.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_multiply_e";

   function gsl_sf_multiply (x : double; y : double) return double  -- /usr/include/gsl/gsl_sf_elementary.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_multiply";

   function gsl_sf_multiply_err_e
     (x : double;
      dx : double;
      y : double;
      dy : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_elementary.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_multiply_err_e";

end gsl_gsl_sf_elementary_h;
