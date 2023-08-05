pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;

package gsl_gsl_sort_uchar_h is

   procedure gsl_sort_uchar
     (data : access unsigned_char;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_uchar.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_uchar";

   procedure gsl_sort2_uchar
     (data1 : access unsigned_char;
      stride1 : stddef_h.size_t;
      data2 : access unsigned_char;
      stride2 : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_uchar.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort2_uchar";

   procedure gsl_sort_uchar_index
     (p : access stddef_h.size_t;
      data : access unsigned_char;
      stride : stddef_h.size_t;
      n : stddef_h.size_t)  -- /usr/include/gsl/gsl_sort_uchar.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_uchar_index";

   function gsl_sort_uchar_smallest
     (dest : access unsigned_char;
      k : stddef_h.size_t;
      src : access unsigned_char;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_uchar.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_uchar_smallest";

   function gsl_sort_uchar_smallest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      src : access unsigned_char;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_uchar.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_uchar_smallest_index";

   function gsl_sort_uchar_largest
     (dest : access unsigned_char;
      k : stddef_h.size_t;
      src : access unsigned_char;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_uchar.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_uchar_largest";

   function gsl_sort_uchar_largest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      src : access unsigned_char;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_sort_uchar.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_uchar_largest_index";

end gsl_gsl_sort_uchar_h;
