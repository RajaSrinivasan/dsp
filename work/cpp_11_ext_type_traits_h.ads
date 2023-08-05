pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package cpp_11_ext_type_traits_h is

   package uu_add_unsigned_wchar_t is
      type uu_add_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_add_unsigned_wchar_t;

   package uu_add_unsigned_bool is
      type uu_add_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_add_unsigned_bool;

   package uu_add_unsigned_Long_Long_Integer is
      type uu_add_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_add_unsigned_Long_Long_Integer;

   package uu_add_unsigned_long is
      type uu_add_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_add_unsigned_long;

   package uu_add_unsigned_int is
      type uu_add_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_add_unsigned_int;

   package uu_add_unsigned_short is
      type uu_add_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_add_unsigned_short;

   package uu_add_unsigned_signed_char is
      type uu_add_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_add_unsigned_signed_char;

   package uu_add_unsigned_char is
      type uu_add_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_add_unsigned_char;



   package uu_remove_unsigned_wchar_t is
      type uu_remove_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_remove_unsigned_wchar_t;

   package uu_remove_unsigned_bool is
      type uu_remove_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_remove_unsigned_bool;

   package uu_remove_unsigned_unsigned_long_long is
      type uu_remove_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_remove_unsigned_unsigned_long_long;

   package uu_remove_unsigned_unsigned_long is
      type uu_remove_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_remove_unsigned_unsigned_long;

   package uu_remove_unsigned_unsigned is
      type uu_remove_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_remove_unsigned_unsigned;

   package uu_remove_unsigned_unsigned_short is
      type uu_remove_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_remove_unsigned_unsigned_short;

   package uu_remove_unsigned_unsigned_char is
      type uu_remove_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_remove_unsigned_unsigned_char;

   package uu_remove_unsigned_char is
      type uu_remove_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_remove_unsigned_char;



   --  skipped func __is_null_pointer

   package uu_promote_float_0 is
      type uu_promote is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_promote_float_0;

   package uu_promote_double_0 is
      type uu_promote is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_promote_double_0;

   package uu_promote_long_double_0 is
      type uu_promote is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_promote_long_double_0;



end cpp_11_ext_type_traits_h;
