pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with stddef_h;

package gsl_gsl_heapsort_h is

   type gsl_comparison_fn_t is access function (arg1 : System.Address; arg2 : System.Address) return int
   with Convention => C;  -- /usr/include/gsl/gsl_heapsort.h:37

   procedure gsl_heapsort
     (c_array : System.Address;
      count : stddef_h.size_t;
      size : stddef_h.size_t;
      compare : gsl_comparison_fn_t)  -- /usr/include/gsl/gsl_heapsort.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_heapsort";

   function gsl_heapsort_index
     (p : access stddef_h.size_t;
      c_array : System.Address;
      count : stddef_h.size_t;
      size : stddef_h.size_t;
      compare : gsl_comparison_fn_t) return int  -- /usr/include/gsl/gsl_heapsort.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_heapsort_index";

end gsl_gsl_heapsort_h;
