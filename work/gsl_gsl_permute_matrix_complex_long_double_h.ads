pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_permutation_h;
limited with gsl_gsl_matrix_complex_long_double_h;

package gsl_gsl_permute_matrix_complex_long_double_h is

   function gsl_permute_matrix_complex_long_double (p : access constant gsl_gsl_permutation_h.gsl_permutation; A : access gsl_gsl_matrix_complex_long_double_h.gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_permute_matrix_complex_long_double.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_matrix_complex_long_double";

end gsl_gsl_permute_matrix_complex_long_double_h;
