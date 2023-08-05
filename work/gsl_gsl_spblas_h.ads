pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with gsl_gsl_blas_types_h;
limited with gsl_gsl_spmatrix_double_h;
limited with gsl_gsl_vector_double_h;
with stddef_h;

package gsl_gsl_spblas_h is

   function gsl_spblas_dgemv
     (TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : double;
      A : access constant gsl_gsl_spmatrix_double_h.gsl_spmatrix;
      x : access constant gsl_gsl_vector_double_h.gsl_vector;
      beta : double;
      y : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_spblas.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spblas_dgemv";

   function gsl_spblas_dgemm
     (alpha : double;
      A : access constant gsl_gsl_spmatrix_double_h.gsl_spmatrix;
      B : access constant gsl_gsl_spmatrix_double_h.gsl_spmatrix;
      C : access gsl_gsl_spmatrix_double_h.gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spblas.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spblas_dgemm";

   function gsl_spblas_scatter
     (A : access constant gsl_gsl_spmatrix_double_h.gsl_spmatrix;
      j : stddef_h.size_t;
      alpha : double;
      w : access int;
      x : access double;
      mark : int;
      C : access gsl_gsl_spmatrix_double_h.gsl_spmatrix;
      nz : stddef_h.size_t) return stddef_h.size_t  -- /usr/include/gsl/gsl_spblas.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spblas_scatter";

end gsl_gsl_spblas_h;
