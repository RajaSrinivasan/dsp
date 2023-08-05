pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;

package gsl_gsl_statistics_int_h is

   function gsl_stats_int_mean
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_statistics_int.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_mean";

   function gsl_stats_int_variance
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_statistics_int.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_variance";

   function gsl_stats_int_sd
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_statistics_int.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_sd";

   function gsl_stats_int_variance_with_fixed_mean
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_int.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_variance_with_fixed_mean";

   function gsl_stats_int_sd_with_fixed_mean
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_int.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_sd_with_fixed_mean";

   function gsl_stats_int_tss
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_statistics_int.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_tss";

   function gsl_stats_int_tss_m
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_int.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_tss_m";

   function gsl_stats_int_absdev
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_statistics_int.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_absdev";

   function gsl_stats_int_skew
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_statistics_int.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_skew";

   function gsl_stats_int_kurtosis
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_statistics_int.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_kurtosis";

   function gsl_stats_int_lag1_autocorrelation
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_statistics_int.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_lag1_autocorrelation";

   function gsl_stats_int_covariance
     (data1 : access int;
      stride1 : stddef_h.size_t;
      data2 : access int;
      stride2 : stddef_h.size_t;
      n : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_statistics_int.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_covariance";

   function gsl_stats_int_correlation
     (data1 : access int;
      stride1 : stddef_h.size_t;
      data2 : access int;
      stride2 : stddef_h.size_t;
      n : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_statistics_int.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_correlation";

   function gsl_stats_int_spearman
     (data1 : access int;
      stride1 : stddef_h.size_t;
      data2 : access int;
      stride2 : stddef_h.size_t;
      n : stddef_h.size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_int.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_spearman";

   function gsl_stats_int_variance_m
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_int.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_variance_m";

   function gsl_stats_int_sd_m
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_int.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_sd_m";

   function gsl_stats_int_absdev_m
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_int.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_absdev_m";

   function gsl_stats_int_skew_m_sd
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_int.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_skew_m_sd";

   function gsl_stats_int_kurtosis_m_sd
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      mean : double;
      sd : double) return double  -- /usr/include/gsl/gsl_statistics_int.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_kurtosis_m_sd";

   function gsl_stats_int_lag1_autocorrelation_m
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      mean : double) return double  -- /usr/include/gsl/gsl_statistics_int.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_lag1_autocorrelation_m";

   function gsl_stats_int_covariance_m
     (data1 : access int;
      stride1 : stddef_h.size_t;
      data2 : access int;
      stride2 : stddef_h.size_t;
      n : stddef_h.size_t;
      mean1 : double;
      mean2 : double) return double  -- /usr/include/gsl/gsl_statistics_int.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_covariance_m";

   function gsl_stats_int_pvariance
     (data1 : access int;
      stride1 : stddef_h.size_t;
      n1 : stddef_h.size_t;
      data2 : access int;
      stride2 : stddef_h.size_t;
      n2 : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_statistics_int.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_pvariance";

   function gsl_stats_int_ttest
     (data1 : access int;
      stride1 : stddef_h.size_t;
      n1 : stddef_h.size_t;
      data2 : access int;
      stride2 : stddef_h.size_t;
      n2 : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_statistics_int.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_ttest";

   function gsl_stats_int_max
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_statistics_int.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_max";

   function gsl_stats_int_min
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_statistics_int.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_min";

   procedure gsl_stats_int_minmax
     (min : access int;
      max : access int;
      data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_statistics_int.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_minmax";

   function gsl_stats_int_max_index
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return stddef_h.size_t  -- /usr/include/gsl/gsl_statistics_int.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_max_index";

   function gsl_stats_int_min_index
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return stddef_h.size_t  -- /usr/include/gsl/gsl_statistics_int.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_min_index";

   procedure gsl_stats_int_minmax_index
     (min_index : access stddef_h.size_t;
      max_index : access stddef_h.size_t;
      data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_statistics_int.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_minmax_index";

   function gsl_stats_int_select
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      k : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_statistics_int.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_select";

   function gsl_stats_int_median_from_sorted_data
     (sorted_data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_statistics_int.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_median_from_sorted_data";

   function gsl_stats_int_median
     (sorted_data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_statistics_int.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_median";

   function gsl_stats_int_quantile_from_sorted_data
     (sorted_data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      f : double) return double  -- /usr/include/gsl/gsl_statistics_int.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_quantile_from_sorted_data";

   function gsl_stats_int_trmean_from_sorted_data
     (trim : double;
      sorted_data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_statistics_int.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_trmean_from_sorted_data";

   function gsl_stats_int_gastwirth_from_sorted_data
     (sorted_data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_statistics_int.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_gastwirth_from_sorted_data";

   function gsl_stats_int_mad0
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_int.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_mad0";

   function gsl_stats_int_mad
     (data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      work : access double) return double  -- /usr/include/gsl/gsl_statistics_int.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_mad";

   function gsl_stats_int_Sn0_from_sorted_data
     (sorted_data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      work : access int) return int  -- /usr/include/gsl/gsl_statistics_int.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_Sn0_from_sorted_data";

   function gsl_stats_int_Sn_from_sorted_data
     (sorted_data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      work : access int) return double  -- /usr/include/gsl/gsl_statistics_int.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_Sn_from_sorted_data";

   function gsl_stats_int_Qn0_from_sorted_data
     (sorted_data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      work : access int;
      work_int : access int) return int  -- /usr/include/gsl/gsl_statistics_int.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_Qn0_from_sorted_data";

   function gsl_stats_int_Qn_from_sorted_data
     (sorted_data : access int;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      work : access int;
      work_int : access int) return double  -- /usr/include/gsl/gsl_statistics_int.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stats_int_Qn_from_sorted_data";

end gsl_gsl_statistics_int_h;
