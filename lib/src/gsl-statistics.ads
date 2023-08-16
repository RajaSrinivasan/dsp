pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with System;
with Interfaces.C; -- use Interfaces.C;

package gsl.statistics is

   function mean
     (data : System.Address ;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_mean";

   function variance
     (data : System.Address ; -- access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_variance";

   function sd
     (data : System.Address ; -- access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_sd";

   function variance_with_fixed_mean
     (data : access float;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_variance_with_fixed_mean";

   function sd_with_fixed_mean
     (data : System.address ; --access float;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_sd_with_fixed_mean";

   function tss
     (data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_tss";

   function tss_m
     (data : access float;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_tss_m";

   function absdev
     (data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_absdev";

   function skew
     (data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_skew";

   function kurtosis
     (data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_kurtosis";

   function lag1_autocorrelation
     (data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_lag1_autocorrelation";

   function covariance
     (data1 : System.Address ; -- access float;
      stride1 : size_t;
      data2 : System.Address ; -- access float;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_covariance";

   function correlation
     (data1 : System.Address ; -- access float;
      stride1 : size_t;
      data2 : System.Address ; -- access float;
      stride2 : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_correlation";

   function spearman
     (data1 : access float;
      stride1 : size_t;
      data2 : access float;
      stride2 : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_float.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_spearman";

   function variance_m
     (data : access float;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_variance_m";

   function sd_m
     (data : access float;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_sd_m";

   function absdev_m
     (data : access float;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_absdev_m";

   function skew_m_sd
     (data : access float;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_skew_m_sd";

   function kurtosis_m_sd
     (data : access float;
      stride : size_t;
      n : size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_kurtosis_m_sd";

   function lag1_autocorrelation_m
     (data : access float;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_lag1_autocorrelation_m";

   function covariance_m
     (data1 : access float;
      stride1 : size_t;
      data2 : access float;
      stride2 : size_t;
      n : size_t;
      mean1 : double;
      mean2 : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_covariance_m";

   function wmean
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wmean";

   function wvariance
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wvariance";

   function wsd
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wsd";

   function wvariance_with_fixed_mean
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wvariance_with_fixed_mean";

   function wsd_with_fixed_mean
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wsd_with_fixed_mean";

   function wtss
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wtss";

   function wtss_m
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t;
      wmean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wtss_m";

   function wabsdev
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wabsdev";

   function wskew
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wskew";

   function wkurtosis
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wkurtosis";

   function wvariance_m
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t;
      wmean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wvariance_m";

   function wsd_m
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t;
      wmean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wsd_m";

   function wabsdev_m
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t;
      wmean : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wabsdev_m";

   function wskew_m_sd
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t;
      wmean : double;
      wsd : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wskew_m_sd";

   function wkurtosis_m_sd
     (w : access float;
      wstride : size_t;
      data : access float;
      stride : size_t;
      n : size_t;
      wmean : double;
      wsd : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_wkurtosis_m_sd";

   function pvariance
     (data1 : access float;
      stride1 : size_t;
      n1 : size_t;
      data2 : access float;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_pvariance";

   function ttest
     (data1 : access float;
      stride1 : size_t;
      n1 : size_t;
      data2 : access float;
      stride2 : size_t;
      n2 : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_ttest";

   function max
     (data : access float;
      stride : size_t;
      n : size_t) return float  -- /usr/include/gsl/gsl_statistics_float.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_max";

   function min
     (data : access float;
      stride : size_t;
      n : size_t) return float  -- /usr/include/gsl/gsl_statistics_float.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_min";

   procedure gsl_stats_float_minmax
     (min : access float;
      max : access float;
      data : access float;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_float.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_minmax";

   function max_index
     (data : access float;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_float.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_max_index";

   function min_index
     (data : access float;
      stride : size_t;
      n : size_t) return size_t  -- /usr/include/gsl/gsl_statistics_float.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_min_index";

   procedure gsl_stats_float_minmax_index
     (min_index : access size_t;
      max_index : access size_t;
      data : access float;
      stride : size_t;
      n : size_t)  -- /usr/include/gsl/gsl_statistics_float.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_minmax_index";

   function gsl_select
     (data : access float;
      stride : size_t;
      n : size_t;
      k : size_t) return float  -- /usr/include/gsl/gsl_statistics_float.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_select";

   function median_from_sorted_data
     (sorted_data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_median_from_sorted_data";

   function median
     (sorted_data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_median";

   function quantile_from_sorted_data
     (sorted_data : access float;
      stride : size_t;
      n : size_t;
      f : double) return double  -- /usr/include/gsl/gsl_statistics_float.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_quantile_from_sorted_data";

   function trmean_from_sorted_data
     (trim : double;
      sorted_data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_trmean_from_sorted_data";

   function gastwirth_from_sorted_data
     (sorted_data : access float;
      stride : size_t;
      n : size_t) return double  -- /usr/include/gsl/gsl_statistics_float.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_gastwirth_from_sorted_data";

   function mad0
     (data : access float;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_float.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_mad0";

   function mad
     (data : access float;
      stride : size_t;
      n : size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_float.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_mad";

   function Sn0_from_sorted_data
     (sorted_data : access float;
      stride : size_t;
      n : size_t;
      work : access float) return float  -- /usr/include/gsl/gsl_statistics_float.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_Sn0_from_sorted_data";

   function Sn_from_sorted_data
     (sorted_data : access float;
      stride : size_t;
      n : size_t;
      work : access float) return double  -- /usr/include/gsl/gsl_statistics_float.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_Sn_from_sorted_data";

   function Qn0_from_sorted_data
     (sorted_data : access float;
      stride : size_t;
      n : size_t;
      work : access float;
      work_int : access int) return float  -- /usr/include/gsl/gsl_statistics_float.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_Qn0_from_sorted_data";

   function Qn_from_sorted_data
     (sorted_data : access float;
      stride : size_t;
      n : size_t;
      work : access float;
      work_int : access int) return double  -- /usr/include/gsl/gsl_statistics_float.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_float_Qn_from_sorted_data";

end gsl.statistics ;
