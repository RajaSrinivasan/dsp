pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;

package gsl_gsl_sort_float_h is

   procedure gsl_sort_float
     (data : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_float.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_float";

   procedure gsl_sort2_float
     (data1 : access float;
      stride1 : stddef_h.size_t;
      data2 : access float;
      stride2 : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_float.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort2_float";

   procedure gsl_sort_float_index
     (p : access stddef_h.size_t;
      data : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_float.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_float_index";

   function gsl_sort_float_smallest
     (dest : access float;
      k : stddef_h.size_t;
      src : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_float.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_float_smallest";

   function gsl_sort_float_smallest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      src : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_float.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_float_smallest_index";

   function gsl_sort_float_largest
     (dest : access float;
      k : stddef_h.size_t;
      src : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_float.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_float_largest";

   function gsl_sort_float_largest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      src : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_float.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_float_largest_index";

end gsl_gsl_sort_float_h;
