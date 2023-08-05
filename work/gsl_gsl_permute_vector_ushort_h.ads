pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_permutation_h;
limited with gsl_gsl_vector_ushort_h;

package gsl_gsl_permute_vector_ushort_h is

   function gsl_permute_vector_ushort (p : access constant gsl_gsl_permutation_h.gsl_permutation; v : access gsl_gsl_vector_ushort_h.gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_permute_vector_ushort.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_vector_ushort";

   function gsl_permute_vector_ushort_inverse (p : access constant gsl_gsl_permutation_h.gsl_permutation; v : access gsl_gsl_vector_ushort_h.gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_permute_vector_ushort.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_vector_ushort_inverse";

end gsl_gsl_permute_vector_ushort_h;
