pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_sf_result_h;
with stddef_h;

package gsl_gsl_sf_legendre_h is

   function gsl_sf_legendre_Pl_e
     (l : int;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Pl_e";

   function gsl_sf_legendre_Pl (l : int; x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Pl";

   function gsl_sf_legendre_Pl_array
     (lmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Pl_array";

   function gsl_sf_legendre_Pl_deriv_array
     (lmax : int;
      x : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Pl_deriv_array";

   function gsl_sf_legendre_P1_e (x : double; result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_P1_e";

   function gsl_sf_legendre_P2_e (x : double; result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_P2_e";

   function gsl_sf_legendre_P3_e (x : double; result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_P3_e";

   function gsl_sf_legendre_P1 (x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_P1";

   function gsl_sf_legendre_P2 (x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_P2";

   function gsl_sf_legendre_P3 (x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_P3";

   function gsl_sf_legendre_Q0_e (x : double; result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Q0_e";

   function gsl_sf_legendre_Q0 (x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Q0";

   function gsl_sf_legendre_Q1_e (x : double; result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Q1_e";

   function gsl_sf_legendre_Q1 (x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Q1";

   function gsl_sf_legendre_Ql_e
     (l : int;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Ql_e";

   function gsl_sf_legendre_Ql (l : int; x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Ql";

   function gsl_sf_legendre_Plm_e
     (l : int;
      m : int;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Plm_e";

   function gsl_sf_legendre_Plm
     (l : int;
      m : int;
      x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Plm";

   function gsl_sf_legendre_Plm_array
     (lmax : int;
      m : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Plm_array";

   function gsl_sf_legendre_Plm_deriv_array
     (lmax : int;
      m : int;
      x : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_Plm_deriv_array";

   function gsl_sf_legendre_sphPlm_e
     (l : int;
      m : int;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_sphPlm_e";

   function gsl_sf_legendre_sphPlm
     (l : int;
      m : int;
      x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_sphPlm";

   function gsl_sf_legendre_sphPlm_array
     (lmax : int;
      m : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_sphPlm_array";

   function gsl_sf_legendre_sphPlm_deriv_array
     (lmax : int;
      m : int;
      x : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_sphPlm_deriv_array";

   function gsl_sf_legendre_array_size (lmax : int; m : int) return int  -- /usr/include/gsl/gsl_sf_legendre.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_array_size";

   function gsl_sf_conicalP_half_e
     (lambda : double;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:205
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_half_e";

   function gsl_sf_conicalP_half (lambda : double; x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:206
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_half";

   function gsl_sf_conicalP_mhalf_e
     (lambda : double;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_mhalf_e";

   function gsl_sf_conicalP_mhalf (lambda : double; x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_mhalf";

   function gsl_sf_conicalP_0_e
     (lambda : double;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_0_e";

   function gsl_sf_conicalP_0 (lambda : double; x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_0";

   function gsl_sf_conicalP_1_e
     (lambda : double;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_1_e";

   function gsl_sf_conicalP_1 (lambda : double; x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_1";

   function gsl_sf_conicalP_sph_reg_e
     (l : int;
      lambda : double;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_sph_reg_e";

   function gsl_sf_conicalP_sph_reg
     (l : int;
      lambda : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_sph_reg";

   function gsl_sf_conicalP_cyl_reg_e
     (m : int;
      lambda : double;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_cyl_reg_e";

   function gsl_sf_conicalP_cyl_reg
     (m : int;
      lambda : double;
      x : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_conicalP_cyl_reg";

   function gsl_sf_legendre_H3d_0_e
     (lambda : double;
      eta : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:277
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d_0_e";

   function gsl_sf_legendre_H3d_0 (lambda : double; eta : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:278
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d_0";

   function gsl_sf_legendre_H3d_1_e
     (lambda : double;
      eta : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:294
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d_1_e";

   function gsl_sf_legendre_H3d_1 (lambda : double; eta : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:295
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d_1";

   function gsl_sf_legendre_H3d_e
     (l : int;
      lambda : double;
      eta : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_legendre.h:307
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d_e";

   function gsl_sf_legendre_H3d
     (l : int;
      lambda : double;
      eta : double) return double  -- /usr/include/gsl/gsl_sf_legendre.h:308
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d";

   function gsl_sf_legendre_H3d_array
     (lmax : int;
      lambda : double;
      eta : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:313
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_H3d_array";

   type gsl_sf_legendre_t is 
     (GSL_SF_LEGENDRE_SCHMIDT,
      GSL_SF_LEGENDRE_SPHARM,
      GSL_SF_LEGENDRE_FULL,
      GSL_SF_LEGENDRE_NONE)
   with Convention => C;  -- /usr/include/gsl/gsl_sf_legendre.h:323

   function gsl_sf_legendre_array
     (norm : gsl_sf_legendre_t;
      lmax : stddef_h.size_t;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_array";

   function gsl_sf_legendre_array_e
     (norm : gsl_sf_legendre_t;
      lmax : stddef_h.size_t;
      x : double;
      csphase : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:328
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_array_e";

   function gsl_sf_legendre_deriv_array
     (norm : gsl_sf_legendre_t;
      lmax : stddef_h.size_t;
      x : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:332
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv_array";

   function gsl_sf_legendre_deriv_array_e
     (norm : gsl_sf_legendre_t;
      lmax : stddef_h.size_t;
      x : double;
      csphase : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv_array_e";

   function gsl_sf_legendre_deriv_alt_array
     (norm : gsl_sf_legendre_t;
      lmax : stddef_h.size_t;
      x : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:341
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv_alt_array";

   function gsl_sf_legendre_deriv_alt_array_e
     (norm : gsl_sf_legendre_t;
      lmax : stddef_h.size_t;
      x : double;
      csphase : double;
      result_array : access double;
      result_deriv_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv_alt_array_e";

   function gsl_sf_legendre_deriv2_array
     (norm : gsl_sf_legendre_t;
      lmax : stddef_h.size_t;
      x : double;
      result_array : access double;
      result_deriv_array : access double;
      result_deriv2_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:350
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv2_array";

   function gsl_sf_legendre_deriv2_array_e
     (norm : gsl_sf_legendre_t;
      lmax : stddef_h.size_t;
      x : double;
      csphase : double;
      result_array : access double;
      result_deriv_array : access double;
      result_deriv2_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:355
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv2_array_e";

   function gsl_sf_legendre_deriv2_alt_array
     (norm : gsl_sf_legendre_t;
      lmax : stddef_h.size_t;
      x : double;
      result_array : access double;
      result_deriv_array : access double;
      result_deriv2_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:361
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv2_alt_array";

   function gsl_sf_legendre_deriv2_alt_array_e
     (norm : gsl_sf_legendre_t;
      lmax : stddef_h.size_t;
      x : double;
      csphase : double;
      result_array : access double;
      result_deriv_array : access double;
      result_deriv2_array : access double) return int  -- /usr/include/gsl/gsl_sf_legendre.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_deriv2_alt_array_e";

   function gsl_sf_legendre_array_n (lmax : stddef_h.size_t) return stddef_h.size_t  -- /usr/include/gsl/gsl_sf_legendre.h:372
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_array_n";

   function gsl_sf_legendre_nlm (lmax : stddef_h.size_t) return stddef_h.size_t  -- /usr/include/gsl/gsl_sf_legendre.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_nlm";

   function gsl_sf_legendre_array_index (l : stddef_h.size_t; m : stddef_h.size_t) return stddef_h.size_t  -- /usr/include/gsl/gsl_sf_legendre.h:375
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_legendre_array_index";

end gsl_gsl_sf_legendre_h;
