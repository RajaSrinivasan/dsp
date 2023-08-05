pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with gsl_gsl_interp2d_h;
with stddef_h;
limited with gsl_gsl_interp_h;
with Interfaces.C.Strings;

package gsl_gsl_spline2d_h is

   --  skipped anonymous struct anon_anon_22

   type gsl_spline2d is record
      interp_object : aliased gsl_gsl_interp2d_h.gsl_interp2d;  -- /usr/include/gsl/gsl_spline2d.h:45
      xarr : access double;  -- /usr/include/gsl/gsl_spline2d.h:46
      yarr : access double;  -- /usr/include/gsl/gsl_spline2d.h:47
      zarr : access double;  -- /usr/include/gsl/gsl_spline2d.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_spline2d.h:49

   function gsl_spline2d_alloc
     (T : access constant gsl_gsl_interp2d_h.gsl_interp2d_type;
      xsize : stddef_h.size_t;
      ysize : stddef_h.size_t) return access gsl_spline2d  -- /usr/include/gsl/gsl_spline2d.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_alloc";

   function gsl_spline2d_init
     (interp : access gsl_spline2d;
      xa : access double;
      ya : access double;
      za : access double;
      xsize : stddef_h.size_t;
      ysize : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_spline2d.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_init";

   procedure gsl_spline2d_free (interp : access gsl_spline2d)  -- /usr/include/gsl/gsl_spline2d.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_free";

   function gsl_spline2d_eval
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_spline2d.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval";

   function gsl_spline2d_eval_e
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_spline2d.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_e";

   function gsl_spline2d_eval_extrap
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_spline2d.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_extrap";

   function gsl_spline2d_eval_extrap_e
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_spline2d.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_extrap_e";

   function gsl_spline2d_eval_deriv_x
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_spline2d.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_x";

   function gsl_spline2d_eval_deriv_x_e
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_spline2d.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_x_e";

   function gsl_spline2d_eval_deriv_y
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_spline2d.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_y";

   function gsl_spline2d_eval_deriv_y_e
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_spline2d.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_y_e";

   function gsl_spline2d_eval_deriv_xx
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_spline2d.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_xx";

   function gsl_spline2d_eval_deriv_xx_e
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_spline2d.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_xx_e";

   function gsl_spline2d_eval_deriv_yy
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_spline2d.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_yy";

   function gsl_spline2d_eval_deriv_yy_e
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_spline2d.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_yy_e";

   function gsl_spline2d_eval_deriv_xy
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_spline2d.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_xy";

   function gsl_spline2d_eval_deriv_xy_e
     (interp : access constant gsl_spline2d;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_spline2d.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_eval_deriv_xy_e";

   function gsl_spline2d_min_size (interp : access constant gsl_spline2d) return stddef_h.size_t  -- /usr/include/gsl/gsl_spline2d.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_min_size";

   function gsl_spline2d_name (interp : access constant gsl_spline2d) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_spline2d.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_name";

   function gsl_spline2d_set
     (interp : access constant gsl_spline2d;
      zarr : access double;
      i : stddef_h.size_t;
      j : stddef_h.size_t;
      z : double) return int  -- /usr/include/gsl/gsl_spline2d.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_set";

   function gsl_spline2d_get
     (interp : access constant gsl_spline2d;
      zarr : access double;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_spline2d.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spline2d_get";

end gsl_gsl_spline2d_h;
