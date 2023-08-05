pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package gsl_gsl_sf_elljac_h is

   function gsl_sf_elljac_e
     (u : double;
      m : double;
      sn : access double;
      cn : access double;
      dn : access double) return int  -- /usr/include/gsl/gsl_sf_elljac.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_elljac_e";

end gsl_gsl_sf_elljac_h;
