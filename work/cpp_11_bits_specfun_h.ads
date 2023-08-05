pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package cpp_11_bits_specfun_h is

   function assoc_laguerref
     (uu_n : unsigned;
      uu_m : unsigned;
      uu_x : float) return float  -- /usr/include/c++/11/bits/specfun.h:206
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt15assoc_laguerrefjjf";

   function assoc_laguerrel
     (uu_n : unsigned;
      uu_m : unsigned;
      uu_x : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:216
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt15assoc_laguerreljje";

   function assoc_legendref
     (uu_l : unsigned;
      uu_m : unsigned;
      uu_x : float) return float  -- /usr/include/c++/11/bits/specfun.h:267
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt15assoc_legendrefjjf";

   function assoc_legendrel
     (uu_l : unsigned;
      uu_m : unsigned;
      uu_x : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:276
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt15assoc_legendreljje";

   function betaf (uu_a : float; uu_b : float) return float  -- /usr/include/c++/11/bits/specfun.h:312
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5betafff";

   function betal (uu_a : long_double; uu_b : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:322
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5betalee";

   function comp_ellint_1f (uu_k : float) return float  -- /usr/include/c++/11/bits/specfun.h:358
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt14comp_ellint_1ff";

   function comp_ellint_1l (uu_k : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:368
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt14comp_ellint_1le";

   function comp_ellint_2f (uu_k : float) return float  -- /usr/include/c++/11/bits/specfun.h:406
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt14comp_ellint_2ff";

   function comp_ellint_2l (uu_k : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:416
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt14comp_ellint_2le";

   function comp_ellint_3f (uu_k : float; uu_nu : float) return float  -- /usr/include/c++/11/bits/specfun.h:453
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt14comp_ellint_3fff";

   function comp_ellint_3l (uu_k : long_double; uu_nu : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:463
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt14comp_ellint_3lee";

   function cyl_bessel_if (uu_nu : float; uu_x : float) return float  -- /usr/include/c++/11/bits/specfun.h:504
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt13cyl_bessel_ifff";

   function cyl_bessel_il (uu_nu : long_double; uu_x : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:514
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt13cyl_bessel_ilee";

   function cyl_bessel_jf (uu_nu : float; uu_x : float) return float  -- /usr/include/c++/11/bits/specfun.h:550
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt13cyl_bessel_jfff";

   function cyl_bessel_jl (uu_nu : long_double; uu_x : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:560
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt13cyl_bessel_jlee";

   function cyl_bessel_kf (uu_nu : float; uu_x : float) return float  -- /usr/include/c++/11/bits/specfun.h:596
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt13cyl_bessel_kfff";

   function cyl_bessel_kl (uu_nu : long_double; uu_x : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:606
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt13cyl_bessel_klee";

   function cyl_neumannf (uu_nu : float; uu_x : float) return float  -- /usr/include/c++/11/bits/specfun.h:648
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt12cyl_neumannfff";

   function cyl_neumannl (uu_nu : long_double; uu_x : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:658
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt12cyl_neumannlee";

   function ellint_1f (uu_k : float; uu_phi : float) return float  -- /usr/include/c++/11/bits/specfun.h:696
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9ellint_1fff";

   function ellint_1l (uu_k : long_double; uu_phi : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:706
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9ellint_1lee";

   function ellint_2f (uu_k : float; uu_phi : float) return float  -- /usr/include/c++/11/bits/specfun.h:744
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9ellint_2fff";

   function ellint_2l (uu_k : long_double; uu_phi : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:754
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9ellint_2lee";

   function ellint_3f
     (uu_k : float;
      uu_nu : float;
      uu_phi : float) return float  -- /usr/include/c++/11/bits/specfun.h:792
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9ellint_3ffff";

   function ellint_3l
     (uu_k : long_double;
      uu_nu : long_double;
      uu_phi : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:802
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9ellint_3leee";

   function expintf (uu_x : float) return float  -- /usr/include/c++/11/bits/specfun.h:844
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt7expintff";

   function expintl (uu_x : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:854
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt7expintle";

   function hermitef (uu_n : unsigned; uu_x : float) return float  -- /usr/include/c++/11/bits/specfun.h:885
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt8hermitefjf";

   function hermitel (uu_n : unsigned; uu_x : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:895
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt8hermitelje";

   function laguerref (uu_n : unsigned; uu_x : float) return float  -- /usr/include/c++/11/bits/specfun.h:933
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9laguerrefjf";

   function laguerrel (uu_n : unsigned; uu_x : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:943
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9laguerrelje";

   function legendref (uu_l : unsigned; uu_x : float) return float  -- /usr/include/c++/11/bits/specfun.h:977
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9legendrefjf";

   function legendrel (uu_l : unsigned; uu_x : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:987
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9legendrelje";

   function riemann_zetaf (uu_s : float) return float  -- /usr/include/c++/11/bits/specfun.h:1022
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt13riemann_zetaff";

   function riemann_zetal (uu_s : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:1032
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt13riemann_zetale";

   function sph_besself (uu_n : unsigned; uu_x : float) return float  -- /usr/include/c++/11/bits/specfun.h:1073
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt11sph_besselfjf";

   function sph_bessell (uu_n : unsigned; uu_x : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:1083
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt11sph_bessellje";

   function sph_legendref
     (uu_l : unsigned;
      uu_m : unsigned;
      uu_theta : float) return float  -- /usr/include/c++/11/bits/specfun.h:1117
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt13sph_legendrefjjf";

   function sph_legendrel
     (uu_l : unsigned;
      uu_m : unsigned;
      uu_theta : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:1128
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt13sph_legendreljje";

   function sph_neumannf (uu_n : unsigned; uu_x : float) return float  -- /usr/include/c++/11/bits/specfun.h:1164
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt12sph_neumannfjf";

   function sph_neumannl (uu_n : unsigned; uu_x : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:1174
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt12sph_neumannlje";

   function airy_aif (uu_x : float) return float  -- /usr/include/c++/11/bits/specfun.h:1219
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZN9__gnu_cxx8airy_aifEf";

   function airy_ail (uu_x : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:1230
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZN9__gnu_cxx8airy_ailEe";

   function airy_bif (uu_x : float) return float  -- /usr/include/c++/11/bits/specfun.h:1254
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZN9__gnu_cxx8airy_bifEf";

   function airy_bil (uu_x : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:1265
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZN9__gnu_cxx8airy_bilEe";

   function conf_hypergf
     (uu_a : float;
      uu_c : float;
      uu_x : float) return float  -- /usr/include/c++/11/bits/specfun.h:1295
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZN9__gnu_cxx12conf_hypergfEfff";

   function conf_hypergl
     (uu_a : long_double;
      uu_c : long_double;
      uu_x : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:1306
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZN9__gnu_cxx12conf_hyperglEeee";

   function hypergf
     (uu_a : float;
      uu_b : float;
      uu_c : float;
      uu_x : float) return float  -- /usr/include/c++/11/bits/specfun.h:1343
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZN9__gnu_cxx7hypergfEffff";

   function hypergl
     (uu_a : long_double;
      uu_b : long_double;
      uu_c : long_double;
      uu_x : long_double) return long_double  -- /usr/include/c++/11/bits/specfun.h:1354
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZN9__gnu_cxx7hyperglEeeee";

end cpp_11_bits_specfun_h;
