pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with gsl_gsl_matrix_double_h;
limited with gsl_gsl_vector_double_h;
limited with gsl_gsl_matrix_complex_double_h;
limited with gsl_gsl_vector_complex_double_h;
limited with gsl_gsl_complex_h;

package gsl_gsl_eigen_h is

   --  skipped anonymous struct anon_anon_109

   type gsl_eigen_symm_workspace is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:39
      d : access double;  -- /usr/include/gsl/gsl_eigen.h:40
      sd : access double;  -- /usr/include/gsl/gsl_eigen.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_eigen.h:42

   function gsl_eigen_symm_alloc (n : stddef_h.size_t) return access gsl_eigen_symm_workspace  -- /usr/include/gsl/gsl_eigen.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_symm_alloc";

   procedure gsl_eigen_symm_free (w : access gsl_eigen_symm_workspace)  -- /usr/include/gsl/gsl_eigen.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_symm_free";

   function gsl_eigen_symm
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      eval : access gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_eigen_symm_workspace) return int  -- /usr/include/gsl/gsl_eigen.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_symm";

   --  skipped anonymous struct anon_anon_110

   type gsl_eigen_symmv_workspace is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:49
      d : access double;  -- /usr/include/gsl/gsl_eigen.h:50
      sd : access double;  -- /usr/include/gsl/gsl_eigen.h:51
      gc : access double;  -- /usr/include/gsl/gsl_eigen.h:52
      gs : access double;  -- /usr/include/gsl/gsl_eigen.h:53
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_eigen.h:54

   function gsl_eigen_symmv_alloc (n : stddef_h.size_t) return access gsl_eigen_symmv_workspace  -- /usr/include/gsl/gsl_eigen.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_symmv_alloc";

   procedure gsl_eigen_symmv_free (w : access gsl_eigen_symmv_workspace)  -- /usr/include/gsl/gsl_eigen.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_symmv_free";

   function gsl_eigen_symmv
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      eval : access gsl_gsl_vector_double_h.gsl_vector;
      evec : access gsl_gsl_matrix_double_h.gsl_matrix;
      w : access gsl_eigen_symmv_workspace) return int  -- /usr/include/gsl/gsl_eigen.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_symmv";

   --  skipped anonymous struct anon_anon_111

   type gsl_eigen_herm_workspace is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:61
      d : access double;  -- /usr/include/gsl/gsl_eigen.h:62
      sd : access double;  -- /usr/include/gsl/gsl_eigen.h:63
      tau : access double;  -- /usr/include/gsl/gsl_eigen.h:64
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_eigen.h:65

   function gsl_eigen_herm_alloc (n : stddef_h.size_t) return access gsl_eigen_herm_workspace  -- /usr/include/gsl/gsl_eigen.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_herm_alloc";

   procedure gsl_eigen_herm_free (w : access gsl_eigen_herm_workspace)  -- /usr/include/gsl/gsl_eigen.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_herm_free";

   function gsl_eigen_herm
     (A : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      eval : access gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_eigen_herm_workspace) return int  -- /usr/include/gsl/gsl_eigen.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_herm";

   --  skipped anonymous struct anon_anon_112

   type gsl_eigen_hermv_workspace is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:73
      d : access double;  -- /usr/include/gsl/gsl_eigen.h:74
      sd : access double;  -- /usr/include/gsl/gsl_eigen.h:75
      tau : access double;  -- /usr/include/gsl/gsl_eigen.h:76
      gc : access double;  -- /usr/include/gsl/gsl_eigen.h:77
      gs : access double;  -- /usr/include/gsl/gsl_eigen.h:78
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_eigen.h:79

   function gsl_eigen_hermv_alloc (n : stddef_h.size_t) return access gsl_eigen_hermv_workspace  -- /usr/include/gsl/gsl_eigen.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_hermv_alloc";

   procedure gsl_eigen_hermv_free (w : access gsl_eigen_hermv_workspace)  -- /usr/include/gsl/gsl_eigen.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_hermv_free";

   function gsl_eigen_hermv
     (A : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      eval : access gsl_gsl_vector_double_h.gsl_vector;
      evec : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      w : access gsl_eigen_hermv_workspace) return int  -- /usr/include/gsl/gsl_eigen.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_hermv";

   --  skipped anonymous struct anon_anon_113

   type gsl_eigen_francis_workspace is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:88
      max_iterations : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:89
      n_iter : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:90
      n_evals : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:91
      compute_t : aliased int;  -- /usr/include/gsl/gsl_eigen.h:93
      H : access gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_eigen.h:95
      Z : access gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_eigen.h:96
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_eigen.h:97

   function gsl_eigen_francis_alloc return access gsl_eigen_francis_workspace  -- /usr/include/gsl/gsl_eigen.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_francis_alloc";

   procedure gsl_eigen_francis_free (w : access gsl_eigen_francis_workspace)  -- /usr/include/gsl/gsl_eigen.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_francis_free";

   procedure gsl_eigen_francis_T (compute_t : int; w : access gsl_eigen_francis_workspace)  -- /usr/include/gsl/gsl_eigen.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_francis_T";

   function gsl_eigen_francis
     (H : access gsl_gsl_matrix_double_h.gsl_matrix;
      eval : access gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      w : access gsl_eigen_francis_workspace) return int  -- /usr/include/gsl/gsl_eigen.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_francis";

   function gsl_eigen_francis_Z
     (H : access gsl_gsl_matrix_double_h.gsl_matrix;
      eval : access gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      Z : access gsl_gsl_matrix_double_h.gsl_matrix;
      w : access gsl_eigen_francis_workspace) return int  -- /usr/include/gsl/gsl_eigen.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_francis_Z";

   --  skipped anonymous struct anon_anon_114

   type gsl_eigen_nonsymm_workspace is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:110
      diag : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_eigen.h:111
      tau : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_eigen.h:112
      Z : access gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_eigen.h:113
      do_balance : aliased int;  -- /usr/include/gsl/gsl_eigen.h:114
      n_evals : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:115
      francis_workspace_p : access gsl_eigen_francis_workspace;  -- /usr/include/gsl/gsl_eigen.h:117
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_eigen.h:118

   function gsl_eigen_nonsymm_alloc (n : stddef_h.size_t) return access gsl_eigen_nonsymm_workspace  -- /usr/include/gsl/gsl_eigen.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_nonsymm_alloc";

   procedure gsl_eigen_nonsymm_free (w : access gsl_eigen_nonsymm_workspace)  -- /usr/include/gsl/gsl_eigen.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_nonsymm_free";

   procedure gsl_eigen_nonsymm_params
     (compute_t : int;
      balance : int;
      w : access gsl_eigen_nonsymm_workspace)  -- /usr/include/gsl/gsl_eigen.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_nonsymm_params";

   function gsl_eigen_nonsymm
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      eval : access gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      w : access gsl_eigen_nonsymm_workspace) return int  -- /usr/include/gsl/gsl_eigen.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_nonsymm";

   function gsl_eigen_nonsymm_Z
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      eval : access gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      Z : access gsl_gsl_matrix_double_h.gsl_matrix;
      w : access gsl_eigen_nonsymm_workspace) return int  -- /usr/include/gsl/gsl_eigen.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_nonsymm_Z";

   --  skipped anonymous struct anon_anon_115

   type gsl_eigen_nonsymmv_workspace is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:130
      work : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_eigen.h:131
      work2 : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_eigen.h:132
      work3 : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_eigen.h:133
      Z : access gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_eigen.h:135
      nonsymm_workspace_p : access gsl_eigen_nonsymm_workspace;  -- /usr/include/gsl/gsl_eigen.h:137
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_eigen.h:138

   function gsl_eigen_nonsymmv_alloc (n : stddef_h.size_t) return access gsl_eigen_nonsymmv_workspace  -- /usr/include/gsl/gsl_eigen.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_nonsymmv_alloc";

   procedure gsl_eigen_nonsymmv_free (w : access gsl_eigen_nonsymmv_workspace)  -- /usr/include/gsl/gsl_eigen.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_nonsymmv_free";

   procedure gsl_eigen_nonsymmv_params (balance : int; w : access gsl_eigen_nonsymmv_workspace)  -- /usr/include/gsl/gsl_eigen.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_nonsymmv_params";

   function gsl_eigen_nonsymmv
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      eval : access gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      evec : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      w : access gsl_eigen_nonsymmv_workspace) return int  -- /usr/include/gsl/gsl_eigen.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_nonsymmv";

   function gsl_eigen_nonsymmv_Z
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      eval : access gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      evec : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      Z : access gsl_gsl_matrix_double_h.gsl_matrix;
      w : access gsl_eigen_nonsymmv_workspace) return int  -- /usr/include/gsl/gsl_eigen.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_nonsymmv_Z";

   --  skipped anonymous struct anon_anon_116

   type gsl_eigen_gensymm_workspace is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:152
      symm_workspace_p : access gsl_eigen_symm_workspace;  -- /usr/include/gsl/gsl_eigen.h:153
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_eigen.h:154

   function gsl_eigen_gensymm_alloc (n : stddef_h.size_t) return access gsl_eigen_gensymm_workspace  -- /usr/include/gsl/gsl_eigen.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_gensymm_alloc";

   procedure gsl_eigen_gensymm_free (w : access gsl_eigen_gensymm_workspace)  -- /usr/include/gsl/gsl_eigen.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_gensymm_free";

   function gsl_eigen_gensymm
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      B : access gsl_gsl_matrix_double_h.gsl_matrix;
      eval : access gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_eigen_gensymm_workspace) return int  -- /usr/include/gsl/gsl_eigen.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_gensymm";

   function gsl_eigen_gensymm_standardize (A : access gsl_gsl_matrix_double_h.gsl_matrix; B : access constant gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_eigen.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_gensymm_standardize";

   --  skipped anonymous struct anon_anon_117

   type gsl_eigen_gensymmv_workspace is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:163
      symmv_workspace_p : access gsl_eigen_symmv_workspace;  -- /usr/include/gsl/gsl_eigen.h:164
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_eigen.h:165

   function gsl_eigen_gensymmv_alloc (n : stddef_h.size_t) return access gsl_eigen_gensymmv_workspace  -- /usr/include/gsl/gsl_eigen.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_gensymmv_alloc";

   procedure gsl_eigen_gensymmv_free (w : access gsl_eigen_gensymmv_workspace)  -- /usr/include/gsl/gsl_eigen.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_gensymmv_free";

   function gsl_eigen_gensymmv
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      B : access gsl_gsl_matrix_double_h.gsl_matrix;
      eval : access gsl_gsl_vector_double_h.gsl_vector;
      evec : access gsl_gsl_matrix_double_h.gsl_matrix;
      w : access gsl_eigen_gensymmv_workspace) return int  -- /usr/include/gsl/gsl_eigen.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_gensymmv";

   --  skipped anonymous struct anon_anon_118

   type gsl_eigen_genherm_workspace is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:174
      herm_workspace_p : access gsl_eigen_herm_workspace;  -- /usr/include/gsl/gsl_eigen.h:175
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_eigen.h:176

   function gsl_eigen_genherm_alloc (n : stddef_h.size_t) return access gsl_eigen_genherm_workspace  -- /usr/include/gsl/gsl_eigen.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_genherm_alloc";

   procedure gsl_eigen_genherm_free (w : access gsl_eigen_genherm_workspace)  -- /usr/include/gsl/gsl_eigen.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_genherm_free";

   function gsl_eigen_genherm
     (A : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      B : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      eval : access gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_eigen_genherm_workspace) return int  -- /usr/include/gsl/gsl_eigen.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_genherm";

   function gsl_eigen_genherm_standardize (A : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex; B : access constant gsl_gsl_matrix_complex_double_h.gsl_matrix_complex) return int  -- /usr/include/gsl/gsl_eigen.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_genherm_standardize";

   --  skipped anonymous struct anon_anon_119

   type gsl_eigen_genhermv_workspace is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:186
      hermv_workspace_p : access gsl_eigen_hermv_workspace;  -- /usr/include/gsl/gsl_eigen.h:187
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_eigen.h:188

   function gsl_eigen_genhermv_alloc (n : stddef_h.size_t) return access gsl_eigen_genhermv_workspace  -- /usr/include/gsl/gsl_eigen.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_genhermv_alloc";

   procedure gsl_eigen_genhermv_free (w : access gsl_eigen_genhermv_workspace)  -- /usr/include/gsl/gsl_eigen.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_genhermv_free";

   function gsl_eigen_genhermv
     (A : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      B : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      eval : access gsl_gsl_vector_double_h.gsl_vector;
      evec : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      w : access gsl_eigen_genhermv_workspace) return int  -- /usr/include/gsl/gsl_eigen.h:192
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_genhermv";

   --  skipped anonymous struct anon_anon_120

   type gsl_eigen_gen_workspace is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:197
      work : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_eigen.h:198
      n_evals : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:200
      max_iterations : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:201
      n_iter : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:202
      eshift : aliased double;  -- /usr/include/gsl/gsl_eigen.h:203
      needtop : aliased int;  -- /usr/include/gsl/gsl_eigen.h:205
      atol : aliased double;  -- /usr/include/gsl/gsl_eigen.h:207
      btol : aliased double;  -- /usr/include/gsl/gsl_eigen.h:208
      ascale : aliased double;  -- /usr/include/gsl/gsl_eigen.h:210
      bscale : aliased double;  -- /usr/include/gsl/gsl_eigen.h:211
      H : access gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_eigen.h:213
      R : access gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_eigen.h:214
      compute_s : aliased int;  -- /usr/include/gsl/gsl_eigen.h:216
      compute_t : aliased int;  -- /usr/include/gsl/gsl_eigen.h:217
      Q : access gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_eigen.h:219
      Z : access gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_eigen.h:220
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_eigen.h:221

   function gsl_eigen_gen_alloc (n : stddef_h.size_t) return access gsl_eigen_gen_workspace  -- /usr/include/gsl/gsl_eigen.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_gen_alloc";

   procedure gsl_eigen_gen_free (w : access gsl_eigen_gen_workspace)  -- /usr/include/gsl/gsl_eigen.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_gen_free";

   procedure gsl_eigen_gen_params
     (compute_s : int;
      compute_t : int;
      balance : int;
      w : access gsl_eigen_gen_workspace)  -- /usr/include/gsl/gsl_eigen.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_gen_params";

   function gsl_eigen_gen
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      B : access gsl_gsl_matrix_double_h.gsl_matrix;
      alpha : access gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      beta : access gsl_gsl_vector_double_h.gsl_vector;
      w : access gsl_eigen_gen_workspace) return int  -- /usr/include/gsl/gsl_eigen.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_gen";

   function gsl_eigen_gen_QZ
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      B : access gsl_gsl_matrix_double_h.gsl_matrix;
      alpha : access gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      beta : access gsl_gsl_vector_double_h.gsl_vector;
      Q : access gsl_gsl_matrix_double_h.gsl_matrix;
      Z : access gsl_gsl_matrix_double_h.gsl_matrix;
      w : access gsl_eigen_gen_workspace) return int  -- /usr/include/gsl/gsl_eigen.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_gen_QZ";

   --  skipped anonymous struct anon_anon_121

   type gsl_eigen_genv_workspace is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_eigen.h:236
      work1 : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_eigen.h:238
      work2 : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_eigen.h:239
      work3 : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_eigen.h:240
      work4 : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_eigen.h:241
      work5 : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_eigen.h:242
      work6 : access gsl_gsl_vector_double_h.gsl_vector;  -- /usr/include/gsl/gsl_eigen.h:243
      Q : access gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_eigen.h:245
      Z : access gsl_gsl_matrix_double_h.gsl_matrix;  -- /usr/include/gsl/gsl_eigen.h:246
      gen_workspace_p : access gsl_eigen_gen_workspace;  -- /usr/include/gsl/gsl_eigen.h:248
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_eigen.h:249

   function gsl_eigen_genv_alloc (n : stddef_h.size_t) return access gsl_eigen_genv_workspace  -- /usr/include/gsl/gsl_eigen.h:251
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_genv_alloc";

   procedure gsl_eigen_genv_free (w : access gsl_eigen_genv_workspace)  -- /usr/include/gsl/gsl_eigen.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_genv_free";

   function gsl_eigen_genv
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      B : access gsl_gsl_matrix_double_h.gsl_matrix;
      alpha : access gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      beta : access gsl_gsl_vector_double_h.gsl_vector;
      evec : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      w : access gsl_eigen_genv_workspace) return int  -- /usr/include/gsl/gsl_eigen.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_genv";

   function gsl_eigen_genv_QZ
     (A : access gsl_gsl_matrix_double_h.gsl_matrix;
      B : access gsl_gsl_matrix_double_h.gsl_matrix;
      alpha : access gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      beta : access gsl_gsl_vector_double_h.gsl_vector;
      evec : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      Q : access gsl_gsl_matrix_double_h.gsl_matrix;
      Z : access gsl_gsl_matrix_double_h.gsl_matrix;
      w : access gsl_eigen_genv_workspace) return int  -- /usr/include/gsl/gsl_eigen.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_genv_QZ";

   type gsl_eigen_sort_t is 
     (GSL_EIGEN_SORT_VAL_ASC,
      GSL_EIGEN_SORT_VAL_DESC,
      GSL_EIGEN_SORT_ABS_ASC,
      GSL_EIGEN_SORT_ABS_DESC)
   with Convention => C;  -- /usr/include/gsl/gsl_eigen.h:271

   function gsl_eigen_symmv_sort
     (eval : access gsl_gsl_vector_double_h.gsl_vector;
      evec : access gsl_gsl_matrix_double_h.gsl_matrix;
      sort_type : gsl_eigen_sort_t) return int  -- /usr/include/gsl/gsl_eigen.h:280
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_symmv_sort";

   function gsl_eigen_hermv_sort
     (eval : access gsl_gsl_vector_double_h.gsl_vector;
      evec : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      sort_type : gsl_eigen_sort_t) return int  -- /usr/include/gsl/gsl_eigen.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_hermv_sort";

   function gsl_eigen_nonsymmv_sort
     (eval : access gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      evec : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      sort_type : gsl_eigen_sort_t) return int  -- /usr/include/gsl/gsl_eigen.h:286
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_nonsymmv_sort";

   function gsl_eigen_gensymmv_sort
     (eval : access gsl_gsl_vector_double_h.gsl_vector;
      evec : access gsl_gsl_matrix_double_h.gsl_matrix;
      sort_type : gsl_eigen_sort_t) return int  -- /usr/include/gsl/gsl_eigen.h:290
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_gensymmv_sort";

   function gsl_eigen_genhermv_sort
     (eval : access gsl_gsl_vector_double_h.gsl_vector;
      evec : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      sort_type : gsl_eigen_sort_t) return int  -- /usr/include/gsl/gsl_eigen.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_genhermv_sort";

   function gsl_eigen_genv_sort
     (alpha : access gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      beta : access gsl_gsl_vector_double_h.gsl_vector;
      evec : access gsl_gsl_matrix_complex_double_h.gsl_matrix_complex;
      sort_type : gsl_eigen_sort_t) return int  -- /usr/include/gsl/gsl_eigen.h:296
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_genv_sort";

   function gsl_schur_gen_eigvals
     (A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      B : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      wr1 : access double;
      wr2 : access double;
      wi : access double;
      scale1 : access double;
      scale2 : access double) return int  -- /usr/include/gsl/gsl_eigen.h:302
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_schur_gen_eigvals";

   function gsl_schur_solve_equation
     (ca : double;
      A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      z : double;
      d1 : double;
      d2 : double;
      b : access constant gsl_gsl_vector_double_h.gsl_vector;
      x : access gsl_gsl_vector_double_h.gsl_vector;
      s : access double;
      xnorm : access double;
      smin : double) return int  -- /usr/include/gsl/gsl_eigen.h:306
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_schur_solve_equation";

   function gsl_schur_solve_equation_z
     (ca : double;
      A : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      z : access gsl_gsl_complex_h.gsl_complex;
      d1 : double;
      d2 : double;
      b : access constant gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      x : access gsl_gsl_vector_complex_double_h.gsl_vector_complex;
      s : access double;
      xnorm : access double;
      smin : double) return int  -- /usr/include/gsl/gsl_eigen.h:311
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_schur_solve_equation_z";

   function gsl_eigen_jacobi
     (matrix : access gsl_gsl_matrix_double_h.gsl_matrix;
      eval : access gsl_gsl_vector_double_h.gsl_vector;
      evec : access gsl_gsl_matrix_double_h.gsl_matrix;
      max_rot : unsigned;
      nrot : access unsigned) return int  -- /usr/include/gsl/gsl_eigen.h:327
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_jacobi";

   function gsl_eigen_invert_jacobi
     (matrix : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      ainv : access gsl_gsl_matrix_double_h.gsl_matrix;
      max_rot : unsigned) return int  -- /usr/include/gsl/gsl_eigen.h:339
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_eigen_invert_jacobi";

end gsl_gsl_eigen_h;
