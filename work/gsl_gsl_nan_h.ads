pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package gsl_gsl_nan_h is

   --  unsupported macro: GSL_POSINF (gsl_posinf())
   --  unsupported macro: GSL_NEGINF (gsl_neginf())
   --  unsupported macro: GSL_NAN (gsl_nan())
   GSL_POSZERO : constant := (+0.0);  --  /usr/include/gsl/gsl_nan.h:42
   GSL_NEGZERO : constant := (-0.0);  --  /usr/include/gsl/gsl_nan.h:43

end gsl_gsl_nan_h;
