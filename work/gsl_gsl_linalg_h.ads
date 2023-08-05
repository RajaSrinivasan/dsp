pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_matrix_double_h;
with gsl_gsl_mode_h;
limited with gsl_gsl_vector_double_h;
limited with gsl_gsl_vector_complex_double_h;
with gsl_gsl_complex_h;
limited with gsl_gsl_matrix_complex_double_h;
with stddef_h;
limited with gsl_gsl_permutation_h;
limited with gsl_gsl_vector_uint_h;
with gsl_gsl_blas_types_h;
with System;

package gsl_gsl_linalg_h is

   type gsl_linalg_matrix_mod_t is 
     (GSL_LINALG_MOD_NONE,
      GSL_LINALG_MOD_TRANSPOSE,
      GSL_LINALG_MOD_CONJUGATE)
   with Convention => C;  -- /usr/include/gsl/gsl_linalg.h:50

   function gsl_linalg_matmult
     (A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      B : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      C : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_matmult";

   function gsl_linalg_matmult_mod
     (A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      modA : gsl_linalg_matrix_mod_t;
      B : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      modB : gsl_linalg_matrix_mod_t;
      C : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_matmult_mod";

   function gsl_linalg_exponential_ss
     (A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      eA : access gsl_gsl_matrix_double_h.gsl_matrix;
      mode : gsl_gsl_mode_h.gsl_mode_t) return int  -- /usr/include/gsl/gsl_linalg.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_exponential_ss";

   function gsl_linalg_householder_transform (v : access gsl_gsl_vector_double_h.gsl_vector) return double  -- /usr/include/gsl/gsl_linalg.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_householder_transform";

   function gsl_linalg_householder_transform2 (alpha : access double; v : access gsl_gsl_vector_double_h.gsl_vector) return double  -- /usr/include/gsl/gsl_linalg.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_householder_transform2";

   function gsl_linalg_complex_householder_transform (v : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_linalg.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_householder_transform";

   function gsl_linalg_householder_hm
     (tau : double;
      v : access constant gsl_gsl_vector_double_h.gsl_vector;
      A : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_householder_hm";

   function gsl_linalg_householder_mh
     (tau : double;
      v : access constant gsl_gsl_vector_double_h.gsl_vector;
      A : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_householder_mh";

   function gsl_linalg_householder_hv
     (tau : double;
      v : access constant gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_householder_hv";

   function gsl_linalg_householder_left
     (tau : double;
      v : access constant gsl_gsl_vector_double_h.gsl_vector;
      A : access gsl_gsl_matrix_double_h.gsl_matrix;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_householder_left";

   function gsl_linalg_householder_right
     (tau : double;
      v : access constant gsl_gsl_vector_double_h.gsl_vector;
      A : access gsl_gsl_matrix_double_h.gsl_matrix;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_householder_right";

   function gsl_linalg_householder_hm1 (tau : double; A : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_householder_hm1";

   function gsl_linalg_complex_householder_hm
     (tau : gsl_gsl_complex_h.gsl_complex;
      v : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      A : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_linalg.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_householder_hm";

   function gsl_linalg_complex_householder_mh
     (tau : gsl_gsl_complex_h.gsl_complex;
      v : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      A : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_linalg.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_householder_mh";

   function gsl_linalg_complex_householder_hv
     (tau : gsl_gsl_complex_h.gsl_complex;
      v : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      w : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_householder_hv";

   function gsl_linalg_complex_householder_left
     (tau : gsl_gsl_complex_h.gsl_complex;
      v : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      A : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      work : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_householder_left";

   function gsl_linalg_hessenberg_decomp (A : access gsl_gsl_matrix_double_h.gsl_matrix; tau : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_hessenberg_decomp";

   function gsl_linalg_hessenberg_unpack
     (H : access gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access gsl_gsl_vector_double_h.gsl_vector;
      U : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_hessenberg_unpack";

   function gsl_linalg_hessenberg_unpack_accum
     (H : access gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access gsl_gsl_vector_double_h.gsl_vector;
      U : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_hessenberg_unpack_accum";

   function gsl_linalg_hessenberg_set_zero (H : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_hessenberg_set_zero";

   function gsl_linalg_hessenberg_submatrix
     (M : access gsl_gsl_matrix_double_h.gsl_matrix;
      A : access gsl_gsl_matrix_double_h.gsl_matrix;
      top : stddef_h.size_t;
      tau : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_hessenberg_submatrix";

   function gsl_linalg_hesstri_decomp
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      B : access gsl_gsl_matrix_double_h.gsl_matrix;
      U : access gsl_gsl_matrix_double_h.gsl_matrix;
      V : access gsl_gsl_matrix_double_h.gsl_matrix;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_hesstri_decomp";

   function gsl_linalg_SV_decomp
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      V : access gsl_gsl_matrix_double_h.gsl_matrix;
      S : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_SV_decomp";

   function gsl_linalg_SV_decomp_mod
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      X : access gsl_gsl_matrix_double_h.gsl_matrix;
      V : access gsl_gsl_matrix_double_h.gsl_matrix;
      S : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_SV_decomp_mod";

   function gsl_linalg_SV_decomp_jacobi
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      Q : access gsl_gsl_matrix_double_h.gsl_matrix;
      S : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_SV_decomp_jacobi";

   function gsl_linalg_SV_solve
     (U : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      Q : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      S : access constant gsl_gsl_vector_double_h.gsl_vector;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_SV_solve";

   function gsl_linalg_SV_leverage (U : access constant gsl_gsl_matrix_double_h.gsl_matrix; h : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_SV_leverage";

   function gsl_linalg_LU_decomp
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      p : access gsl_gsl_permutation_h.gsl_permutation;
      signum : access int) return int  -- /usr/include/gsl/gsl_linalg.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_decomp";

   function gsl_linalg_LU_solve
     (LU : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:193
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_solve";

   function gsl_linalg_LU_svx
     (LU : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_svx";

   function gsl_linalg_LU_refine
     (A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      LU : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_refine";

   function gsl_linalg_LU_invert
     (LU : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      inverse : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_invert";

   function gsl_linalg_LU_invx (LU : access gsl_gsl_matrix_double_h.gsl_matrix; p : access constant gsl_gsl_permutation_h.gsl_permutation) return int  -- /usr/include/gsl/gsl_linalg.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_invx";

   function gsl_linalg_LU_det (LU : access gsl_gsl_matrix_double_h.gsl_matrix; signum : int) return double  -- /usr/include/gsl/gsl_linalg.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_det";

   function gsl_linalg_LU_lndet (LU : access gsl_gsl_matrix_double_h.gsl_matrix) return double  -- /usr/include/gsl/gsl_linalg.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_lndet";

   function gsl_linalg_LU_sgndet (lu : access gsl_gsl_matrix_double_h.gsl_matrix; signum : int) return int  -- /usr/include/gsl/gsl_linalg.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_sgndet";

   function gsl_linalg_LU_band_decomp
     (M : stddef_h.size_t;
      lb : stddef_h.size_t;
      ub : stddef_h.size_t;
      AB : access gsl_gsl_matrix_double_h.gsl_matrix;
      piv : access gsl_gsl_vector_uint_h.gsl_vector_uint) return int  -- /usr/include/gsl/gsl_linalg.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_band_decomp";

   function gsl_linalg_LU_band_solve
     (lb : stddef_h.size_t;
      ub : stddef_h.size_t;
      LUB : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      piv : access constant gsl_gsl_vector_uint_h.gsl_vector_uint;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_band_solve";

   function gsl_linalg_LU_band_svx
     (lb : stddef_h.size_t;
      ub : stddef_h.size_t;
      LUB : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      piv : access constant gsl_gsl_vector_uint_h.gsl_vector_uint;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_band_svx";

   function gsl_linalg_LU_band_unpack
     (M : stddef_h.size_t;
      lb : stddef_h.size_t;
      ub : stddef_h.size_t;
      LUB : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      piv : access constant gsl_gsl_vector_uint_h.gsl_vector_uint;
      L : access gsl_gsl_matrix_double_h.gsl_matrix;
      U : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LU_band_unpack";

   function gsl_linalg_complex_LU_decomp
     (A : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      p : access gsl_gsl_permutation_h.gsl_permutation;
      signum : access int) return int  -- /usr/include/gsl/gsl_linalg.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_LU_decomp";

   function gsl_linalg_complex_LU_solve
     (LU : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      b : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      x : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_LU_solve";

   function gsl_linalg_complex_LU_svx
     (LU : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      x : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:242
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_LU_svx";

   function gsl_linalg_complex_LU_refine
     (A : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      LU : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      b : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      x : access gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      work : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_LU_refine";

   function gsl_linalg_complex_LU_invert
     (LU : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      inverse : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_linalg.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_LU_invert";

   function gsl_linalg_complex_LU_invx (LU : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex; p : access constant gsl_gsl_permutation_h.gsl_permutation) return int  -- /usr/include/gsl/gsl_linalg.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_LU_invx";

   function gsl_linalg_complex_LU_det (LU : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex; signum : int) return gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_linalg.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_LU_det";

   function gsl_linalg_complex_LU_lndet (LU : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return double  -- /usr/include/gsl/gsl_linalg.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_LU_lndet";

   function gsl_linalg_complex_LU_sgndet (LU : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex; signum : int) return gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_linalg.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_LU_sgndet";

   function gsl_linalg_QR_decomp (A : access gsl_gsl_matrix_double_h.gsl_matrix; tau : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_decomp";

   function gsl_linalg_QR_decomp_old (A : access gsl_gsl_matrix_double_h.gsl_matrix; tau : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:270
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_decomp_old";

   function gsl_linalg_QR_decomp_r (A : access gsl_gsl_matrix_double_h.gsl_matrix; T : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:272
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_decomp_r";

   function gsl_linalg_QR_solve
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:274
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_solve";

   function gsl_linalg_QR_solve_r
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      T : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:276
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_solve_r";

   function gsl_linalg_QR_svx
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:278
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_svx";

   function gsl_linalg_QR_lssolve
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector;
      residual : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:280
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_lssolve";

   function gsl_linalg_QR_lssolve_r
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      T : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_lssolve_r";

   function gsl_linalg_QR_QRsolve
     (Q : access gsl_gsl_matrix_double_h.gsl_matrix;
      R : access gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:286
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_QRsolve";

   function gsl_linalg_QR_Rsolve
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_Rsolve";

   function gsl_linalg_QR_Rsvx (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix; x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:290
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_Rsvx";

   function gsl_linalg_QR_update
     (Q : access gsl_gsl_matrix_double_h.gsl_matrix;
      R : access gsl_gsl_matrix_double_h.gsl_matrix;
      w : access gsl_gsl_vector_double_h.gsl_vector;
      v : access constant gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:292
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_update";

   function gsl_linalg_QR_QTvec
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      v : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:294
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_QTvec";

   function gsl_linalg_QR_QTvec_r
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      T : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      b : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:296
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_QTvec_r";

   function gsl_linalg_QR_Qvec
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      v : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:298
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_Qvec";

   function gsl_linalg_QR_QTmat
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      A : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:300
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_QTmat";

   function gsl_linalg_QR_QTmat_r
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      T : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      B : access gsl_gsl_matrix_double_h.gsl_matrix;
      work : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:302
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_QTmat_r";

   function gsl_linalg_QR_matQ
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      A : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:304
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_matQ";

   function gsl_linalg_QR_unpack
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      Q : access gsl_gsl_matrix_double_h.gsl_matrix;
      R : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:306
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_unpack";

   function gsl_linalg_QR_unpack_r
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      T : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      Q : access gsl_gsl_matrix_double_h.gsl_matrix;
      R : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:308
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_unpack_r";

   function gsl_linalg_R_solve
     (R : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_R_solve";

   function gsl_linalg_R_svx (R : access constant gsl_gsl_matrix_double_h.gsl_matrix; x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:312
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_R_svx";

   function gsl_linalg_QR_rcond
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      rcond : access double;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:314
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_rcond";

   function gsl_linalg_complex_QR_decomp (A : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex; tau : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:318
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_QR_decomp";

   function gsl_linalg_complex_QR_decomp_r (A : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex; T : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_linalg.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_QR_decomp_r";

   function gsl_linalg_complex_QR_solve
     (QR : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      tau : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      b : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      x : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:322
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_QR_solve";

   function gsl_linalg_complex_QR_solve_r
     (QR : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      T : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      b : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      x : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_QR_solve_r";

   function gsl_linalg_complex_QR_svx
     (QR : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      tau : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      x : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:328
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_QR_svx";

   function gsl_linalg_complex_QR_lssolve
     (QR : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      tau : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      b : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      x : access gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      residual : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:330
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_QR_lssolve";

   function gsl_linalg_complex_QR_lssolve_r
     (QR : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      T : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      b : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      x : access gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      work : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:334
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_QR_lssolve_r";

   function gsl_linalg_complex_QR_QHvec
     (QR : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      tau : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      v : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:337
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_QR_QHvec";

   function gsl_linalg_complex_QR_QHvec_r
     (QR : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      T : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      b : access gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      work : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:339
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_QR_QHvec_r";

   function gsl_linalg_complex_QR_Qvec
     (QR : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      tau : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      v : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:342
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_QR_Qvec";

   function gsl_linalg_complex_QR_unpack
     (QR : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      tau : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      Q : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      R : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_linalg.h:344
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_QR_unpack";

   function gsl_linalg_complex_QR_unpack_r
     (QR : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      T : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      Q : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      R : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_linalg.h:347
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_QR_unpack_r";

   function gsl_linalg_QR_band_decomp_L2
     (M : stddef_h.size_t;
      p : stddef_h.size_t;
      q : stddef_h.size_t;
      AB : access gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:352
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_band_decomp_L2";

   function gsl_linalg_QR_band_unpack_L2
     (p : stddef_h.size_t;
      q : stddef_h.size_t;
      QRB : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      Q : access gsl_gsl_matrix_double_h.gsl_matrix;
      R : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:355
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_band_unpack_L2";

   function gsl_linalg_QRPT_decomp
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access gsl_gsl_vector_double_h.gsl_vector;
      p : access gsl_gsl_permutation_h.gsl_permutation;
      signum : access int;
      norm : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_decomp";

   function gsl_linalg_QRPT_decomp2
     (A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      q : access gsl_gsl_matrix_double_h.gsl_matrix;
      r : access gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access gsl_gsl_vector_double_h.gsl_vector;
      p : access gsl_gsl_permutation_h.gsl_permutation;
      signum : access int;
      norm : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_decomp2";

   function gsl_linalg_QRPT_solve
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_solve";

   function gsl_linalg_QRPT_lssolve
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector;
      residual : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:379
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_lssolve";

   function gsl_linalg_QRPT_lssolve2
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      rank : stddef_h.size_t;
      x : access gsl_gsl_vector_double_h.gsl_vector;
      residual : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:386
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_lssolve2";

   function gsl_linalg_QRPT_svx
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:394
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_svx";

   function gsl_linalg_QRPT_QRsolve
     (Q : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      R : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:399
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_QRsolve";

   function gsl_linalg_QRPT_Rsolve
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:405
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_Rsolve";

   function gsl_linalg_QRPT_Rsvx
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:410
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_Rsvx";

   function gsl_linalg_QRPT_update
     (Q : access gsl_gsl_matrix_double_h.gsl_matrix;
      R : access gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      u : access gsl_gsl_vector_double_h.gsl_vector;
      v : access constant gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:414
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_update";

   function gsl_linalg_QRPT_rank (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix; tol : double) return stddef_h.size_t  -- /usr/include/gsl/gsl_linalg.h:420
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_rank";

   function gsl_linalg_QRPT_rcond
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      rcond : access double;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:422
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QRPT_rcond";

   function gsl_linalg_QR_UD_decomp
     (U : access gsl_gsl_matrix_double_h.gsl_matrix;
      D : access constant gsl_gsl_vector_double_h.gsl_vector;
      Y : access gsl_gsl_matrix_double_h.gsl_matrix;
      T : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:426
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_UD_decomp";

   function gsl_linalg_QR_UD_lssolve
     (R : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      Y : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      T : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:428
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_UD_lssolve";

   function gsl_linalg_QR_UR_decomp
     (S : access gsl_gsl_matrix_double_h.gsl_matrix;
      A : access gsl_gsl_matrix_double_h.gsl_matrix;
      T : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:433
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_UR_decomp";

   function gsl_linalg_QR_UU_decomp
     (U : access gsl_gsl_matrix_double_h.gsl_matrix;
      S : access gsl_gsl_matrix_double_h.gsl_matrix;
      T : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:437
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_UU_decomp";

   function gsl_linalg_QR_UU_lssolve
     (R : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      Y : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      T : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:439
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_UU_lssolve";

   function gsl_linalg_QR_UU_QTvec
     (Y : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      T : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      b : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:442
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_UU_QTvec";

   function gsl_linalg_QR_UZ_decomp
     (S : access gsl_gsl_matrix_double_h.gsl_matrix;
      A : access gsl_gsl_matrix_double_h.gsl_matrix;
      T : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:446
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QR_UZ_decomp";

   function gsl_linalg_QL_decomp (A : access gsl_gsl_matrix_double_h.gsl_matrix; tau : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:450
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QL_decomp";

   function gsl_linalg_QL_unpack
     (QL : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      Q : access gsl_gsl_matrix_double_h.gsl_matrix;
      L : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:452
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_QL_unpack";

   function gsl_linalg_COD_decomp
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      tau_Q : access gsl_gsl_vector_double_h.gsl_vector;
      tau_Z : access gsl_gsl_vector_double_h.gsl_vector;
      p : access gsl_gsl_permutation_h.gsl_permutation;
      rank : access stddef_h.size_t;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:456
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_COD_decomp";

   function gsl_linalg_COD_decomp_e
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      tau_Q : access gsl_gsl_vector_double_h.gsl_vector;
      tau_Z : access gsl_gsl_vector_double_h.gsl_vector;
      p : access gsl_gsl_permutation_h.gsl_permutation;
      tol : double;
      rank : access stddef_h.size_t;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:459
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_COD_decomp_e";

   function gsl_linalg_COD_lssolve
     (QRZT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau_Q : access constant gsl_gsl_vector_double_h.gsl_vector;
      tau_Z : access constant gsl_gsl_vector_double_h.gsl_vector;
      perm : access constant gsl_gsl_permutation_h.gsl_permutation;
      rank : stddef_h.size_t;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector;
      residual : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:462
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_COD_lssolve";

   function gsl_linalg_COD_lssolve2
     (lambda : double;
      QRZT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau_Q : access constant gsl_gsl_vector_double_h.gsl_vector;
      tau_Z : access constant gsl_gsl_vector_double_h.gsl_vector;
      perm : access constant gsl_gsl_permutation_h.gsl_permutation;
      rank : stddef_h.size_t;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector;
      residual : access gsl_gsl_vector_double_h.gsl_vector;
      S : access gsl_gsl_matrix_double_h.gsl_matrix;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:467
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_COD_lssolve2";

   function gsl_linalg_COD_unpack
     (QRZT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau_Q : access constant gsl_gsl_vector_double_h.gsl_vector;
      tau_Z : access constant gsl_gsl_vector_double_h.gsl_vector;
      rank : stddef_h.size_t;
      Q : access gsl_gsl_matrix_double_h.gsl_matrix;
      R : access gsl_gsl_matrix_double_h.gsl_matrix;
      Z : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:471
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_COD_unpack";

   function gsl_linalg_COD_matZ
     (QRZT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau_Z : access constant gsl_gsl_vector_double_h.gsl_vector;
      rank : stddef_h.size_t;
      A : access gsl_gsl_matrix_double_h.gsl_matrix;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:475
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_COD_matZ";

   function gsl_linalg_LQ_decomp (A : access gsl_gsl_matrix_double_h.gsl_matrix; tau : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:480
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_decomp";

   function gsl_linalg_LQ_lssolve
     (LQ : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector;
      residual : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:482
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_lssolve";

   function gsl_linalg_LQ_QTvec
     (LQ : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      v : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:485
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_QTvec";

   function gsl_linalg_LQ_solve_T
     (LQ : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:487
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_solve_T";

   function gsl_linalg_LQ_svx_T
     (LQ : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:490
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_svx_T";

   function gsl_linalg_LQ_lssolve_T
     (LQ : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector;
      residual : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:493
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_lssolve_T";

   function gsl_linalg_LQ_Lsolve_T
     (LQ : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:497
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_Lsolve_T";

   function gsl_linalg_LQ_Lsvx_T (LQ : access constant gsl_gsl_matrix_double_h.gsl_matrix; x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:500
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_Lsvx_T";

   function gsl_linalg_L_solve_T
     (L : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:502
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_L_solve_T";

   function gsl_linalg_LQ_vecQ
     (LQ : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      v : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:505
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_vecQ";

   function gsl_linalg_LQ_vecQT
     (LQ : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      v : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:508
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_vecQT";

   function gsl_linalg_LQ_unpack
     (LQ : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      Q : access gsl_gsl_matrix_double_h.gsl_matrix;
      L : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:511
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_unpack";

   function gsl_linalg_LQ_update
     (Q : access gsl_gsl_matrix_double_h.gsl_matrix;
      R : access gsl_gsl_matrix_double_h.gsl_matrix;
      v : access constant gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:514
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_update";

   function gsl_linalg_LQ_LQsolve
     (Q : access gsl_gsl_matrix_double_h.gsl_matrix;
      L : access gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:516
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_LQ_LQsolve";

   function gsl_linalg_PTLQ_decomp
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access gsl_gsl_vector_double_h.gsl_vector;
      p : access gsl_gsl_permutation_h.gsl_permutation;
      signum : access int;
      norm : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:521
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_PTLQ_decomp";

   function gsl_linalg_PTLQ_decomp2
     (A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      q : access gsl_gsl_matrix_double_h.gsl_matrix;
      r : access gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access gsl_gsl_vector_double_h.gsl_vector;
      p : access gsl_gsl_permutation_h.gsl_permutation;
      signum : access int;
      norm : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:525
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_PTLQ_decomp2";

   function gsl_linalg_PTLQ_solve_T
     (QR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:530
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_PTLQ_solve_T";

   function gsl_linalg_PTLQ_svx_T
     (LQ : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:536
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_PTLQ_svx_T";

   function gsl_linalg_PTLQ_LQsolve_T
     (Q : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      L : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:541
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_PTLQ_LQsolve_T";

   function gsl_linalg_PTLQ_Lsolve_T
     (LQ : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:546
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_PTLQ_Lsolve_T";

   function gsl_linalg_PTLQ_Lsvx_T
     (LQ : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:551
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_PTLQ_Lsvx_T";

   function gsl_linalg_PTLQ_update
     (Q : access gsl_gsl_matrix_double_h.gsl_matrix;
      L : access gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      v : access constant gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:555
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_PTLQ_update";

   function gsl_linalg_cholesky_decomp (A : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:561
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_decomp";

   function gsl_linalg_cholesky_decomp1 (A : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:562
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_decomp1";

   function gsl_linalg_cholesky_solve
     (cholesky : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:564
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_solve";

   function gsl_linalg_cholesky_solve_mat
     (cholesky : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      B : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      X : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:567
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_solve_mat";

   function gsl_linalg_cholesky_svx (cholesky : access constant gsl_gsl_matrix_double_h.gsl_matrix; x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:571
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_svx";

   function gsl_linalg_cholesky_svx_mat (cholesky : access constant gsl_gsl_matrix_double_h.gsl_matrix; X : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:573
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_svx_mat";

   function gsl_linalg_cholesky_invert (cholesky : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:576
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_invert";

   function gsl_linalg_cholesky_decomp_unit (A : access gsl_gsl_matrix_double_h.gsl_matrix; D : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:584
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_decomp_unit";

   function gsl_linalg_cholesky_scale (A : access constant gsl_gsl_matrix_double_h.gsl_matrix; S : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:586
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_scale";

   function gsl_linalg_cholesky_scale_apply (A : access gsl_gsl_matrix_double_h.gsl_matrix; S : access constant gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:588
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_scale_apply";

   function gsl_linalg_cholesky_decomp2 (A : access gsl_gsl_matrix_double_h.gsl_matrix; S : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:590
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_decomp2";

   function gsl_linalg_cholesky_svx2
     (LLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      S : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:592
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_svx2";

   function gsl_linalg_cholesky_solve2
     (LLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      S : access constant gsl_gsl_vector_double_h.gsl_vector;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:596
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_solve2";

   function gsl_linalg_cholesky_rcond
     (LLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      rcond : access double;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:601
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_rcond";

   function gsl_linalg_complex_cholesky_decomp (A : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_linalg.h:606
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_cholesky_decomp";

   function gsl_linalg_complex_cholesky_solve
     (cholesky : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      b : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      x : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:608
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_cholesky_solve";

   function gsl_linalg_complex_cholesky_svx (cholesky : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex; x : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:612
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_cholesky_svx";

   function gsl_linalg_complex_cholesky_invert (cholesky : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_linalg.h:615
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_cholesky_invert";

   function gsl_linalg_pcholesky_decomp (A : access gsl_gsl_matrix_double_h.gsl_matrix; p : access gsl_gsl_permutation_h.gsl_permutation) return int  -- /usr/include/gsl/gsl_linalg.h:619
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_pcholesky_decomp";

   function gsl_linalg_pcholesky_solve
     (LDLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:621
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_pcholesky_solve";

   function gsl_linalg_pcholesky_svx
     (LDLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:626
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_pcholesky_svx";

   function gsl_linalg_pcholesky_decomp2
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      p : access gsl_gsl_permutation_h.gsl_permutation;
      S : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:630
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_pcholesky_decomp2";

   function gsl_linalg_pcholesky_solve2
     (LDLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      S : access constant gsl_gsl_vector_double_h.gsl_vector;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:633
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_pcholesky_solve2";

   function gsl_linalg_pcholesky_svx2
     (LDLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      S : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:639
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_pcholesky_svx2";

   function gsl_linalg_pcholesky_invert
     (LDLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      Ainv : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:644
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_pcholesky_invert";

   function gsl_linalg_pcholesky_rcond
     (LDLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      rcond : access double;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:647
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_pcholesky_rcond";

   function gsl_linalg_mcholesky_decomp
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      p : access gsl_gsl_permutation_h.gsl_permutation;
      E : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:652
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_mcholesky_decomp";

   function gsl_linalg_mcholesky_solve
     (LDLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:655
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_mcholesky_solve";

   function gsl_linalg_mcholesky_svx
     (LDLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:660
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_mcholesky_svx";

   function gsl_linalg_mcholesky_rcond
     (LDLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      rcond : access double;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:664
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_mcholesky_rcond";

   function gsl_linalg_mcholesky_invert
     (LDLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      p : access constant gsl_gsl_permutation_h.gsl_permutation;
      Ainv : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:667
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_mcholesky_invert";

   function gsl_linalg_cholesky_band_decomp (A : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:672
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_band_decomp";

   function gsl_linalg_cholesky_band_solve
     (LLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:674
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_band_solve";

   function gsl_linalg_cholesky_band_svx (LLT : access constant gsl_gsl_matrix_double_h.gsl_matrix; x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:677
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_band_svx";

   function gsl_linalg_cholesky_band_solvem
     (LLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      B : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      X : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:679
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_band_solvem";

   function gsl_linalg_cholesky_band_svxm (LLT : access constant gsl_gsl_matrix_double_h.gsl_matrix; X : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:682
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_band_svxm";

   function gsl_linalg_cholesky_band_invert (LLT : access constant gsl_gsl_matrix_double_h.gsl_matrix; Ainv : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:684
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_band_invert";

   function gsl_linalg_cholesky_band_unpack (LLT : access constant gsl_gsl_matrix_double_h.gsl_matrix; L : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:686
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_band_unpack";

   function gsl_linalg_cholesky_band_scale (A : access constant gsl_gsl_matrix_double_h.gsl_matrix; S : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:688
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_band_scale";

   function gsl_linalg_cholesky_band_scale_apply (A : access gsl_gsl_matrix_double_h.gsl_matrix; S : access constant gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:690
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_band_scale_apply";

   function gsl_linalg_cholesky_band_rcond
     (LLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      rcond : access double;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:692
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_cholesky_band_rcond";

   function gsl_linalg_ldlt_decomp (A : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:696
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_ldlt_decomp";

   function gsl_linalg_ldlt_solve
     (LDLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:698
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_ldlt_solve";

   function gsl_linalg_ldlt_svx (LDLT : access constant gsl_gsl_matrix_double_h.gsl_matrix; x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:700
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_ldlt_svx";

   function gsl_linalg_ldlt_rcond
     (LDLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      rcond : access double;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:702
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_ldlt_rcond";

   function gsl_linalg_ldlt_band_decomp (A : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:706
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_ldlt_band_decomp";

   function gsl_linalg_ldlt_band_solve
     (LDLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:708
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_ldlt_band_solve";

   function gsl_linalg_ldlt_band_svx (LDLT : access constant gsl_gsl_matrix_double_h.gsl_matrix; x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:710
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_ldlt_band_svx";

   function gsl_linalg_ldlt_band_unpack
     (LDLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      L : access gsl_gsl_matrix_double_h.gsl_matrix;
      D : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:712
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_ldlt_band_unpack";

   function gsl_linalg_ldlt_band_rcond
     (LDLT : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      rcond : access double;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:714
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_ldlt_band_rcond";

   function gsl_linalg_symmtd_decomp (A : access gsl_gsl_matrix_double_h.gsl_matrix; tau : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:718
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_symmtd_decomp";

   function gsl_linalg_symmtd_unpack
     (A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau : access constant gsl_gsl_vector_double_h.gsl_vector;
      Q : access gsl_gsl_matrix_double_h.gsl_matrix;
      diag : access gsl_gsl_vector_double_h.gsl_vector;
      subdiag : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:721
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_symmtd_unpack";

   function gsl_linalg_symmtd_unpack_T
     (A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      diag : access gsl_gsl_vector_double_h.gsl_vector;
      subdiag : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:727
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_symmtd_unpack_T";

   function gsl_linalg_hermtd_decomp (A : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex; tau : access gsl_gsl_vector_complex_double_h.gsl_vector_complex) return int  -- /usr/include/gsl/gsl_linalg.h:733
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_hermtd_decomp";

   function gsl_linalg_hermtd_unpack
     (A : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      tau : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      U : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      diag : access gsl_gsl_vector_double_h.gsl_vector;
      sudiag : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:736
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_hermtd_unpack";

   function gsl_linalg_hermtd_unpack_T
     (A : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      diag : access gsl_gsl_vector_double_h.gsl_vector;
      subdiag : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:742
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_hermtd_unpack_T";

   function gsl_linalg_HH_solve
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:751
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_HH_solve";

   function gsl_linalg_HH_svx (A : access gsl_gsl_matrix_double_h.gsl_matrix; x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:752
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_HH_svx";

   function gsl_linalg_solve_symm_tridiag
     (diag : access constant gsl_gsl_vector_double_h.gsl_vector;
      offdiag : access constant gsl_gsl_vector_double_h.gsl_vector;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:764
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_solve_symm_tridiag";

   function gsl_linalg_solve_tridiag
     (diag : access constant gsl_gsl_vector_double_h.gsl_vector;
      abovediag : access constant gsl_gsl_vector_double_h.gsl_vector;
      belowdiag : access constant gsl_gsl_vector_double_h.gsl_vector;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:779
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_solve_tridiag";

   function gsl_linalg_solve_symm_cyc_tridiag
     (diag : access constant gsl_gsl_vector_double_h.gsl_vector;
      offdiag : access constant gsl_gsl_vector_double_h.gsl_vector;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:797
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_solve_symm_cyc_tridiag";

   function gsl_linalg_solve_cyc_tridiag
     (diag : access constant gsl_gsl_vector_double_h.gsl_vector;
      abovediag : access constant gsl_gsl_vector_double_h.gsl_vector;
      belowdiag : access constant gsl_gsl_vector_double_h.gsl_vector;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:813
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_solve_cyc_tridiag";

   function gsl_linalg_bidiag_decomp
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      tau_U : access gsl_gsl_vector_double_h.gsl_vector;
      tau_V : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:822
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_bidiag_decomp";

   function gsl_linalg_bidiag_unpack
     (A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      tau_U : access constant gsl_gsl_vector_double_h.gsl_vector;
      U : access gsl_gsl_matrix_double_h.gsl_matrix;
      tau_V : access constant gsl_gsl_vector_double_h.gsl_vector;
      V : access gsl_gsl_matrix_double_h.gsl_matrix;
      diag : access gsl_gsl_vector_double_h.gsl_vector;
      superdiag : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:826
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_bidiag_unpack";

   function gsl_linalg_bidiag_unpack2
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      tau_U : access gsl_gsl_vector_double_h.gsl_vector;
      tau_V : access gsl_gsl_vector_double_h.gsl_vector;
      V : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:834
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_bidiag_unpack2";

   function gsl_linalg_bidiag_unpack_B
     (A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      diag : access gsl_gsl_vector_double_h.gsl_vector;
      superdiag : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:839
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_bidiag_unpack_B";

   function gsl_linalg_balance_matrix (A : access gsl_gsl_matrix_double_h.gsl_matrix; D : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:845
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_balance_matrix";

   function gsl_linalg_balance_accum (A : access gsl_gsl_matrix_double_h.gsl_matrix; D : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:846
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_balance_accum";

   function gsl_linalg_balance_columns (A : access gsl_gsl_matrix_double_h.gsl_matrix; D : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:847
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_balance_columns";

   function gsl_linalg_tri_rcond
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      rcond : access double;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:851
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_tri_rcond";

   function gsl_linalg_tri_upper_rcond
     (A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      rcond : access double;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:852
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_tri_upper_rcond";

   function gsl_linalg_tri_lower_rcond
     (A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      rcond : access double;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:853
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_tri_lower_rcond";

   function gsl_linalg_invnorm1
     (N : stddef_h.size_t;
      Ainvx : access function
        (arg1 : gsl_gsl_blas_types_h.CBLAS_TRANSPOSE_t;
         arg2 : access gsl_gsl_vector_double_h.gsl_vector;
         arg3 : System.Address) return int;
      params : System.Address;
      Ainvnorm : access double;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_linalg.h:854
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_invnorm1";

   function gsl_linalg_tri_upper_invert (T : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:860
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_tri_upper_invert";

   function gsl_linalg_tri_lower_invert (T : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:861
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_tri_lower_invert";

   function gsl_linalg_tri_upper_unit_invert (T : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:862
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_tri_upper_unit_invert";

   function gsl_linalg_tri_lower_unit_invert (T : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:863
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_tri_lower_unit_invert";

   function gsl_linalg_tri_invert
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      T : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:865
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_tri_invert";

   function gsl_linalg_complex_tri_invert
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      T : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_linalg.h:866
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_tri_invert";

   function gsl_linalg_tri_LTL (L : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:868
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_tri_LTL";

   function gsl_linalg_tri_UL (LU : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_linalg.h:869
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_tri_UL";

   function gsl_linalg_complex_tri_LHL (L : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_linalg.h:870
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_tri_LHL";

   function gsl_linalg_complex_tri_UL (LU : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_linalg.h:871
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_complex_tri_UL";

   procedure gsl_linalg_givens
     (a : double;
      b : double;
      c : access double;
      s : access double)  -- /usr/include/gsl/gsl_linalg.h:873
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_givens";

   procedure gsl_linalg_givens_gv
     (v : access gsl_gsl_vector_double_h.gsl_vector;
      i : stddef_h.size_t;
      j : stddef_h.size_t;
      c : double;
      s : double)  -- /usr/include/gsl/gsl_linalg.h:875
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_linalg_givens_gv";

end gsl_gsl_linalg_h;
