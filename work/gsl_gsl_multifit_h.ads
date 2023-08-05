pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with gsl_gsl_matrix_double_h;
limited with gsl_gsl_vector_double_h;
with Interfaces.C.Strings;

package gsl_gsl_multifit_h is

   --  skipped anonymous struct anon_anon_157

   type gsl_multifit_linear_workspace is record
      nmax : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multifit.h:44
      pmax : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multifit.h:45
      n : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multifit.h:46
      p : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multifit.h:47
      A : access gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_multifit.h:48
      Q : access gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_multifit.h:49
      QSI : access gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_multifit.h:50
      S : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:51
      t : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:52
      xt : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:53
      D : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:54
      rcond : aliased double;  -- /usr/include/gsl/gsl_multifit.h:55
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit.h:57

   function gsl_multifit_linear_alloc (n : stddef_h.size_t; p : stddef_h.size_t) return access gsl_multifit_linear_workspace  -- /usr/include/gsl/gsl_multifit.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_alloc";

   procedure gsl_multifit_linear_free (w : access gsl_multifit_linear_workspace)  -- /usr/include/gsl/gsl_multifit.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_free";

   function gsl_multifit_linear
     (X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      c : access gsl_gsl_vector_double_h.gsl_vector;
      cov : access gsl_gsl_matrix_double_h.gsl_matrix;
      chisq : access double;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear";

   function gsl_multifit_linear_tsvd
     (X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      tol : double;
      c : access gsl_gsl_vector_double_h.gsl_vector;
      cov : access gsl_gsl_matrix_double_h.gsl_matrix;
      chisq : access double;
      rank : access stddef_h.size_t;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_tsvd";

   function gsl_multifit_linear_svd (X : access constant gsl_gsl_matrix_double_h.gsl_matrix; work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_svd";

   function gsl_multifit_linear_bsvd (X : access constant gsl_gsl_matrix_double_h.gsl_matrix; work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_bsvd";

   function gsl_multifit_linear_rank (tol : double; work : access constant gsl_multifit_linear_workspace) return stddef_h.size_t  -- /usr/include/gsl/gsl_multifit.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_rank";

   function gsl_multifit_linear_solve
     (lambda : double;
      X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      c : access gsl_gsl_vector_double_h.gsl_vector;
      rnorm : access double;
      snorm : access double;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_solve";

   function gsl_multifit_linear_applyW
     (X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant gsl_gsl_vector_double_h.gsl_vector;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      WX : access gsl_gsl_matrix_double_h.gsl_matrix;
      Wy : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_applyW";

   function gsl_multifit_linear_stdform1
     (L : access constant gsl_gsl_vector_double_h.gsl_vector;
      X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      Xs : access gsl_gsl_matrix_double_h.gsl_matrix;
      ys : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_stdform1";

   function gsl_multifit_linear_wstdform1
     (L : access constant gsl_gsl_vector_double_h.gsl_vector;
      X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant gsl_gsl_vector_double_h.gsl_vector;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      Xs : access gsl_gsl_matrix_double_h.gsl_matrix;
      ys : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_wstdform1";

   function gsl_multifit_linear_L_decomp (L : access gsl_gsl_matrix_double_h.gsl_matrix; tau : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_L_decomp";

   function gsl_multifit_linear_stdform2
     (LQR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      Ltau : access constant gsl_gsl_vector_double_h.gsl_vector;
      X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      Xs : access gsl_gsl_matrix_double_h.gsl_matrix;
      ys : access gsl_gsl_vector_double_h.gsl_vector;
      M : access gsl_gsl_matrix_double_h.gsl_matrix;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_stdform2";

   function gsl_multifit_linear_wstdform2
     (LQR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      Ltau : access constant gsl_gsl_vector_double_h.gsl_vector;
      X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant gsl_gsl_vector_double_h.gsl_vector;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      Xs : access gsl_gsl_matrix_double_h.gsl_matrix;
      ys : access gsl_gsl_vector_double_h.gsl_vector;
      M : access gsl_gsl_matrix_double_h.gsl_matrix;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_wstdform2";

   function gsl_multifit_linear_genform1
     (L : access constant gsl_gsl_vector_double_h.gsl_vector;
      cs : access constant gsl_gsl_vector_double_h.gsl_vector;
      c : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_genform1";

   function gsl_multifit_linear_genform2
     (LQR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      Ltau : access constant gsl_gsl_vector_double_h.gsl_vector;
      X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      cs : access constant gsl_gsl_vector_double_h.gsl_vector;
      M : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      c : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_genform2";

   function gsl_multifit_linear_wgenform2
     (LQR : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      Ltau : access constant gsl_gsl_vector_double_h.gsl_vector;
      X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant gsl_gsl_vector_double_h.gsl_vector;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      cs : access constant gsl_gsl_vector_double_h.gsl_vector;
      M : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      c : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_wgenform2";

   function gsl_multifit_linear_lreg
     (smin : double;
      smax : double;
      reg_param : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_lreg";

   function gsl_multifit_linear_lcurve
     (y : access constant gsl_gsl_vector_double_h.gsl_vector;
      reg_param : access gsl_gsl_vector_double_h.gsl_vector;
      rho : access gsl_gsl_vector_double_h.gsl_vector;
      eta : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_lcurve";

   function gsl_multifit_linear_lcurvature
     (y : access constant gsl_gsl_vector_double_h.gsl_vector;
      reg_param : access constant gsl_gsl_vector_double_h.gsl_vector;
      rho : access constant gsl_gsl_vector_double_h.gsl_vector;
      eta : access constant gsl_gsl_vector_double_h.gsl_vector;
      kappa : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_lcurvature";

   function gsl_multifit_linear_lcorner
     (rho : access constant gsl_gsl_vector_double_h.gsl_vector;
      eta : access constant gsl_gsl_vector_double_h.gsl_vector;
      idx : access stddef_h.size_t) return int  -- /usr/include/gsl/gsl_multifit.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_lcorner";

   function gsl_multifit_linear_lcorner2
     (reg_param : access constant gsl_gsl_vector_double_h.gsl_vector;
      eta : access constant gsl_gsl_vector_double_h.gsl_vector;
      idx : access stddef_h.size_t) return int  -- /usr/include/gsl/gsl_multifit.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_lcorner2";

   function gsl_multifit_linear_Lk
     (p : stddef_h.size_t;
      k : stddef_h.size_t;
      L : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_multifit.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_Lk";

   function gsl_multifit_linear_Lsobolev
     (p : stddef_h.size_t;
      kmax : stddef_h.size_t;
      alpha : access constant gsl_gsl_vector_double_h.gsl_vector;
      L : access gsl_gsl_matrix_double_h.gsl_matrix;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_Lsobolev";

   function gsl_multifit_wlinear
     (X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant gsl_gsl_vector_double_h.gsl_vector;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      c : access gsl_gsl_vector_double_h.gsl_vector;
      cov : access gsl_gsl_matrix_double_h.gsl_matrix;
      chisq : access double;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_wlinear";

   function gsl_multifit_wlinear_tsvd
     (X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant gsl_gsl_vector_double_h.gsl_vector;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      tol : double;
      c : access gsl_gsl_vector_double_h.gsl_vector;
      cov : access gsl_gsl_matrix_double_h.gsl_matrix;
      chisq : access double;
      rank : access stddef_h.size_t;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_wlinear_tsvd";

   function gsl_multifit_wlinear_svd
     (X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant gsl_gsl_vector_double_h.gsl_vector;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      tol : double;
      rank : access stddef_h.size_t;
      c : access gsl_gsl_vector_double_h.gsl_vector;
      cov : access gsl_gsl_matrix_double_h.gsl_matrix;
      chisq : access double;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_wlinear_svd";

   function gsl_multifit_wlinear_usvd
     (X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      w : access constant gsl_gsl_vector_double_h.gsl_vector;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      tol : double;
      rank : access stddef_h.size_t;
      c : access gsl_gsl_vector_double_h.gsl_vector;
      cov : access gsl_gsl_matrix_double_h.gsl_matrix;
      chisq : access double;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_wlinear_usvd";

   function gsl_multifit_linear_est
     (x : access constant gsl_gsl_vector_double_h.gsl_vector;
      c : access constant gsl_gsl_vector_double_h.gsl_vector;
      cov : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      y : access double;
      y_err : access double) return int  -- /usr/include/gsl/gsl_multifit.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_est";

   function gsl_multifit_linear_rcond (w : access constant gsl_multifit_linear_workspace) return double  -- /usr/include/gsl/gsl_multifit.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_rcond";

   function gsl_multifit_linear_residuals
     (X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      c : access constant gsl_gsl_vector_double_h.gsl_vector;
      r : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_multifit.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_residuals";

   function gsl_multifit_linear_gcv_init
     (y : access constant gsl_gsl_vector_double_h.gsl_vector;
      reg_param : access gsl_gsl_vector_double_h.gsl_vector;
      UTy : access gsl_gsl_vector_double_h.gsl_vector;
      delta0 : access double;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:270
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_gcv_init";

   function gsl_multifit_linear_gcv_curve
     (reg_param : access constant gsl_gsl_vector_double_h.gsl_vector;
      UTy : access constant gsl_gsl_vector_double_h.gsl_vector;
      delta0 : double;
      G : access gsl_gsl_vector_double_h.gsl_vector;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:277
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_gcv_curve";

   function gsl_multifit_linear_gcv_min
     (reg_param : access constant gsl_gsl_vector_double_h.gsl_vector;
      UTy : access constant gsl_gsl_vector_double_h.gsl_vector;
      G : access constant gsl_gsl_vector_double_h.gsl_vector;
      delta0 : double;
      lambda : access double;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:284
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_gcv_min";

   function gsl_multifit_linear_gcv_calc
     (lambda : double;
      UTy : access constant gsl_gsl_vector_double_h.gsl_vector;
      delta0 : double;
      work : access gsl_multifit_linear_workspace) return double  -- /usr/include/gsl/gsl_multifit.h:292
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_gcv_calc";

   function gsl_multifit_linear_gcv
     (y : access constant gsl_gsl_vector_double_h.gsl_vector;
      reg_param : access gsl_gsl_vector_double_h.gsl_vector;
      G : access gsl_gsl_vector_double_h.gsl_vector;
      lambda : access double;
      G_lambda : access double;
      work : access gsl_multifit_linear_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:298
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_linear_gcv";

   --  skipped anonymous struct anon_anon_158

   type gsl_multifit_robust_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_multifit.h:307
      wfun : access function (arg1 : access constant gsl_gsl_vector_double_h.gsl_vector; arg2 : access gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multifit.h:308
      psi_deriv : access function (arg1 : access constant gsl_gsl_vector_double_h.gsl_vector; arg2 : access gsl_gsl_vector_double_h.gsl_vector) return int;  -- /usr/include/gsl/gsl_multifit.h:309
      tuning_default : aliased double;  -- /usr/include/gsl/gsl_multifit.h:310
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit.h:311

   --  skipped anonymous struct anon_anon_159

   type gsl_multifit_robust_stats is record
      sigma_ols : aliased double;  -- /usr/include/gsl/gsl_multifit.h:315
      sigma_mad : aliased double;  -- /usr/include/gsl/gsl_multifit.h:316
      sigma_rob : aliased double;  -- /usr/include/gsl/gsl_multifit.h:317
      sigma : aliased double;  -- /usr/include/gsl/gsl_multifit.h:318
      Rsq : aliased double;  -- /usr/include/gsl/gsl_multifit.h:319
      adj_Rsq : aliased double;  -- /usr/include/gsl/gsl_multifit.h:320
      rmse : aliased double;  -- /usr/include/gsl/gsl_multifit.h:321
      sse : aliased double;  -- /usr/include/gsl/gsl_multifit.h:322
      dof : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multifit.h:323
      numit : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multifit.h:324
      weights : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:325
      r : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:326
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit.h:327

   --  skipped anonymous struct anon_anon_160

   type gsl_multifit_robust_workspace is record
      n : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multifit.h:331
      p : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multifit.h:332
      numit : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multifit.h:333
      maxiter : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_multifit.h:334
      c_type : access constant gsl_multifit_robust_type;  -- /usr/include/gsl/gsl_multifit.h:335
      tune : aliased double;  -- /usr/include/gsl/gsl_multifit.h:336
      r : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:338
      weights : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:339
      c_prev : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:340
      resfac : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:341
      psi : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:343
      dpsi : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:344
      QSI : access gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_multifit.h:346
      D : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:347
      workn : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_multifit.h:349
      stats : aliased gsl_multifit_robust_stats;  -- /usr/include/gsl/gsl_multifit.h:351
      multifit_p : access gsl_multifit_linear_workspace;  -- /usr/include/gsl/gsl_multifit.h:353
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_multifit.h:354

   gsl_multifit_robust_default : access constant gsl_multifit_robust_type  -- /usr/include/gsl/gsl_multifit.h:357
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_default";

   gsl_multifit_robust_bisquare : access constant gsl_multifit_robust_type  -- /usr/include/gsl/gsl_multifit.h:358
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_bisquare";

   gsl_multifit_robust_cauchy : access constant gsl_multifit_robust_type  -- /usr/include/gsl/gsl_multifit.h:359
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_cauchy";

   gsl_multifit_robust_fair : access constant gsl_multifit_robust_type  -- /usr/include/gsl/gsl_multifit.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_fair";

   gsl_multifit_robust_huber : access constant gsl_multifit_robust_type  -- /usr/include/gsl/gsl_multifit.h:361
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_huber";

   gsl_multifit_robust_ols : access constant gsl_multifit_robust_type  -- /usr/include/gsl/gsl_multifit.h:362
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_ols";

   gsl_multifit_robust_welsch : access constant gsl_multifit_robust_type  -- /usr/include/gsl/gsl_multifit.h:363
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_welsch";

   function gsl_multifit_robust_alloc
     (T : access constant gsl_multifit_robust_type;
      n : stddef_h.size_t;
      p : stddef_h.size_t) return access gsl_multifit_robust_workspace  -- /usr/include/gsl/gsl_multifit.h:365
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_alloc";

   procedure gsl_multifit_robust_free (w : access gsl_multifit_robust_workspace)  -- /usr/include/gsl/gsl_multifit.h:367
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_free";

   function gsl_multifit_robust_tune (tune : double; w : access gsl_multifit_robust_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:368
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_tune";

   function gsl_multifit_robust_maxiter (maxiter : stddef_h.size_t; w : access gsl_multifit_robust_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:370
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_maxiter";

   function gsl_multifit_robust_name (w : access constant gsl_multifit_robust_workspace) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_multifit.h:372
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_name";

   function gsl_multifit_robust_statistics (w : access constant gsl_multifit_robust_workspace) return gsl_multifit_robust_stats  -- /usr/include/gsl/gsl_multifit.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_statistics";

   function gsl_multifit_robust_weights
     (r : access constant gsl_gsl_vector_double_h.gsl_vector;
      wts : access gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_multifit_robust_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:374
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_weights";

   function gsl_multifit_robust
     (X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      c : access gsl_gsl_vector_double_h.gsl_vector;
      cov : access gsl_gsl_matrix_double_h.gsl_matrix;
      w : access gsl_multifit_robust_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:376
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust";

   function gsl_multifit_robust_est
     (x : access constant gsl_gsl_vector_double_h.gsl_vector;
      c : access constant gsl_gsl_vector_double_h.gsl_vector;
      cov : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      y : access double;
      y_err : access double) return int  -- /usr/include/gsl/gsl_multifit.h:379
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_est";

   function gsl_multifit_robust_residuals
     (X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      y : access constant gsl_gsl_vector_double_h.gsl_vector;
      c : access constant gsl_gsl_vector_double_h.gsl_vector;
      r : access gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_multifit_robust_workspace) return int  -- /usr/include/gsl/gsl_multifit.h:381
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_multifit_robust_residuals";

end gsl_gsl_multifit_h;
