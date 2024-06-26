pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;

package gsl_gsl_permute_long_h is

   function gsl_permute_long
     (p : access stddef_h.size_t;
      data : access long;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_permute_long.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_long";

   function gsl_permute_long_inverse
     (p : access stddef_h.size_t;
      data : access long;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_permute_long.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_long_inverse";

end gsl_gsl_permute_long_h;
