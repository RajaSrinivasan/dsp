pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_math_h;

package gsl_gsl_deriv_h is

   function gsl_deriv_central
     (f : access constant gsl_gsl_math_h.gsl_function;
      x : double;
      h : double;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_deriv.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_deriv_central";

   function gsl_deriv_backward
     (f : access constant gsl_gsl_math_h.gsl_function;
      x : double;
      h : double;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_deriv.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_deriv_backward";

   function gsl_deriv_forward
     (f : access constant gsl_gsl_math_h.gsl_function;
      x : double;
      h : double;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_deriv.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_deriv_forward";

end gsl_gsl_deriv_h;
