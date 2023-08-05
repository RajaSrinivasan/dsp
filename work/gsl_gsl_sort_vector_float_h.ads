pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_vector_float_h;
limited with gsl_gsl_permutation_h;
with stddef_h;

package gsl_gsl_sort_vector_float_h is

   procedure gsl_sort_vector_float (v : access gsl_gsl_vector_float_h.gsl_vector_float)  -- /usr/include/gsl/gsl_sort_vector_float.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_float";

   procedure gsl_sort_vector2_float (v1 : access gsl_gsl_vector_float_h.gsl_vector_float; v2 : access gsl_gsl_vector_float_h.gsl_vector_float)  -- /usr/include/gsl/gsl_sort_vector_float.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector2_float";

   function gsl_sort_vector_float_index (p : access gsl_gsl_permutation_h.gsl_permutation; v : access constant gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_sort_vector_float.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_float_index";

   function gsl_sort_vector_float_smallest
     (dest : access float;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_sort_vector_float.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_float_smallest";

   function gsl_sort_vector_float_largest
     (dest : access float;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_sort_vector_float.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_float_largest";

   function gsl_sort_vector_float_smallest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_sort_vector_float.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_float_smallest_index";

   function gsl_sort_vector_float_largest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_sort_vector_float.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_float_largest_index";

end gsl_gsl_sort_vector_float_h;
