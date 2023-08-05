pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package gsl_gsl_check_range_h is

   GSL_RANGE_CHECK : constant := 1;  --  /usr/include/gsl/gsl_check_range.h:51

   gsl_check_range : aliased int  -- /usr/include/gsl/gsl_check_range.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_check_range";

end gsl_gsl_check_range_h;
