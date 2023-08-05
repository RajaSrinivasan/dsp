pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_vector_long_h;
limited with gsl_gsl_permutation_h;
with stddef_h;

package gsl_gsl_sort_vector_long_h is

   procedure gsl_sort_vector_long (v : access gsl_gsl_vector_long_h.gsl_vector_long)  -- /usr/include/gsl/gsl_sort_vector_long.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_long";

   procedure gsl_sort_vector2_long (v1 : access gsl_gsl_vector_long_h.gsl_vector_long; v2 : access gsl_gsl_vector_long_h.gsl_vector_long)  -- /usr/include/gsl/gsl_sort_vector_long.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector2_long";

   function gsl_sort_vector_long_index (p : access gsl_gsl_permutation_h.gsl_permutation; v : access constant gsl_gsl_vector_long_h.gsl_vector_long) return int  -- /usr/include/gsl/gsl_sort_vector_long.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_long_index";

   function gsl_sort_vector_long_smallest
     (dest : access long;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_long_h.gsl_vector_long) return int  -- /usr/include/gsl/gsl_sort_vector_long.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_long_smallest";

   function gsl_sort_vector_long_largest
     (dest : access long;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_long_h.gsl_vector_long) return int  -- /usr/include/gsl/gsl_sort_vector_long.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_long_largest";

   function gsl_sort_vector_long_smallest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_long_h.gsl_vector_long) return int  -- /usr/include/gsl/gsl_sort_vector_long.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_long_smallest_index";

   function gsl_sort_vector_long_largest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_long_h.gsl_vector_long) return int  -- /usr/include/gsl/gsl_sort_vector_long.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_long_largest_index";

end gsl_gsl_sort_vector_long_h;
