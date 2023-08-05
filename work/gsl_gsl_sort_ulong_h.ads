pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;

package gsl_gsl_sort_ulong_h is

   procedure gsl_sort_ulong
     (data : access unsigned_long;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_ulong.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_ulong";

   procedure gsl_sort2_ulong
     (data1 : access unsigned_long;
      stride1 : stddef_h.size_t;
      data2 : access unsigned_long;
      stride2 : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_ulong.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort2_ulong";

   procedure gsl_sort_ulong_index
     (p : access stddef_h.size_t;
      data : access unsigned_long;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_ulong.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_ulong_index";

   function gsl_sort_ulong_smallest
     (dest : access unsigned_long;
      k : stddef_h.size_t;
      src : access unsigned_long;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_ulong.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_ulong_smallest";

   function gsl_sort_ulong_smallest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      src : access unsigned_long;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_ulong.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_ulong_smallest_index";

   function gsl_sort_ulong_largest
     (dest : access unsigned_long;
      k : stddef_h.size_t;
      src : access unsigned_long;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_ulong.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_ulong_largest";

   function gsl_sort_ulong_largest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      src : access unsigned_long;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_ulong.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_ulong_largest_index";

end gsl_gsl_sort_ulong_h;
