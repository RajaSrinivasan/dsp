pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;

package gsl_gsl_sort_short_h is

   procedure gsl_sort_short
     (data : access short;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_short.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_short";

   procedure gsl_sort2_short
     (data1 : access short;
      stride1 : stddef_h.size_t;
      data2 : access short;
      stride2 : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_short.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort2_short";

   procedure gsl_sort_short_index
     (p : access stddef_h.size_t;
      data : access short;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_short.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_short_index";

   function gsl_sort_short_smallest
     (dest : access short;
      k : stddef_h.size_t;
      src : access short;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_short.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_short_smallest";

   function gsl_sort_short_smallest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      src : access short;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_short.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_short_smallest_index";

   function gsl_sort_short_largest
     (dest : access short;
      k : stddef_h.size_t;
      src : access short;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_short.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_short_largest";

   function gsl_sort_short_largest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      src : access short;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_short.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_short_largest_index";

end gsl_gsl_sort_short_h;
