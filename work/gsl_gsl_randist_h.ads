pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_rng_h;
with stddef_h;
limited with gsl_gsl_vector_double_h;
limited with gsl_gsl_matrix_double_h;
with System;

package gsl_gsl_randist_h is

   function gsl_ran_bernoulli (r : access constant gsl_gsl_rng_h.gsl_rng; p : double) return unsigned  -- /usr/include/gsl/gsl_randist.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_bernoulli";

   function gsl_ran_bernoulli_pdf (k : unsigned; p : double) return double  -- /usr/include/gsl/gsl_randist.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_bernoulli_pdf";

   function gsl_ran_beta
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_randist.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_beta";

   function gsl_ran_beta_pdf
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_randist.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_beta_pdf";

   function gsl_ran_binomial
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      p : double;
      n : unsigned) return unsigned  -- /usr/include/gsl/gsl_randist.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_binomial";

   function gsl_ran_binomial_knuth
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      p : double;
      n : unsigned) return unsigned  -- /usr/include/gsl/gsl_randist.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_binomial_knuth";

   function gsl_ran_binomial_tpe
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      p : double;
      n : unsigned) return unsigned  -- /usr/include/gsl/gsl_randist.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_binomial_tpe";

   function gsl_ran_binomial_pdf
     (k : unsigned;
      p : double;
      n : unsigned) return double  -- /usr/include/gsl/gsl_randist.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_binomial_pdf";

   function gsl_ran_exponential (r : access constant gsl_gsl_rng_h.gsl_rng; mu : double) return double  -- /usr/include/gsl/gsl_randist.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_exponential";

   function gsl_ran_exponential_pdf (x : double; mu : double) return double  -- /usr/include/gsl/gsl_randist.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_exponential_pdf";

   function gsl_ran_exppow
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_randist.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_exppow";

   function gsl_ran_exppow_pdf
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_randist.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_exppow_pdf";

   function gsl_ran_cauchy (r : access constant gsl_gsl_rng_h.gsl_rng; a : double) return double  -- /usr/include/gsl/gsl_randist.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_cauchy";

   function gsl_ran_cauchy_pdf (x : double; a : double) return double  -- /usr/include/gsl/gsl_randist.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_cauchy_pdf";

   function gsl_ran_chisq (r : access constant gsl_gsl_rng_h.gsl_rng; nu : double) return double  -- /usr/include/gsl/gsl_randist.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_chisq";

   function gsl_ran_chisq_pdf (x : double; nu : double) return double  -- /usr/include/gsl/gsl_randist.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_chisq_pdf";

   procedure gsl_ran_dirichlet
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      K : stddef_h.size_t;
      alpha : access double;
      theta : access double)  -- /usr/include/gsl/gsl_randist.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_dirichlet";

   function gsl_ran_dirichlet_pdf
     (K : stddef_h.size_t;
      alpha : access double;
      theta : access double) return double  -- /usr/include/gsl/gsl_randist.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_dirichlet_pdf";

   function gsl_ran_dirichlet_lnpdf
     (K : stddef_h.size_t;
      alpha : access double;
      theta : access double) return double  -- /usr/include/gsl/gsl_randist.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_dirichlet_lnpdf";

   function gsl_ran_erlang
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      a : double;
      n : double) return double  -- /usr/include/gsl/gsl_randist.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_erlang";

   function gsl_ran_erlang_pdf
     (x : double;
      a : double;
      n : double) return double  -- /usr/include/gsl/gsl_randist.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_erlang_pdf";

   function gsl_ran_fdist
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      nu1 : double;
      nu2 : double) return double  -- /usr/include/gsl/gsl_randist.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_fdist";

   function gsl_ran_fdist_pdf
     (x : double;
      nu1 : double;
      nu2 : double) return double  -- /usr/include/gsl/gsl_randist.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_fdist_pdf";

   function gsl_ran_flat
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_randist.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_flat";

   function gsl_ran_flat_pdf
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_randist.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_flat_pdf";

   function gsl_ran_gamma
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_randist.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_gamma";

   function gsl_ran_gamma_int (r : access constant gsl_gsl_rng_h.gsl_rng; a : unsigned) return double  -- /usr/include/gsl/gsl_randist.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_gamma_int";

   function gsl_ran_gamma_pdf
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_randist.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_gamma_pdf";

   function gsl_ran_gamma_mt
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_randist.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_gamma_mt";

   function gsl_ran_gamma_knuth
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_randist.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_gamma_knuth";

   function gsl_ran_gaussian (r : access constant gsl_gsl_rng_h.gsl_rng; sigma : double) return double  -- /usr/include/gsl/gsl_randist.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_gaussian";

   function gsl_ran_gaussian_ratio_method (r : access constant gsl_gsl_rng_h.gsl_rng; sigma : double) return double  -- /usr/include/gsl/gsl_randist.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_gaussian_ratio_method";

   function gsl_ran_gaussian_ziggurat (r : access constant gsl_gsl_rng_h.gsl_rng; sigma : double) return double  -- /usr/include/gsl/gsl_randist.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_gaussian_ziggurat";

   function gsl_ran_gaussian_pdf (x : double; sigma : double) return double  -- /usr/include/gsl/gsl_randist.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_gaussian_pdf";

   function gsl_ran_ugaussian (r : access constant gsl_gsl_rng_h.gsl_rng) return double  -- /usr/include/gsl/gsl_randist.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_ugaussian";

   function gsl_ran_ugaussian_ratio_method (r : access constant gsl_gsl_rng_h.gsl_rng) return double  -- /usr/include/gsl/gsl_randist.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_ugaussian_ratio_method";

   function gsl_ran_ugaussian_pdf (x : double) return double  -- /usr/include/gsl/gsl_randist.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_ugaussian_pdf";

   function gsl_ran_gaussian_tail
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      a : double;
      sigma : double) return double  -- /usr/include/gsl/gsl_randist.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_gaussian_tail";

   function gsl_ran_gaussian_tail_pdf
     (x : double;
      a : double;
      sigma : double) return double  -- /usr/include/gsl/gsl_randist.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_gaussian_tail_pdf";

   function gsl_ran_ugaussian_tail (r : access constant gsl_gsl_rng_h.gsl_rng; a : double) return double  -- /usr/include/gsl/gsl_randist.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_ugaussian_tail";

   function gsl_ran_ugaussian_tail_pdf (x : double; a : double) return double  -- /usr/include/gsl/gsl_randist.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_ugaussian_tail_pdf";

   procedure gsl_ran_bivariate_gaussian
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      sigma_x : double;
      sigma_y : double;
      rho : double;
      x : access double;
      y : access double)  -- /usr/include/gsl/gsl_randist.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_bivariate_gaussian";

   function gsl_ran_bivariate_gaussian_pdf
     (x : double;
      y : double;
      sigma_x : double;
      sigma_y : double;
      rho : double) return double  -- /usr/include/gsl/gsl_randist.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_bivariate_gaussian_pdf";

   function gsl_ran_multivariate_gaussian
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      mu : access constant gsl_gsl_vector_double_h.gsl_vector;
      L : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      result : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_randist.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_multivariate_gaussian";

   function gsl_ran_multivariate_gaussian_log_pdf
     (x : access constant gsl_gsl_vector_double_h.gsl_vector;
      mu : access constant gsl_gsl_vector_double_h.gsl_vector;
      L : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      result : access double;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_randist.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_multivariate_gaussian_log_pdf";

   function gsl_ran_multivariate_gaussian_pdf
     (x : access constant gsl_gsl_vector_double_h.gsl_vector;
      mu : access constant gsl_gsl_vector_double_h.gsl_vector;
      L : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      result : access double;
      work : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_randist.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_multivariate_gaussian_pdf";

   function gsl_ran_multivariate_gaussian_mean (X : access constant gsl_gsl_matrix_double_h.gsl_matrix; mu_hat : access gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_randist.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_multivariate_gaussian_mean";

   function gsl_ran_multivariate_gaussian_vcov (X : access constant gsl_gsl_matrix_double_h.gsl_matrix; sigma_hat : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_randist.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_multivariate_gaussian_vcov";

   function gsl_ran_wishart
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      df : double;
      L : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      result : access gsl_gsl_matrix_double_h.gsl_matrix;
      work : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_randist.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_wishart";

   function gsl_ran_wishart_log_pdf
     (X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      L_X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      df : double;
      L : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      result : access double;
      work : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_randist.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_wishart_log_pdf";

   function gsl_ran_wishart_pdf
     (X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      L_X : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      df : double;
      L : access constant gsl_gsl_matrix_double_h.gsl_matrix;
      result : access double;
      work : access gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_randist.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_wishart_pdf";

   function gsl_ran_landau (r : access constant gsl_gsl_rng_h.gsl_rng) return double  -- /usr/include/gsl/gsl_randist.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_landau";

   function gsl_ran_landau_pdf (x : double) return double  -- /usr/include/gsl/gsl_randist.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_landau_pdf";

   function gsl_ran_geometric (r : access constant gsl_gsl_rng_h.gsl_rng; p : double) return unsigned  -- /usr/include/gsl/gsl_randist.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_geometric";

   function gsl_ran_geometric_pdf (k : unsigned; p : double) return double  -- /usr/include/gsl/gsl_randist.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_geometric_pdf";

   function gsl_ran_hypergeometric
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      n1 : unsigned;
      n2 : unsigned;
      t : unsigned) return unsigned  -- /usr/include/gsl/gsl_randist.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_hypergeometric";

   function gsl_ran_hypergeometric_pdf
     (k : unsigned;
      n1 : unsigned;
      n2 : unsigned;
      t : unsigned) return double  -- /usr/include/gsl/gsl_randist.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_hypergeometric_pdf";

   function gsl_ran_gumbel1
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_randist.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_gumbel1";

   function gsl_ran_gumbel1_pdf
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_randist.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_gumbel1_pdf";

   function gsl_ran_gumbel2
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_randist.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_gumbel2";

   function gsl_ran_gumbel2_pdf
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_randist.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_gumbel2_pdf";

   function gsl_ran_logistic (r : access constant gsl_gsl_rng_h.gsl_rng; a : double) return double  -- /usr/include/gsl/gsl_randist.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_logistic";

   function gsl_ran_logistic_pdf (x : double; a : double) return double  -- /usr/include/gsl/gsl_randist.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_logistic_pdf";

   function gsl_ran_lognormal
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      zeta : double;
      sigma : double) return double  -- /usr/include/gsl/gsl_randist.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_lognormal";

   function gsl_ran_lognormal_pdf
     (x : double;
      zeta : double;
      sigma : double) return double  -- /usr/include/gsl/gsl_randist.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_lognormal_pdf";

   function gsl_ran_logarithmic (r : access constant gsl_gsl_rng_h.gsl_rng; p : double) return unsigned  -- /usr/include/gsl/gsl_randist.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_logarithmic";

   function gsl_ran_logarithmic_pdf (k : unsigned; p : double) return double  -- /usr/include/gsl/gsl_randist.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_logarithmic_pdf";

   procedure gsl_ran_multinomial
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      K : stddef_h.size_t;
      N : unsigned;
      p : access double;
      n : access unsigned)  -- /usr/include/gsl/gsl_randist.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_multinomial";

   function gsl_ran_multinomial_pdf
     (K : stddef_h.size_t;
      p : access double;
      n : access unsigned) return double  -- /usr/include/gsl/gsl_randist.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_multinomial_pdf";

   function gsl_ran_multinomial_lnpdf
     (K : stddef_h.size_t;
      p : access double;
      n : access unsigned) return double  -- /usr/include/gsl/gsl_randist.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_multinomial_lnpdf";

   function gsl_ran_negative_binomial
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      p : double;
      n : double) return unsigned  -- /usr/include/gsl/gsl_randist.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_negative_binomial";

   function gsl_ran_negative_binomial_pdf
     (k : unsigned;
      p : double;
      n : double) return double  -- /usr/include/gsl/gsl_randist.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_negative_binomial_pdf";

   function gsl_ran_pascal
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      p : double;
      n : unsigned) return unsigned  -- /usr/include/gsl/gsl_randist.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_pascal";

   function gsl_ran_pascal_pdf
     (k : unsigned;
      p : double;
      n : unsigned) return double  -- /usr/include/gsl/gsl_randist.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_pascal_pdf";

   function gsl_ran_pareto
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_randist.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_pareto";

   function gsl_ran_pareto_pdf
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_randist.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_pareto_pdf";

   function gsl_ran_poisson (r : access constant gsl_gsl_rng_h.gsl_rng; mu : double) return unsigned  -- /usr/include/gsl/gsl_randist.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_poisson";

   procedure gsl_ran_poisson_array
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      n : stddef_h.size_t;
      c_array : access unsigned;
      mu : double)  -- /usr/include/gsl/gsl_randist.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_poisson_array";

   function gsl_ran_poisson_pdf (k : unsigned; mu : double) return double  -- /usr/include/gsl/gsl_randist.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_poisson_pdf";

   function gsl_ran_rayleigh (r : access constant gsl_gsl_rng_h.gsl_rng; sigma : double) return double  -- /usr/include/gsl/gsl_randist.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_rayleigh";

   function gsl_ran_rayleigh_pdf (x : double; sigma : double) return double  -- /usr/include/gsl/gsl_randist.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_rayleigh_pdf";

   function gsl_ran_rayleigh_tail
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      a : double;
      sigma : double) return double  -- /usr/include/gsl/gsl_randist.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_rayleigh_tail";

   function gsl_ran_rayleigh_tail_pdf
     (x : double;
      a : double;
      sigma : double) return double  -- /usr/include/gsl/gsl_randist.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_rayleigh_tail_pdf";

   function gsl_ran_tdist (r : access constant gsl_gsl_rng_h.gsl_rng; nu : double) return double  -- /usr/include/gsl/gsl_randist.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_tdist";

   function gsl_ran_tdist_pdf (x : double; nu : double) return double  -- /usr/include/gsl/gsl_randist.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_tdist_pdf";

   function gsl_ran_laplace (r : access constant gsl_gsl_rng_h.gsl_rng; a : double) return double  -- /usr/include/gsl/gsl_randist.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_laplace";

   function gsl_ran_laplace_pdf (x : double; a : double) return double  -- /usr/include/gsl/gsl_randist.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_laplace_pdf";

   function gsl_ran_levy
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      c : double;
      alpha : double) return double  -- /usr/include/gsl/gsl_randist.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_levy";

   function gsl_ran_levy_skew
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      c : double;
      alpha : double;
      beta : double) return double  -- /usr/include/gsl/gsl_randist.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_levy_skew";

   function gsl_ran_weibull
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_randist.h:192
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_weibull";

   function gsl_ran_weibull_pdf
     (x : double;
      a : double;
      b : double) return double  -- /usr/include/gsl/gsl_randist.h:193
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_weibull_pdf";

   procedure gsl_ran_dir_2d
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      x : access double;
      y : access double)  -- /usr/include/gsl/gsl_randist.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_dir_2d";

   procedure gsl_ran_dir_2d_trig_method
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      x : access double;
      y : access double)  -- /usr/include/gsl/gsl_randist.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_dir_2d_trig_method";

   procedure gsl_ran_dir_3d
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      x : access double;
      y : access double;
      z : access double)  -- /usr/include/gsl/gsl_randist.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_dir_3d";

   procedure gsl_ran_dir_nd
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      n : stddef_h.size_t;
      x : access double)  -- /usr/include/gsl/gsl_randist.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_dir_nd";

   procedure gsl_ran_shuffle
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      base : System.Address;
      nmembm : stddef_h.size_t;
      size : stddef_h.size_t)  -- /usr/include/gsl/gsl_randist.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_shuffle";

   function gsl_ran_choose
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      dest : System.Address;
      k : stddef_h.size_t;
      src : System.Address;
      n : stddef_h.size_t;
      size : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_randist.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_choose";

   procedure gsl_ran_sample
     (r : access constant gsl_gsl_rng_h.gsl_rng;
      dest : System.Address;
      k : stddef_h.size_t;
      src : System.Address;
      n : stddef_h.size_t;
      size : stddef_h.size_t)  -- /usr/include/gsl/gsl_randist.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_sample";

   --  skipped anonymous struct anon_anon_110

   type gsl_ran_discrete_t is record
      K : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_randist.h:206
      A : access stddef_h.size_t;  -- /usr/include/gsl/gsl_randist.h:207
      F : access double;  -- /usr/include/gsl/gsl_randist.h:208
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_randist.h:209

   function gsl_ran_discrete_preproc (K : stddef_h.size_t; P : access double) return access gsl_ran_discrete_t  -- /usr/include/gsl/gsl_randist.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_discrete_preproc";

   procedure gsl_ran_discrete_free (g : access gsl_ran_discrete_t)  -- /usr/include/gsl/gsl_randist.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_discrete_free";

   function gsl_ran_discrete (r : access constant gsl_gsl_rng_h.gsl_rng; g : access constant gsl_ran_discrete_t) return stddef_h.size_t  -- /usr/include/gsl/gsl_randist.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_discrete";

   function gsl_ran_discrete_pdf (k : stddef_h.size_t; g : access constant gsl_ran_discrete_t) return double  -- /usr/include/gsl/gsl_randist.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ran_discrete_pdf";

end gsl_gsl_randist_h;
