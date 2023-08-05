pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_vector_uint_h;
limited with gsl_gsl_permutation_h;
with stddef_h;

package gsl_gsl_sort_vector_uint_h is

   procedure gsl_sort_vector_uint (v : access gsl_gsl_vector_uint_h.gsl_vector_uint)  -- /usr/include/gsl/gsl_sort_vector_uint.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_uint";

   procedure gsl_sort_vector2_uint (v1 : access gsl_gsl_vector_uint_h.gsl_vector_uint; v2 : access gsl_gsl_vector_uint_h.gsl_vector_uint)  -- /usr/include/gsl/gsl_sort_vector_uint.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector2_uint";

   function gsl_sort_vector_uint_index (p : access gsl_gsl_permutation_h.gsl_permutation; v : access constant gsl_gsl_vector_uint_h.gsl_vector_uint) return int  -- /usr/include/gsl/gsl_sort_vector_uint.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_uint_index";

   function gsl_sort_vector_uint_smallest
     (dest : access unsigned;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_uint_h.gsl_vector_uint) return int  -- /usr/include/gsl/gsl_sort_vector_uint.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_uint_smallest";

   function gsl_sort_vector_uint_largest
     (dest : access unsigned;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_uint_h.gsl_vector_uint) return int  -- /usr/include/gsl/gsl_sort_vector_uint.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_uint_largest";

   function gsl_sort_vector_uint_smallest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_uint_h.gsl_vector_uint) return int  -- /usr/include/gsl/gsl_sort_vector_uint.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_uint_smallest_index";

   function gsl_sort_vector_uint_largest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_uint_h.gsl_vector_uint) return int  -- /usr/include/gsl/gsl_sort_vector_uint.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_uint_largest_index";

end gsl_gsl_sort_vector_uint_h;
