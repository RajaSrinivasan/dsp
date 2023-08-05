pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;

package gsl_gsl_sort_uint_h is

   procedure gsl_sort_uint
     (data : access unsigned;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_uint.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_uint";

   procedure gsl_sort2_uint
     (data1 : access unsigned;
      stride1 : stddef_h.size_t;
      data2 : access unsigned;
      stride2 : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_uint.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort2_uint";

   procedure gsl_sort_uint_index
     (p : access stddef_h.size_t;
      data : access unsigned;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_uint.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_uint_index";

   function gsl_sort_uint_smallest
     (dest : access unsigned;
      k : stddef_h.size_t;
      src : access unsigned;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_uint.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_uint_smallest";

   function gsl_sort_uint_smallest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      src : access unsigned;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_uint.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_uint_smallest_index";

   function gsl_sort_uint_largest
     (dest : access unsigned;
      k : stddef_h.size_t;
      src : access unsigned;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_uint.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_uint_largest";

   function gsl_sort_uint_largest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      src : access unsigned;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_uint.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_uint_largest_index";

end gsl_gsl_sort_uint_h;
