pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_vector_float_h;
limited with gsl_gsl_vector_double_h;
limited with gsl_gsl_vector_complex_float_h;
with gsl_gsl_complex_h;
limited with gsl_gsl_vector_complex_double_h;
with gsl_gsl_blas_types_h;
limited with gsl_gsl_matrix_float_h;
limited with gsl_gsl_matrix_double_h;
limited with gsl_gsl_matrix_complex_float_h;
limited with gsl_gsl_matrix_complex_double_h;

package gsl_gsl_blas_h is

   function gsl_blas_sdsdot
     (alpha : float;
      X : access constant gsl_gsl_vector_float_h.gsl_vector_float;
      Y : access constant gsl_gsl_vector_float_h.gsl_vector_float;
      result : access float) return int  -- /usr/include/gsl/gsl_blas.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_sdsdot";

   function gsl_blas_dsdot
     (X : access constant gsl_gsl_vector_float_h.gsl_vector_float;
      Y : access constant gsl_gsl_vector_float_h.gsl_vector_float;
      result : access double) return int  -- /usr/include/gsl/gsl_blas.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dsdot";

   function gsl_blas_sdot
     (X : access constant gsl_gsl_vector_float_h.gsl_vector_float;
      Y : access constant gsl_gsl_vector_float_h.gsl_vector_float;
      result : access float) return int  -- /usr/include/gsl/gsl_blas.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_sdot";

   function gsl_blas_ddot
     (X : access constant gsl_gsl_vector_double_h.gsl_vector;
      Y : access constant gsl_gsl_vector_double_h.gsl_vector;
      result : access double) return int  -- /usr/include/gsl/gsl_blas.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ddot";

   function gsl_blas_cdotu
     (X : access constant gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      Y : access constant gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      dotu : access gsl_gsl_complex_h.gsl_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cdotu";

   function gsl_blas_cdotc
     (X : access constant gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      Y : access constant gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      dotc : access gsl_gsl_complex_h.gsl_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cdotc";

   function gsl_blas_zdotu
     (X : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      Y : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      dotu : access gsl_gsl_complex_h.gsl_complex) return int  -- /usr/include/gsl/gsl_blas.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zdotu";

   function gsl_blas_zdotc
     (X : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      Y : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      dotc : access gsl_gsl_complex_h.gsl_complex) return int  -- /usr/include/gsl/gsl_blas.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zdotc";

   function gsl_blas_snrm2 (X : access constant gsl_gsl_vector_float_h.gsl_vector_float) return float  -- /usr/include/gsl/gsl_blas.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_snrm2";

   function gsl_blas_sasum (X : access constant gsl_gsl_vector_float_h.gsl_vector_float) return float  -- /usr/include/gsl/gsl_blas.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_sasum";

   function gsl_blas_dnrm2 (X : access constant gsl_gsl_vector_double_h.gsl_vector) return double  -- /usr/include/gsl/gsl_blas.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dnrm2";

   function gsl_blas_dasum (X : access constant gsl_gsl_vector_double_h.gsl_vector) return double  -- /usr/include/gsl/gsl_blas.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dasum";

   function gsl_blas_scnrm2 (X : access constant gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return float  -- /usr/include/gsl/gsl_blas.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_scnrm2";

   function gsl_blas_scasum (X : access constant gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return float  -- /usr/include/gsl/gsl_blas.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_scasum";

   function gsl_blas_dznrm2 (X : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex) return double  -- /usr/include/gsl/gsl_blas.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dznrm2";

   function gsl_blas_dzasum (X : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex) return double  -- /usr/include/gsl/gsl_blas.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dzasum";

   function gsl_blas_isamax (X : access constant gsl_gsl_vector_float_h.gsl_vector_float) return gsl_gsl_blas_types_h.CBLAS_INDEX_t  -- /usr/include/gsl/gsl_blas.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_isamax";

   function gsl_blas_idamax (X : access constant gsl_gsl_vector_double_h.gsl_vector) return gsl_gsl_blas_types_h.CBLAS_INDEX_t  -- /usr/include/gsl/gsl_blas.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_idamax";

   function gsl_blas_icamax (X : access constant gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return gsl_gsl_blas_types_h.CBLAS_INDEX_t  -- /usr/include/gsl/gsl_blas.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_icamax";

   function gsl_blas_izamax (X : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex) return gsl_gsl_blas_types_h.CBLAS_INDEX_t  -- /usr/include/gsl/gsl_blas.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_izamax";

   function gsl_blas_sswap (X : access gsl_gsl_vector_float_h.gsl_vector_float; Y : access gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_blas.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_sswap";

   function gsl_blas_scopy (X : access constant gsl_gsl_vector_float_h.gsl_vector_float; Y : access gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_blas.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_scopy";

   function gsl_blas_saxpy
     (alpha : float;
      X : access constant gsl_gsl_vector_float_h.gsl_vector_float;
      Y : access gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_blas.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_saxpy";

   function gsl_blas_dswap (X : access gsl_gsl_vector_double_h.gsl_vector; Y : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_blas.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dswap";

   function gsl_blas_dcopy (X : access constant gsl_gsl_vector_double_h.gsl_vector; Y : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_blas.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dcopy";

   function gsl_blas_daxpy
     (alpha : double;
      X : access constant gsl_gsl_vector_double_h.gsl_vector;
      Y : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_blas.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_daxpy";

   function gsl_blas_cswap (X : access gsl_gsl_vector_complex_float_h.gsl_vector_complex_float; Y : access gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cswap";

   function gsl_blas_ccopy (X : access constant gsl_gsl_vector_complex_float_h.gsl_vector_complex_float; Y : access gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ccopy";

   function gsl_blas_caxpy
     (alpha : gsl_gsl_complex_h.gsl_complex_float;
      X : access constant gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      Y : access gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_caxpy";

   function gsl_blas_zswap (X : access gsl_gsl_vector_complex_double_h.gsl_vector_complex; Y : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_blas.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zswap";

   function gsl_blas_zcopy (X : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex; Y : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_blas.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zcopy";

   function gsl_blas_zaxpy
     (alpha : gsl_gsl_complex_h.gsl_complex;
      X : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      Y : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_blas.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zaxpy";

   function gsl_blas_srotg
     (a : access float;
      b : access float;
      c : access float;
      s : access float) return int  -- /usr/include/gsl/gsl_blas.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_srotg";

   function gsl_blas_srotmg
     (d1 : access float;
      d2 : access float;
      b1 : access float;
      b2 : float;
      P : access float) return int  -- /usr/include/gsl/gsl_blas.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_srotmg";

   function gsl_blas_srot
     (X : access gsl_gsl_vector_float_h.gsl_vector_float;
      Y : access gsl_gsl_vector_float_h.gsl_vector_float;
      c : float;
      s : float) return int  -- /usr/include/gsl/gsl_blas.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_srot";

   function gsl_blas_srotm
     (X : access gsl_gsl_vector_float_h.gsl_vector_float;
      Y : access gsl_gsl_vector_float_h.gsl_vector_float;
      P : access float) return int  -- /usr/include/gsl/gsl_blas.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_srotm";

   function gsl_blas_drotg
     (a : access double;
      b : access double;
      c : access double;
      s : access double) return int  -- /usr/include/gsl/gsl_blas.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_drotg";

   function gsl_blas_drotmg
     (d1 : access double;
      d2 : access double;
      b1 : access double;
      b2 : double;
      P : access double) return int  -- /usr/include/gsl/gsl_blas.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_drotmg";

   function gsl_blas_drot
     (X : access gsl_gsl_vector_double_h.gsl_vector;
      Y : access gsl_gsl_vector_double_h.gsl_vector;
      c : double;
      s : double) return int  -- /usr/include/gsl/gsl_blas.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_drot";

   function gsl_blas_drotm
     (X : access gsl_gsl_vector_double_h.gsl_vector;
      Y : access gsl_gsl_vector_double_h.gsl_vector;
      P : access double) return int  -- /usr/include/gsl/gsl_blas.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_drotm";

   procedure gsl_blas_sscal (alpha : float; X : access gsl_gsl_vector_float_h.gsl_vector_float)  -- /usr/include/gsl/gsl_blas.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_sscal";

   procedure gsl_blas_dscal (alpha : double; X : access gsl_gsl_vector_double_h.gsl_vector)  -- /usr/include/gsl/gsl_blas.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dscal";

   procedure gsl_blas_cscal (alpha : gsl_gsl_complex_h.gsl_complex_float; X : access gsl_gsl_vector_complex_float_h.gsl_vector_complex_float)  -- /usr/include/gsl/gsl_blas.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cscal";

   procedure gsl_blas_zscal (alpha : gsl_gsl_complex_h.gsl_complex; X : access gsl_gsl_vector_complex_double_h.gsl_vector_complex)  -- /usr/include/gsl/gsl_blas.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zscal";

   procedure gsl_blas_csscal (alpha : float; X : access gsl_gsl_vector_complex_float_h.gsl_vector_complex_float)  -- /usr/include/gsl/gsl_blas.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_csscal";

   procedure gsl_blas_zdscal (alpha : double; X : access gsl_gsl_vector_complex_double_h.gsl_vector_complex)  -- /usr/include/gsl/gsl_blas.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zdscal";

   function gsl_blas_sgemv
     (TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : float;
      A : access constant gsl_gsl_matrix_float_h.gsl_matrix_float;
      X : access constant gsl_gsl_vector_float_h.gsl_vector_float;
      beta : float;
      Y : access gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_blas.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_sgemv";

   function gsl_blas_strmv
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      A : access constant gsl_gsl_matrix_float_h.gsl_matrix_float;
      X : access gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_blas.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_strmv";

   function gsl_blas_strsv
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      A : access constant gsl_gsl_matrix_float_h.gsl_matrix_float;
      X : access gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_blas.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_strsv";

   function gsl_blas_dgemv
     (TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : double;
      A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      X : access constant gsl_gsl_vector_double_h.gsl_vector;
      beta : double;
      Y : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_blas.h:205
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dgemv";

   function gsl_blas_dtrmv
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      X : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_blas.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dtrmv";

   function gsl_blas_dtrsv
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      X : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_blas.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dtrsv";

   function gsl_blas_cgemv
     (TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : gsl_gsl_complex_h.gsl_complex_float;
      A : access constant gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      X : access constant gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      beta : gsl_gsl_complex_h.gsl_complex_float;
      Y : access gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cgemv";

   function gsl_blas_ctrmv
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      A : access constant gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      X : access gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ctrmv";

   function gsl_blas_ctrsv
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      A : access constant gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      X : access gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ctrsv";

   function gsl_blas_zgemv
     (TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : gsl_gsl_complex_h.gsl_complex;
      A : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      X : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      beta : gsl_gsl_complex_h.gsl_complex;
      Y : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_blas.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zgemv";

   function gsl_blas_ztrmv
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      A : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      X : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_blas.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ztrmv";

   function gsl_blas_ztrsv
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      A : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      X : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_blas.h:251
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ztrsv";

   function gsl_blas_ssymv
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : float;
      A : access constant gsl_gsl_matrix_float_h.gsl_matrix_float;
      X : access constant gsl_gsl_vector_float_h.gsl_vector_float;
      beta : float;
      Y : access gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_blas.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ssymv";

   function gsl_blas_sger
     (alpha : float;
      X : access constant gsl_gsl_vector_float_h.gsl_vector_float;
      Y : access constant gsl_gsl_vector_float_h.gsl_vector_float;
      A : access gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_blas.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_sger";

   function gsl_blas_ssyr
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : float;
      X : access constant gsl_gsl_vector_float_h.gsl_vector_float;
      A : access gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_blas.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ssyr";

   function gsl_blas_ssyr2
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : float;
      X : access constant gsl_gsl_vector_float_h.gsl_vector_float;
      Y : access constant gsl_gsl_vector_float_h.gsl_vector_float;
      A : access gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_blas.h:276
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ssyr2";

   function gsl_blas_dsymv
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : double;
      A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      X : access constant gsl_gsl_vector_double_h.gsl_vector;
      beta : double;
      Y : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_blas.h:282
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dsymv";

   function gsl_blas_dger
     (alpha : double;
      X : access constant gsl_gsl_vector_double_h.gsl_vector;
      Y : access constant gsl_gsl_vector_double_h.gsl_vector;
      A : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_blas.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dger";

   function gsl_blas_dsyr
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : double;
      X : access constant gsl_gsl_vector_double_h.gsl_vector;
      A : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_blas.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dsyr";

   function gsl_blas_dsyr2
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : double;
      X : access constant gsl_gsl_vector_double_h.gsl_vector;
      Y : access constant gsl_gsl_vector_double_h.gsl_vector;
      A : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_blas.h:298
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dsyr2";

   function gsl_blas_chemv
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : gsl_gsl_complex_h.gsl_complex_float;
      A : access constant gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      X : access constant gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      beta : gsl_gsl_complex_h.gsl_complex_float;
      Y : access gsl_gsl_vector_complex_float_h.gsl_vector_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:308
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_chemv";

   function gsl_blas_cgeru
     (alpha : gsl_gsl_complex_h.gsl_complex_float;
      X : access constant gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      Y : access constant gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      A : access gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:315
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cgeru";

   function gsl_blas_cgerc
     (alpha : gsl_gsl_complex_h.gsl_complex_float;
      X : access constant gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      Y : access constant gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      A : access gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cgerc";

   function gsl_blas_cher
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : float;
      X : access constant gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      A : access gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cher";

   function gsl_blas_cher2
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : gsl_gsl_complex_h.gsl_complex_float;
      X : access constant gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      Y : access constant gsl_gsl_vector_complex_float_h.gsl_vector_complex_float;
      A : access gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:330
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cher2";

   function gsl_blas_zhemv
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : gsl_gsl_complex_h.gsl_complex;
      A : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      X : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      beta : gsl_gsl_complex_h.gsl_complex;
      Y : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_blas.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zhemv";

   function gsl_blas_zgeru
     (alpha : gsl_gsl_complex_h.gsl_complex;
      X : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      Y : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      A : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:343
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zgeru";

   function gsl_blas_zgerc
     (alpha : gsl_gsl_complex_h.gsl_complex;
      X : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      Y : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      A : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:348
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zgerc";

   function gsl_blas_zher
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : double;
      X : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      A : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:353
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zher";

   function gsl_blas_zher2
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : gsl_gsl_complex_h.gsl_complex;
      X : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      Y : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      A : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:358
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zher2";

   function gsl_blas_sgemm
     (TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      TransB : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : float;
      A : access constant gsl_gsl_matrix_float_h.gsl_matrix_float;
      B : access constant gsl_gsl_matrix_float_h.gsl_matrix_float;
      beta : float;
      C : access gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_blas.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_sgemm";

   function gsl_blas_ssymm
     (Side : gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : float;
      A : access constant gsl_gsl_matrix_float_h.gsl_matrix_float;
      B : access constant gsl_gsl_matrix_float_h.gsl_matrix_float;
      beta : float;
      C : access gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_blas.h:381
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ssymm";

   function gsl_blas_ssyrk
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : float;
      A : access constant gsl_gsl_matrix_float_h.gsl_matrix_float;
      beta : float;
      C : access gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_blas.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ssyrk";

   function gsl_blas_ssyr2k
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : float;
      A : access constant gsl_gsl_matrix_float_h.gsl_matrix_float;
      B : access constant gsl_gsl_matrix_float_h.gsl_matrix_float;
      beta : float;
      C : access gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_blas.h:394
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ssyr2k";

   function gsl_blas_strmm
     (Side : gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      alpha : float;
      A : access constant gsl_gsl_matrix_float_h.gsl_matrix_float;
      B : access gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_blas.h:401
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_strmm";

   function gsl_blas_strsm
     (Side : gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      alpha : float;
      A : access constant gsl_gsl_matrix_float_h.gsl_matrix_float;
      B : access gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_blas.h:408
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_strsm";

   function gsl_blas_dgemm
     (TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      TransB : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : double;
      A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      B : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      beta : double;
      C : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_blas.h:415
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dgemm";

   function gsl_blas_dsymm
     (Side : gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : double;
      A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      B : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      beta : double;
      C : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_blas.h:423
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dsymm";

   function gsl_blas_dsyrk
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : double;
      A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      beta : double;
      C : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_blas.h:431
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dsyrk";

   function gsl_blas_dsyr2k
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : double;
      A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      B : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      beta : double;
      C : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_blas.h:438
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dsyr2k";

   function gsl_blas_dtrmm
     (Side : gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      alpha : double;
      A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      B : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_blas.h:446
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dtrmm";

   function gsl_blas_dtrsm
     (Side : gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      alpha : double;
      A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      B : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_blas.h:453
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_dtrsm";

   function gsl_blas_cgemm
     (TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      TransB : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : gsl_gsl_complex_h.gsl_complex_float;
      A : access constant gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      B : access constant gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      beta : gsl_gsl_complex_h.gsl_complex_float;
      C : access gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:460
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cgemm";

   function gsl_blas_csymm
     (Side : gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : gsl_gsl_complex_h.gsl_complex_float;
      A : access constant gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      B : access constant gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      beta : gsl_gsl_complex_h.gsl_complex_float;
      C : access gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:468
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_csymm";

   function gsl_blas_csyrk
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : gsl_gsl_complex_h.gsl_complex_float;
      A : access constant gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      beta : gsl_gsl_complex_h.gsl_complex_float;
      C : access gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:476
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_csyrk";

   function gsl_blas_csyr2k
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : gsl_gsl_complex_h.gsl_complex_float;
      A : access constant gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      B : access constant gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      beta : gsl_gsl_complex_h.gsl_complex_float;
      C : access gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:483
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_csyr2k";

   function gsl_blas_ctrmm
     (Side : gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      alpha : gsl_gsl_complex_h.gsl_complex_float;
      A : access constant gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      B : access gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:491
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ctrmm";

   function gsl_blas_ctrsm
     (Side : gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      alpha : gsl_gsl_complex_h.gsl_complex_float;
      A : access constant gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      B : access gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:498
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ctrsm";

   function gsl_blas_zgemm
     (TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      TransB : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : gsl_gsl_complex_h.gsl_complex;
      A : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      B : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      beta : gsl_gsl_complex_h.gsl_complex;
      C : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:505
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zgemm";

   function gsl_blas_zsymm
     (Side : gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : gsl_gsl_complex_h.gsl_complex;
      A : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      B : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      beta : gsl_gsl_complex_h.gsl_complex;
      C : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:513
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zsymm";

   function gsl_blas_zsyrk
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : gsl_gsl_complex_h.gsl_complex;
      A : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      beta : gsl_gsl_complex_h.gsl_complex;
      C : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:521
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zsyrk";

   function gsl_blas_zsyr2k
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : gsl_gsl_complex_h.gsl_complex;
      A : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      B : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      beta : gsl_gsl_complex_h.gsl_complex;
      C : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:528
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zsyr2k";

   function gsl_blas_ztrmm
     (Side : gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      alpha : gsl_gsl_complex_h.gsl_complex;
      A : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      B : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:536
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ztrmm";

   function gsl_blas_ztrsm
     (Side : gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      TransA : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      alpha : gsl_gsl_complex_h.gsl_complex;
      A : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      B : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:543
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_ztrsm";

   function gsl_blas_chemm
     (Side : gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : gsl_gsl_complex_h.gsl_complex_float;
      A : access constant gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      B : access constant gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      beta : gsl_gsl_complex_h.gsl_complex_float;
      C : access gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:553
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_chemm";

   function gsl_blas_cherk
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : float;
      A : access constant gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      beta : float;
      C : access gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:561
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cherk";

   function gsl_blas_cher2k
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : gsl_gsl_complex_h.gsl_complex_float;
      A : access constant gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      B : access constant gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float;
      beta : float;
      C : access gsl_gsl_matrix_complex_float_h.gsl_matrix_complex_float) return int  -- /usr/include/gsl/gsl_blas.h:568
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_cher2k";

   function gsl_blas_zhemm
     (Side : gsl_gsl_blas_types_h.CBLAS_SIDE_t;
      Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      alpha : gsl_gsl_complex_h.gsl_complex;
      A : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      B : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      beta : gsl_gsl_complex_h.gsl_complex;
      C : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:576
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zhemm";

   function gsl_blas_zherk
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : double;
      A : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      beta : double;
      C : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:584
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zherk";

   function gsl_blas_zher2k
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Trans : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
      alpha : gsl_gsl_complex_h.gsl_complex;
      A : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      B : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      beta : double;
      C : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_blas.h:591
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_blas_zher2k";

end gsl_gsl_blas_h;
