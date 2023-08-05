pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_permutation_h;
limited with gsl_gsl_vector_uint_h;

package gsl_gsl_permute_vector_uint_h is

   function gsl_permute_vector_uint (p : access constant gsl_gsl_permutation_h.gsl_permutation; v : access gsl_gsl_vector_uint_h.gsl_vector_uint) return int  -- /usr/include/gsl/gsl_permute_vector_uint.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_vector_uint";

   function gsl_permute_vector_uint_inverse (p : access constant gsl_gsl_permutation_h.gsl_permutation; v : access gsl_gsl_vector_uint_h.gsl_vector_uint) return int  -- /usr/include/gsl/gsl_permute_vector_uint.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_vector_uint_inverse";

end gsl_gsl_permute_vector_uint_h;
