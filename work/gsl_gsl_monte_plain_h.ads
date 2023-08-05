pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with gsl_gsl_monte_h;
limited with gsl_gsl_rng_h;

package gsl_gsl_monte_plain_h is

   --  skipped anonymous struct anon_anon_22

   type gsl_monte_plain_state is record
      dim : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_monte_plain.h:44
      x : access double;  -- /usr/include/gsl/gsl_monte_plain.h:45
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_monte_plain.h:46

   function gsl_monte_plain_integrate
     (f : access constant gsl_gsl_monte_h.gsl_monte_function;
      xl : access double;
      xu : access double;
      dim : stddef_h.size_t;
      calls : stddef_h.size_t;
      r : access gsl_gsl_rng_h.gsl_rng;
      state : access gsl_monte_plain_state;
      result : access double;
      abserr : access double) return int  -- /usr/include/gsl/gsl_monte_plain.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_plain_integrate";

   function gsl_monte_plain_alloc (dim : stddef_h.size_t) return access gsl_monte_plain_state  -- /usr/include/gsl/gsl_monte_plain.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_plain_alloc";

   function gsl_monte_plain_init (state : access gsl_monte_plain_state) return int  -- /usr/include/gsl/gsl_monte_plain.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_plain_init";

   procedure gsl_monte_plain_free (state : access gsl_monte_plain_state)  -- /usr/include/gsl/gsl_monte_plain.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_monte_plain_free";

end gsl_gsl_monte_plain_h;
