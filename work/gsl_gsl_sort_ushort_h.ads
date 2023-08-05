pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;

package gsl_gsl_sort_ushort_h is

   procedure gsl_sort_ushort
     (data : access unsigned_short;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_ushort.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_ushort";

   procedure gsl_sort2_ushort
     (data1 : access unsigned_short;
      stride1 : stddef_h.size_t;
      data2 : access unsigned_short;
      stride2 : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_ushort.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort2_ushort";

   procedure gsl_sort_ushort_index
     (p : access stddef_h.size_t;
      data : access unsigned_short;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_ushort.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_ushort_index";

   function gsl_sort_ushort_smallest
     (dest : access unsigned_short;
      k : stddef_h.size_t;
      src : access unsigned_short;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_ushort.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_ushort_smallest";

   function gsl_sort_ushort_smallest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      src : access unsigned_short;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_ushort.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_ushort_smallest_index";

   function gsl_sort_ushort_largest
     (dest : access unsigned_short;
      k : stddef_h.size_t;
      src : access unsigned_short;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_ushort.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_ushort_largest";

   function gsl_sort_ushort_largest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      src : access unsigned_short;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_ushort.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_ushort_largest_index";

end gsl_gsl_sort_ushort_h;
