pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_vector_ushort_h;
limited with gsl_gsl_permutation_h;
with stddef_h;

package gsl_gsl_sort_vector_ushort_h is

   procedure gsl_sort_vector_ushort (v : access gsl_gsl_vector_ushort_h.gsl_vector_ushort)  -- /usr/include/gsl/gsl_sort_vector_ushort.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_ushort";

   procedure gsl_sort_vector2_ushort (v1 : access gsl_gsl_vector_ushort_h.gsl_vector_ushort; v2 : access gsl_gsl_vector_ushort_h.gsl_vector_ushort)  -- /usr/include/gsl/gsl_sort_vector_ushort.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector2_ushort";

   function gsl_sort_vector_ushort_index (p : access gsl_gsl_permutation_h.gsl_permutation; v : access constant gsl_gsl_vector_ushort_h.gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_sort_vector_ushort.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_ushort_index";

   function gsl_sort_vector_ushort_smallest
     (dest : access unsigned_short;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_ushort_h.gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_sort_vector_ushort.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_ushort_smallest";

   function gsl_sort_vector_ushort_largest
     (dest : access unsigned_short;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_ushort_h.gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_sort_vector_ushort.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_ushort_largest";

   function gsl_sort_vector_ushort_smallest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_ushort_h.gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_sort_vector_ushort.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_ushort_smallest_index";

   function gsl_sort_vector_ushort_largest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_ushort_h.gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_sort_vector_ushort.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_ushort_largest_index";

end gsl_gsl_sort_vector_ushort_h;
