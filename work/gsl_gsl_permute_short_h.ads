pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;

package gsl_gsl_permute_short_h is

   function gsl_permute_short
     (p : access stddef_h.size_t;
      data : access short;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_permute_short.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_short";

   function gsl_permute_short_inverse
     (p : access stddef_h.size_t;
      data : access short;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_permute_short.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_short_inverse";

end gsl_gsl_permute_short_h;
