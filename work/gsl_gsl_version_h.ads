pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package gsl_gsl_version_h is

   GSL_VERSION : aliased constant String := "2.7.1" & ASCII.NUL;  --  /usr/include/gsl/gsl_version.h:18
   GSL_MAJOR_VERSION : constant := 2;  --  /usr/include/gsl/gsl_version.h:19
   GSL_MINOR_VERSION : constant := 7;  --  /usr/include/gsl/gsl_version.h:20

   gsl_version : Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_version.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_version";

end gsl_gsl_version_h;
