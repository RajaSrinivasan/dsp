pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;

package gsl_gsl_sort_double_h is

   procedure gsl_sort
     (data : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_double.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort";

   procedure gsl_sort2
     (data1 : access double;
      stride1 : stddef_h.size_t;
      data2 : access double;
      stride2 : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_double.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort2";

   procedure gsl_sort_index
     (p : access stddef_h.size_t;
      data : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_double.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_index";

   function gsl_sort_smallest
     (dest : access double;
      k : stddef_h.size_t;
      src : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_double.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_smallest";

   function gsl_sort_smallest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      src : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_double.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_smallest_index";

   function gsl_sort_largest
     (dest : access double;
      k : stddef_h.size_t;
      src : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_double.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_largest";

   function gsl_sort_largest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      src : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_double.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_largest_index";

end gsl_gsl_sort_double_h;
