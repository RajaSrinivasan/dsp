pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
with gsl_gsl_cblas_h;

package gsl_gsl_blas_types_h is

   subtype CBLAS_INDEX_t is stddef_h.size_t;  -- /usr/include/gsl/gsl_blas_types.h:42

   subtype CBLAS_ORDER_t is gsl_gsl_cblas_h.CBLAS_ORDER;  -- /usr/include/gsl/gsl_blas_types.h:43

   subtype CBLAS_TRANSPOSE_t is gsl_gsl_cblas_h.CBLAS_TRANSPOSE;  -- /usr/include/gsl/gsl_blas_types.h:44

   subtype CBLAS_UPLO_t is gsl_gsl_cblas_h.CBLAS_UPLO;  -- /usr/include/gsl/gsl_blas_types.h:45

   subtype CBLAS_DIAG_t is gsl_gsl_cblas_h.CBLAS_DIAG;  -- /usr/include/gsl/gsl_blas_types.h:46

   subtype CBLAS_SIDE_t is gsl_gsl_cblas_h.CBLAS_SIDE;  -- /usr/include/gsl/gsl_blas_types.h:47

end gsl_gsl_blas_types_h;
