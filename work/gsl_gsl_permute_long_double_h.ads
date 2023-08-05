pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;

package gsl_gsl_permute_long_double_h is

   function gsl_permute_long_double
     (p : access stddef_h.size_t;
      data : access long_double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_permute_long_double.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_long_double";

   function gsl_permute_long_double_inverse
     (p : access stddef_h.size_t;
      data : access long_double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_permute_long_double.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_long_double_inverse";

end gsl_gsl_permute_long_double_h;
