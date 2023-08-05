pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_sf_result_h;

package gsl_gsl_sf_synchrotron_h is

   function gsl_sf_synchrotron_1_e (x : double; result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_synchrotron.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_synchrotron_1_e";

   function gsl_sf_synchrotron_1 (x : double) return double  -- /usr/include/gsl/gsl_sf_synchrotron.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_synchrotron_1";

   function gsl_sf_synchrotron_2_e (x : double; result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_synchrotron.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_synchrotron_2_e";

   function gsl_sf_synchrotron_2 (x : double) return double  -- /usr/include/gsl/gsl_sf_synchrotron.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_synchrotron_2";

end gsl_gsl_sf_synchrotron_h;
