pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with stddef_h;
with System;
limited with gsl_gsl_interp_h;

package gsl_gsl_interp2d_h is

   --  skipped anonymous struct anon_anon_20

   type gsl_interp2d_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_interp2d.h:38
      min_size : aliased unsigned;  -- /usr/include/gsl/gsl_interp2d.h:39
      alloc : access function (arg1 : stddef_h.size_t; arg2 : stddef_h.size_t) return System.Address;  -- /usr/include/gsl/gsl_interp2d.h:40
      init : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : access double;
            arg5 : stddef_h.size_t;
            arg6 : stddef_h.size_t) return int;  -- /usr/include/gsl/gsl_interp2d.h:41
      eval : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : access double;
            arg5 : stddef_h.size_t;
            arg6 : stddef_h.size_t;
            arg7 : double;
            arg8 : double;
            arg9 : access gsl_gsl_interp_h.gsl_interp_accel;
            arg10 : access gsl_gsl_interp_h.gsl_interp_accel;
            arg11 : access double) return int;  -- /usr/include/gsl/gsl_interp2d.h:42
      eval_deriv_x : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : access double;
            arg5 : stddef_h.size_t;
            arg6 : stddef_h.size_t;
            arg7 : double;
            arg8 : double;
            arg9 : access gsl_gsl_interp_h.gsl_interp_accel;
            arg10 : access gsl_gsl_interp_h.gsl_interp_accel;
            arg11 : access double) return int;  -- /usr/include/gsl/gsl_interp2d.h:43
      eval_deriv_y : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : access double;
            arg5 : stddef_h.size_t;
            arg6 : stddef_h.size_t;
            arg7 : double;
            arg8 : double;
            arg9 : access gsl_gsl_interp_h.gsl_interp_accel;
            arg10 : access gsl_gsl_interp_h.gsl_interp_accel;
            arg11 : access double) return int;  -- /usr/include/gsl/gsl_interp2d.h:44
      eval_deriv_xx : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : access double;
            arg5 : stddef_h.size_t;
            arg6 : stddef_h.size_t;
            arg7 : double;
            arg8 : double;
            arg9 : access gsl_gsl_interp_h.gsl_interp_accel;
            arg10 : access gsl_gsl_interp_h.gsl_interp_accel;
            arg11 : access double) return int;  -- /usr/include/gsl/gsl_interp2d.h:45
      eval_deriv_xy : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : access double;
            arg5 : stddef_h.size_t;
            arg6 : stddef_h.size_t;
            arg7 : double;
            arg8 : double;
            arg9 : access gsl_gsl_interp_h.gsl_interp_accel;
            arg10 : access gsl_gsl_interp_h.gsl_interp_accel;
            arg11 : access double) return int;  -- /usr/include/gsl/gsl_interp2d.h:46
      eval_deriv_yy : access function
           (arg1 : System.Address;
            arg2 : access double;
            arg3 : access double;
            arg4 : access double;
            arg5 : stddef_h.size_t;
            arg6 : stddef_h.size_t;
            arg7 : double;
            arg8 : double;
            arg9 : access gsl_gsl_interp_h.gsl_interp_accel;
            arg10 : access gsl_gsl_interp_h.gsl_interp_accel;
            arg11 : access double) return int;  -- /usr/include/gsl/gsl_interp2d.h:47
      free : access procedure (arg1 : System.Address);  -- /usr/include/gsl/gsl_interp2d.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_interp2d.h:49

   --  skipped anonymous struct anon_anon_21

   type gsl_interp2d is record
      c_type : access constant gsl_interp2d_type;  -- /usr/include/gsl/gsl_interp2d.h:52
      xmin : aliased double;  -- /usr/include/gsl/gsl_interp2d.h:53
      xmax : aliased double;  -- /usr/include/gsl/gsl_interp2d.h:54
      ymin : aliased double;  -- /usr/include/gsl/gsl_interp2d.h:55
      ymax : aliased double;  -- /usr/include/gsl/gsl_interp2d.h:56
      xsize : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_interp2d.h:57
      ysize : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_interp2d.h:58
      state : System.Address;  -- /usr/include/gsl/gsl_interp2d.h:59
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_interp2d.h:60

   gsl_interp2d_bilinear : access constant gsl_interp2d_type  -- /usr/include/gsl/gsl_interp2d.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_bilinear";

   gsl_interp2d_bicubic : access constant gsl_interp2d_type  -- /usr/include/gsl/gsl_interp2d.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_bicubic";

   function gsl_interp2d_alloc
     (T : access constant gsl_interp2d_type;
      xsize : stddef_h.size_t;
      ysize : stddef_h.size_t) return access gsl_interp2d  -- /usr/include/gsl/gsl_interp2d.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_alloc";

   function gsl_interp2d_name (interp : access constant gsl_interp2d) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_interp2d.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_name";

   function gsl_interp2d_min_size (interp : access constant gsl_interp2d) return stddef_h.size_t  -- /usr/include/gsl/gsl_interp2d.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_min_size";

   function gsl_interp2d_type_min_size (T : access constant gsl_interp2d_type) return stddef_h.size_t  -- /usr/include/gsl/gsl_interp2d.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_type_min_size";

   function gsl_interp2d_set
     (interp : access constant gsl_interp2d;
      zarr : access double;
      i : stddef_h.size_t;
      j : stddef_h.size_t;
      z : double) return int  -- /usr/include/gsl/gsl_interp2d.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_set";

   function gsl_interp2d_get
     (interp : access constant gsl_interp2d;
      zarr : access double;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_interp2d.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_get";

   function gsl_interp2d_idx
     (interp : access constant gsl_interp2d;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return stddef_h.size_t  -- /usr/include/gsl/gsl_interp2d.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_idx";

   function gsl_interp2d_init
     (interp : access gsl_interp2d;
      xa : access double;
      ya : access double;
      za : access double;
      xsize : stddef_h.size_t;
      ysize : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_interp2d.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_init";

   procedure gsl_interp2d_free (interp : access gsl_interp2d)  -- /usr/include/gsl/gsl_interp2d.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_free";

   function gsl_interp2d_eval
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp2d.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval";

   function gsl_interp2d_eval_extrap
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp2d.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_extrap";

   function gsl_interp2d_eval_e
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_interp2d.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_e";

   function gsl_interp2d_eval_e_extrap
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_interp2d.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_e_extrap";

   function gsl_interp2d_eval_extrap_e
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_interp2d.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_extrap_e";

   function gsl_interp2d_eval_deriv_x
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp2d.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_x";

   function gsl_interp2d_eval_deriv_x_e
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_interp2d.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_x_e";

   function gsl_interp2d_eval_deriv_y
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp2d.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_y";

   function gsl_interp2d_eval_deriv_y_e
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_interp2d.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_y_e";

   function gsl_interp2d_eval_deriv_xx
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp2d.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_xx";

   function gsl_interp2d_eval_deriv_xx_e
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_interp2d.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_xx_e";

   function gsl_interp2d_eval_deriv_yy
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp2d.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_yy";

   function gsl_interp2d_eval_deriv_yy_e
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_interp2d.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_yy_e";

   function gsl_interp2d_eval_deriv_xy
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel) return double  -- /usr/include/gsl/gsl_interp2d.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_xy";

   function gsl_interp2d_eval_deriv_xy_e
     (interp : access constant gsl_interp2d;
      xarr : access double;
      yarr : access double;
      zarr : access double;
      x : double;
      y : double;
      xa : access gsl_gsl_interp_h.gsl_interp_accel;
      ya : access gsl_gsl_interp_h.gsl_interp_accel;
      z : access double) return int  -- /usr/include/gsl/gsl_interp2d.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_interp2d_eval_deriv_xy_e";

end gsl_gsl_interp2d_h;
