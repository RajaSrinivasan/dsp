pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_sf_result_h;

package gsl_gsl_sf_hermite_h is

   function gsl_sf_hermite_prob_e
     (n : int;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_e";

   function gsl_sf_hermite_prob (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob";

   function gsl_sf_hermite_prob_deriv_e
     (m : int;
      n : int;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_deriv_e";

   function gsl_sf_hermite_prob_deriv
     (m : int;
      n : int;
      x : double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_deriv";

   function gsl_sf_hermite_e
     (n : int;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_e";

   function gsl_sf_hermite (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite";

   function gsl_sf_hermite_deriv_e
     (m : int;
      n : int;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_deriv_e";

   function gsl_sf_hermite_deriv
     (m : int;
      n : int;
      x : double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_deriv";

   function gsl_sf_hermite_func_e
     (n : int;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func_e";

   function gsl_sf_hermite_func (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func";

   function gsl_sf_hermite_func_fast_e
     (n : int;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func_fast_e";

   function gsl_sf_hermite_func_fast (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func_fast";

   function gsl_sf_hermite_prob_array
     (nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_array";

   function gsl_sf_hermite_prob_array_deriv
     (m : int;
      nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_array_deriv";

   function gsl_sf_hermite_prob_deriv_array
     (mmax : int;
      n : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_deriv_array";

   function gsl_sf_hermite_prob_series_e
     (n : int;
      x : double;
      a : access double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_series_e";

   function gsl_sf_hermite_prob_series
     (n : int;
      x : double;
      a : access double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_series";

   function gsl_sf_hermite_array
     (nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_array";

   function gsl_sf_hermite_array_deriv
     (m : int;
      nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_array_deriv";

   function gsl_sf_hermite_deriv_array
     (mmax : int;
      n : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_deriv_array";

   function gsl_sf_hermite_series_e
     (n : int;
      x : double;
      a : access double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_series_e";

   function gsl_sf_hermite_series
     (n : int;
      x : double;
      a : access double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_series";

   function gsl_sf_hermite_func_array
     (nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func_array";

   function gsl_sf_hermite_func_series_e
     (n : int;
      x : double;
      a : access double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func_series_e";

   function gsl_sf_hermite_func_series
     (n : int;
      x : double;
      a : access double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func_series";

   function gsl_sf_hermite_func_der_e
     (m : int;
      n : int;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func_der_e";

   function gsl_sf_hermite_func_der
     (m : int;
      n : int;
      x : double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func_der";

   function gsl_sf_hermite_prob_zero_e
     (n : int;
      s : int;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_zero_e";

   function gsl_sf_hermite_prob_zero (n : int; s : int) return double  -- /usr/include/gsl/gsl_sf_hermite.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_zero";

   function gsl_sf_hermite_zero_e
     (n : int;
      s : int;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_zero_e";

   function gsl_sf_hermite_zero (n : int; s : int) return double  -- /usr/include/gsl/gsl_sf_hermite.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_zero";

   function gsl_sf_hermite_func_zero_e
     (n : int;
      s : int;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func_zero_e";

   function gsl_sf_hermite_func_zero (n : int; s : int) return double  -- /usr/include/gsl/gsl_sf_hermite.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_func_zero";

   function gsl_sf_hermite_phys_e
     (n : int;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_e";

   function gsl_sf_hermite_phys (n : int; x : double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys";

   function gsl_sf_hermite_phys_der_e
     (m : int;
      n : int;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_der_e";

   function gsl_sf_hermite_phys_der
     (m : int;
      n : int;
      x : double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_der";

   function gsl_sf_hermite_phys_array
     (nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_array";

   function gsl_sf_hermite_phys_series_e
     (n : int;
      x : double;
      a : access double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_series_e";

   function gsl_sf_hermite_phys_series
     (n : int;
      x : double;
      a : access double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_series";

   function gsl_sf_hermite_phys_array_der
     (m : int;
      nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_array_der";

   function gsl_sf_hermite_phys_der_array
     (mmax : int;
      n : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_der_array";

   function gsl_sf_hermite_phys_zero_e
     (n : int;
      s : int;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_zero_e";

   function gsl_sf_hermite_phys_zero (n : int; s : int) return double  -- /usr/include/gsl/gsl_sf_hermite.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_phys_zero";

   function gsl_sf_hermite_prob_array_der
     (m : int;
      nmax : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_array_der";

   function gsl_sf_hermite_prob_der_array
     (mmax : int;
      n : int;
      x : double;
      result_array : access double) return int  -- /usr/include/gsl/gsl_sf_hermite.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_der_array";

   function gsl_sf_hermite_prob_der_e
     (m : int;
      n : int;
      x : double;
      result : access gsl_gsl_sf_result_h.gsl_sf_result) return int  -- /usr/include/gsl/gsl_sf_hermite.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_der_e";

   function gsl_sf_hermite_prob_der
     (m : int;
      n : int;
      x : double) return double  -- /usr/include/gsl/gsl_sf_hermite.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sf_hermite_prob_der";

end gsl_gsl_sf_hermite_h;
