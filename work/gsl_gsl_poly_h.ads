pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with gsl_gsl_complex_h;
with stddef_h;

package gsl_gsl_poly_h is

   function gsl_poly_eval
     (c : access double;
      len : int;
      x : double) return double  -- /usr/include/gsl/gsl_poly.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_poly_eval";

   function gsl_poly_complex_eval
     (c : access double;
      len : int;
      z : gsl_gsl_complex_h.gsl_complex) return gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_poly.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_poly_complex_eval";

   function gsl_complex_poly_complex_eval
     (c : access constant gsl_gsl_complex_h.gsl_complex;
      len : int;
      z : gsl_gsl_complex_h.gsl_complex) return gsl_gsl_complex_h.gsl_complex  -- /usr/include/gsl/gsl_poly.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_complex_poly_complex_eval";

   function gsl_poly_eval_derivs
     (c : access double;
      lenc : stddef_h.size_t;
      x : double;
      res : access double;
      lenres : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_poly.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_poly_eval_derivs";

   function gsl_poly_dd_init
     (dd : access double;
      x : access double;
      y : access double;
      size : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_poly.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_poly_dd_init";

   function gsl_poly_dd_eval
     (dd : access double;
      xa : access double;
      size : stddef_h.size_t;
      x : double) return double  -- /usr/include/gsl/gsl_poly.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_poly_dd_eval";

   function gsl_poly_dd_taylor
     (c : access double;
      xp : double;
      dd : access double;
      x : access double;
      size : stddef_h.size_t;
      w : access double) return int  -- /usr/include/gsl/gsl_poly.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_poly_dd_taylor";

   function gsl_poly_dd_hermite_init
     (dd : access double;
      z : access double;
      xa : access double;
      ya : access double;
      dya : access double;
      size : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_poly.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_poly_dd_hermite_init";

   function gsl_poly_solve_quadratic
     (a : double;
      b : double;
      c : double;
      x0 : access double;
      x1 : access double) return int  -- /usr/include/gsl/gsl_poly.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_poly_solve_quadratic";

   function gsl_poly_complex_solve_quadratic
     (a : double;
      b : double;
      c : double;
      z0 : access gsl_gsl_complex_h.gsl_complex;
      z1 : access gsl_gsl_complex_h.gsl_complex) return int  -- /usr/include/gsl/gsl_poly.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_poly_complex_solve_quadratic";

   function gsl_poly_solve_cubic
     (a : double;
      b : double;
      c : double;
      x0 : access double;
      x1 : access double;
      x2 : access double) return int  -- /usr/include/gsl/gsl_poly.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_poly_solve_cubic";

   function gsl_poly_complex_solve_cubic
     (a : double;
      b : double;
      c : double;
      z0 : access gsl_gsl_complex_h.gsl_complex;
      z1 : access gsl_gsl_complex_h.gsl_complex;
      z2 : access gsl_gsl_complex_h.gsl_complex) return int  -- /usr/include/gsl/gsl_poly.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_poly_complex_solve_cubic";

   --  skipped anonymous struct anon_anon_20

   type gsl_poly_complex_workspace is record
      nc : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_poly.h:168
      matrix : access double;  -- /usr/include/gsl/gsl_poly.h:169
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_poly.h:171

   function gsl_poly_complex_workspace_alloc (n : stddef_h.size_t) return access gsl_poly_complex_workspace  -- /usr/include/gsl/gsl_poly.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_poly_complex_workspace_alloc";

   procedure gsl_poly_complex_workspace_free (w : access gsl_poly_complex_workspace)  -- /usr/include/gsl/gsl_poly.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_poly_complex_workspace_free";

   function gsl_poly_complex_solve
     (a : access double;
      n : stddef_h.size_t;
      w : access gsl_poly_complex_workspace;
      z : gsl_gsl_complex_h.gsl_complex_packed_ptr) return int  -- /usr/include/gsl/gsl_poly.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_poly_complex_solve";

end gsl_gsl_poly_h;
