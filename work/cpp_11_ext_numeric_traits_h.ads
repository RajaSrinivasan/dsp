pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package cpp_11_ext_numeric_traits_h is

   package uu_numeric_traits_floating_long_double is
      type uu_numeric_traits_floating is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy;









   end;
   use uu_numeric_traits_floating_long_double;

   package uu_numeric_traits_floating_double is
      type uu_numeric_traits_floating is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy;









   end;
   use uu_numeric_traits_floating_double;

   package uu_numeric_traits_floating_float is
      type uu_numeric_traits_floating is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy;









   end;
   use uu_numeric_traits_floating_float;



   package uu_numeric_traits_long_double is
      type uu_numeric_traits is limited record
         parent : aliased uu_numeric_traits_floating;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_numeric_traits_long_double;

   package uu_numeric_traits_double is
      type uu_numeric_traits is limited record
         parent : aliased uu_numeric_traits_floating;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_numeric_traits_double;

   package uu_numeric_traits_float is
      type uu_numeric_traits is limited record
         parent : aliased uu_numeric_traits_floating;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_numeric_traits_float;



end cpp_11_ext_numeric_traits_h;
