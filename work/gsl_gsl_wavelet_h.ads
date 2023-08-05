pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with stddef_h;

package gsl_gsl_wavelet_h is

   subtype gsl_wavelet_direction is int;
   gsl_wavelet_forward : constant gsl_wavelet_direction := 1;
   gsl_wavelet_backward : constant gsl_wavelet_direction := -1;  -- /usr/include/gsl/gsl_wavelet.h:41

   --  skipped anonymous struct anon_anon_28

   type gsl_wavelet_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_wavelet.h:45
      init : access function
           (arg1 : System.Address;
            arg2 : System.Address;
            arg3 : System.Address;
            arg4 : System.Address;
            arg5 : access stddef_h.size_t;
            arg6 : access stddef_h.size_t;
            arg7 : stddef_h.size_t) return int;  -- /usr/include/gsl/gsl_wavelet.h:46
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_wavelet.h:50

   --  skipped anonymous struct anon_anon_29

   type gsl_wavelet is record
      c_type : access constant gsl_wavelet_type;  -- /usr/include/gsl/gsl_wavelet.h:54
      h1 : access double;  -- /usr/include/gsl/gsl_wavelet.h:55
      g1 : access double;  -- /usr/include/gsl/gsl_wavelet.h:56
      h2 : access double;  -- /usr/include/gsl/gsl_wavelet.h:57
      g2 : access double;  -- /usr/include/gsl/gsl_wavelet.h:58
      nc : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_wavelet.h:59
      offset : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_wavelet.h:60
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_wavelet.h:62

   --  skipped anonymous struct anon_anon_30

   type gsl_wavelet_workspace is record
      scratch : access double;  -- /usr/include/gsl/gsl_wavelet.h:66
      n : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_wavelet.h:67
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_wavelet.h:69

   gsl_wavelet_daubechies : access constant gsl_wavelet_type  -- /usr/include/gsl/gsl_wavelet.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet_daubechies";

   gsl_wavelet_daubechies_centered : access constant gsl_wavelet_type  -- /usr/include/gsl/gsl_wavelet.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet_daubechies_centered";

   gsl_wavelet_haar : access constant gsl_wavelet_type  -- /usr/include/gsl/gsl_wavelet.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet_haar";

   gsl_wavelet_haar_centered : access constant gsl_wavelet_type  -- /usr/include/gsl/gsl_wavelet.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet_haar_centered";

   gsl_wavelet_bspline : access constant gsl_wavelet_type  -- /usr/include/gsl/gsl_wavelet.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet_bspline";

   gsl_wavelet_bspline_centered : access constant gsl_wavelet_type  -- /usr/include/gsl/gsl_wavelet.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet_bspline_centered";

   function gsl_wavelet_alloc (T : access constant gsl_wavelet_type; k : stddef_h.size_t) return access gsl_wavelet  -- /usr/include/gsl/gsl_wavelet.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet_alloc";

   procedure gsl_wavelet_free (w : access gsl_wavelet)  -- /usr/include/gsl/gsl_wavelet.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet_free";

   function gsl_wavelet_name (w : access constant gsl_wavelet) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_wavelet.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet_name";

   function gsl_wavelet_workspace_alloc (n : stddef_h.size_t) return access gsl_wavelet_workspace  -- /usr/include/gsl/gsl_wavelet.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet_workspace_alloc";

   procedure gsl_wavelet_workspace_free (work : access gsl_wavelet_workspace)  -- /usr/include/gsl/gsl_wavelet.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet_workspace_free";

   function gsl_wavelet_transform
     (w : access constant gsl_wavelet;
      data : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      dir : gsl_wavelet_direction;
      work : access gsl_wavelet_workspace) return int  -- /usr/include/gsl/gsl_wavelet.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet_transform";

   function gsl_wavelet_transform_forward
     (w : access constant gsl_wavelet;
      data : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      work : access gsl_wavelet_workspace) return int  -- /usr/include/gsl/gsl_wavelet.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet_transform_forward";

   function gsl_wavelet_transform_inverse
     (w : access constant gsl_wavelet;
      data : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      work : access gsl_wavelet_workspace) return int  -- /usr/include/gsl/gsl_wavelet.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_wavelet_transform_inverse";

end gsl_gsl_wavelet_h;
