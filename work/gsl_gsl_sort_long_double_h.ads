pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;

package gsl_gsl_sort_long_double_h is

   procedure gsl_sort_long_double
     (data : access long_double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_long_double.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_long_double";

   procedure gsl_sort2_long_double
     (data1 : access long_double;
      stride1 : stddef_h.size_t;
      data2 : access long_double;
      stride2 : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_long_double.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort2_long_double";

   procedure gsl_sort_long_double_index
     (p : access stddef_h.size_t;
      data : access long_double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_long_double.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_long_double_index";

   function gsl_sort_long_double_smallest
     (dest : access long_double;
      k : stddef_h.size_t;
      src : access long_double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_long_double.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_long_double_smallest";

   function gsl_sort_long_double_smallest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      src : access long_double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_long_double.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_long_double_smallest_index";

   function gsl_sort_long_double_largest
     (dest : access long_double;
      k : stddef_h.size_t;
      src : access long_double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_long_double.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_long_double_largest";

   function gsl_sort_long_double_largest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      src : access long_double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_long_double.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_long_double_largest_index";

end gsl_gsl_sort_long_double_h;
