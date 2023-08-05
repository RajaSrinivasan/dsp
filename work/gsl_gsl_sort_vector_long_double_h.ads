pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_vector_long_double_h;
limited with gsl_gsl_permutation_h;
with stddef_h;

package gsl_gsl_sort_vector_long_double_h is

   procedure gsl_sort_vector_long_double (v : access gsl_gsl_vector_long_double_h.gsl_vector_long_double)  -- /usr/include/gsl/gsl_sort_vector_long_double.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_long_double";

   procedure gsl_sort_vector2_long_double (v1 : access gsl_gsl_vector_long_double_h.gsl_vector_long_double; v2 : access gsl_gsl_vector_long_double_h.gsl_vector_long_double)  -- /usr/include/gsl/gsl_sort_vector_long_double.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector2_long_double";

   function gsl_sort_vector_long_double_index (p : access gsl_gsl_permutation_h.gsl_permutation; v : access constant gsl_gsl_vector_long_double_h.gsl_vector_long_double) return int  -- /usr/include/gsl/gsl_sort_vector_long_double.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_long_double_index";

   function gsl_sort_vector_long_double_smallest
     (dest : access long_double;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_long_double_h.gsl_vector_long_double) return int  -- /usr/include/gsl/gsl_sort_vector_long_double.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_long_double_smallest";

   function gsl_sort_vector_long_double_largest
     (dest : access long_double;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_long_double_h.gsl_vector_long_double) return int  -- /usr/include/gsl/gsl_sort_vector_long_double.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_long_double_largest";

   function gsl_sort_vector_long_double_smallest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_long_double_h.gsl_vector_long_double) return int  -- /usr/include/gsl/gsl_sort_vector_long_double.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_long_double_smallest_index";

   function gsl_sort_vector_long_double_largest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_long_double_h.gsl_vector_long_double) return int  -- /usr/include/gsl/gsl_sort_vector_long_double.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_long_double_largest_index";

end gsl_gsl_sort_vector_long_double_h;
