pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
with System;

package gsl_gsl_monte_h is

   --  arg-macro: function GSL_MONTE_FN_EVAL (F, x)
   --    return *((F).f))(x,(F).dim,(F).params;
   type gsl_monte_function_struct is record
      f : access function
           (arg1 : access double;
            arg2 : stddef_h.size_t;
            arg3 : System.Address) return double;  -- /usr/include/gsl/gsl_monte.h:45
      dim : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_monte.h:46
      params : System.Address;  -- /usr/include/gsl/gsl_monte.h:47
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_monte.h:44

   subtype gsl_monte_function is gsl_monte_function_struct;  -- /usr/include/gsl/gsl_monte.h:50

end gsl_gsl_monte_h;
