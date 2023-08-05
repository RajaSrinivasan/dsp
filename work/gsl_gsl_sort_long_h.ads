pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;

package gsl_gsl_sort_long_h is

   procedure gsl_sort_long
     (data : access long;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_long.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_long";

   procedure gsl_sort2_long
     (data1 : access long;
      stride1 : stddef_h.size_t;
      data2 : access long;
      stride2 : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_long.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort2_long";

   procedure gsl_sort_long_index
     (p : access stddef_h.size_t;
      data : access long;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_long.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_long_index";

   function gsl_sort_long_smallest
     (dest : access long;
      k : stddef_h.size_t;
      src : access long;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_long.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_long_smallest";

   function gsl_sort_long_smallest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      src : access long;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_long.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_long_smallest_index";

   function gsl_sort_long_largest
     (dest : access long;
      k : stddef_h.size_t;
      src : access long;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_long.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_long_largest";

   function gsl_sort_long_largest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      src : access long;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_long.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_long_largest_index";

end gsl_gsl_sort_long_h;
