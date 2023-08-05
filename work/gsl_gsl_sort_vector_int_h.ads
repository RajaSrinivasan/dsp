pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with gsl_gsl_vector_int_h;
limited with gsl_gsl_permutation_h;
with stddef_h;

package gsl_gsl_sort_vector_int_h is

   procedure gsl_sort_vector_int (v : access gsl_gsl_vector_int_h.gsl_vector_int)  -- /usr/include/gsl/gsl_sort_vector_int.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_int";

   procedure gsl_sort_vector2_int (v1 : access gsl_gsl_vector_int_h.gsl_vector_int; v2 : access gsl_gsl_vector_int_h.gsl_vector_int)  -- /usr/include/gsl/gsl_sort_vector_int.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector2_int";

   function gsl_sort_vector_int_index (p : access gsl_gsl_permutation_h.gsl_permutation; v : access constant gsl_gsl_vector_int_h.gsl_vector_int) return int  -- /usr/include/gsl/gsl_sort_vector_int.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_int_index";

   function gsl_sort_vector_int_smallest
     (dest : access int;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_int_h.gsl_vector_int) return int  -- /usr/include/gsl/gsl_sort_vector_int.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_int_smallest";

   function gsl_sort_vector_int_largest
     (dest : access int;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_int_h.gsl_vector_int) return int  -- /usr/include/gsl/gsl_sort_vector_int.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_int_largest";

   function gsl_sort_vector_int_smallest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_int_h.gsl_vector_int) return int  -- /usr/include/gsl/gsl_sort_vector_int.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_int_smallest_index";

   function gsl_sort_vector_int_largest_index
     (p : access stddef_h.size_t;
      k : stddef_h.size_t;
      v : access constant gsl_gsl_vector_int_h.gsl_vector_int) return int  -- /usr/include/gsl/gsl_sort_vector_int.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_sort_vector_int_largest_index";

end gsl_gsl_sort_vector_int_h;
