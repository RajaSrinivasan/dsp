pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
with Interfaces.C.Strings;

package gsl_gsl_permute_char_h is

   function gsl_permute_char
     (p : access stddef_h.size_t;
      data : Interfaces.C.Strings.chars_ptr;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_permute_char.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_char";

   function gsl_permute_char_inverse
     (p : access stddef_h.size_t;
      data : Interfaces.C.Strings.chars_ptr;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_permute_char.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_permute_char_inverse";

end gsl_gsl_permute_char_h;
