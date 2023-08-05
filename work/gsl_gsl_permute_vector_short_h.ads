pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_permutation_h;
limited with gsl_gsl_vector_short_h;

package gsl_gsl_permute_vector_short_h is

   function gsl_permute_vector_short (p : access constant gsl_gsl_permutation_h.gsl_permutation; v : access gsl_gsl_vector_short_h.gsl_vector_short) return int  -- /usr/include/gsl/gsl_permute_vector_short.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_vector_short";

   function gsl_permute_vector_short_inverse (p : access constant gsl_gsl_permutation_h.gsl_permutation; v : access gsl_gsl_vector_short_h.gsl_vector_short) return int  -- /usr/include/gsl/gsl_permute_vector_short.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_vector_short_inverse";

end gsl_gsl_permute_vector_short_h;
