pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_vector_short_h;
limited with gsl_gsl_permutation_h;
with stddef_h;

package gsl_gsl_sort_vector_short_h is

   procedure gsl_sort_vector_short (v : access gsl_gsl_vector_short_h.gsl_vector_short)  -- /usr/include/gsl/gsl_sort_vector_short.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_short";

   procedure gsl_sort_vector2_short (v1 : access gsl_gsl_vector_short_h.gsl_vector_short; v2 : access gsl_gsl_vector_short_h.gsl_vector_short)  -- /usr/include/gsl/gsl_sort_vector_short.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector2_short";

   function gsl_sort_vector_short_index (p : access gsl_gsl_permutation_h.gsl_permutation; v : access constant gsl_gsl_vector_short_h.gsl_vector_short) return int  -- /usr/include/gsl/gsl_sort_vector_short.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_short_index";

   function gsl_sort_vector_short_smallest
     (dest : access short;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_short_h.gsl_vector_short) return int  -- /usr/include/gsl/gsl_sort_vector_short.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_short_smallest";

   function gsl_sort_vector_short_largest
     (dest : access short;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_short_h.gsl_vector_short) return int  -- /usr/include/gsl/gsl_sort_vector_short.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_short_largest";

   function gsl_sort_vector_short_smallest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_short_h.gsl_vector_short) return int  -- /usr/include/gsl/gsl_sort_vector_short.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_short_smallest_index";

   function gsl_sort_vector_short_largest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_short_h.gsl_vector_short) return int  -- /usr/include/gsl/gsl_sort_vector_short.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_short_largest_index";

end gsl_gsl_sort_vector_short_h;
