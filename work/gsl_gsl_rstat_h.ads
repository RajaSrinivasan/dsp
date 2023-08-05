pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;

package gsl_gsl_rstat_h is

   --  skipped anonymous struct anon_anon_17

   type gsl_rstat_quantile_workspace_array2316 is array (0 .. 4) of aliased double;
   type gsl_rstat_quantile_workspace_array2317 is array (0 .. 4) of aliased int;
   type gsl_rstat_quantile_workspace is record
      p : aliased double;  -- /usr/include/gsl/gsl_rstat.h:39
      q : aliased gsl_rstat_quantile_workspace_array2316;  -- /usr/include/gsl/gsl_rstat.h:40
      npos : aliased gsl_rstat_quantile_workspace_array2317;  -- /usr/include/gsl/gsl_rstat.h:41
      np : aliased gsl_rstat_quantile_workspace_array2316;  -- /usr/include/gsl/gsl_rstat.h:42
      dnp : aliased gsl_rstat_quantile_workspace_array2316;  -- /usr/include/gsl/gsl_rstat.h:43
      n : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_rstat.h:44
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_rstat.h:45

   function gsl_rstat_quantile_alloc (p : double) return access gsl_rstat_quantile_workspace  -- /usr/include/gsl/gsl_rstat.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_quantile_alloc";

   procedure gsl_rstat_quantile_free (w : access gsl_rstat_quantile_workspace)  -- /usr/include/gsl/gsl_rstat.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_quantile_free";

   function gsl_rstat_quantile_reset (w : access gsl_rstat_quantile_workspace) return int  -- /usr/include/gsl/gsl_rstat.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_quantile_reset";

   function gsl_rstat_quantile_add (x : double; w : access gsl_rstat_quantile_workspace) return int  -- /usr/include/gsl/gsl_rstat.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_quantile_add";

   function gsl_rstat_quantile_get (w : access gsl_rstat_quantile_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_quantile_get";

   --  skipped anonymous struct anon_anon_18

   type gsl_rstat_workspace is record
      min : aliased double;  -- /usr/include/gsl/gsl_rstat.h:55
      max : aliased double;  -- /usr/include/gsl/gsl_rstat.h:56
      mean : aliased double;  -- /usr/include/gsl/gsl_rstat.h:57
      M2 : aliased double;  -- /usr/include/gsl/gsl_rstat.h:58
      M3 : aliased double;  -- /usr/include/gsl/gsl_rstat.h:59
      M4 : aliased double;  -- /usr/include/gsl/gsl_rstat.h:60
      n : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_rstat.h:61
      median_workspace_p : access gsl_rstat_quantile_workspace;  -- /usr/include/gsl/gsl_rstat.h:62
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_rstat.h:63

   function gsl_rstat_alloc return access gsl_rstat_workspace  -- /usr/include/gsl/gsl_rstat.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_alloc";

   procedure gsl_rstat_free (w : access gsl_rstat_workspace)  -- /usr/include/gsl/gsl_rstat.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_free";

   function gsl_rstat_n (w : access constant gsl_rstat_workspace) return stddef_h.size_t  -- /usr/include/gsl/gsl_rstat.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_n";

   function gsl_rstat_add (x : double; w : access gsl_rstat_workspace) return int  -- /usr/include/gsl/gsl_rstat.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_add";

   function gsl_rstat_min (w : access constant gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_min";

   function gsl_rstat_max (w : access constant gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_max";

   function gsl_rstat_mean (w : access constant gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_mean";

   function gsl_rstat_variance (w : access constant gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_variance";

   function gsl_rstat_sd (w : access constant gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_sd";

   function gsl_rstat_rms (w : access constant gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_rms";

   function gsl_rstat_sd_mean (w : access constant gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_sd_mean";

   function gsl_rstat_median (w : access gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_median";

   function gsl_rstat_skew (w : access constant gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_skew";

   function gsl_rstat_kurtosis (w : access constant gsl_rstat_workspace) return double  -- /usr/include/gsl/gsl_rstat.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_kurtosis";

   function gsl_rstat_reset (w : access gsl_rstat_workspace) return int  -- /usr/include/gsl/gsl_rstat.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_rstat_reset";

end gsl_gsl_rstat_h;
