pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package cpp_11_bits_cpp_type_traits_h is

   type uu_true_type is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/bits/cpp_type_traits.h:73

   type uu_false_type is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/bits/cpp_type_traits.h:74

   package uu_truth_type_1 is
      type uu_truth_type is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_truth_type_1;



   package uu_is_void_address is
      type uu_is_void is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_void_address;



   package uu_is_integer_float is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_float;

   package uu_is_integer_double is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_double;

   package uu_is_integer_long_double is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_long_double;

   package uu_is_integer_uu_int128_unsigned is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_uu_int128_unsigned;

   package uu_is_integer_Extensions.Signed_128 is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_Extensions.Signed_128;

   package uu_is_integer_unsigned_long_long is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_unsigned_long_long;

   package uu_is_integer_Long_Long_Integer is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_Long_Long_Integer;

   package uu_is_integer_unsigned_long is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_unsigned_long;

   package uu_is_integer_long is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_long;

   package uu_is_integer_unsigned is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_unsigned;

   package uu_is_integer_int is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_int;

   package uu_is_integer_unsigned_short is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_unsigned_short;

   package uu_is_integer_short is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_short;

   package uu_is_integer_char32_t is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_char32_t;

   package uu_is_integer_char16_t is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_char16_t;

   package uu_is_integer_wchar_t is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_wchar_t;

   package uu_is_integer_unsigned_char is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_unsigned_char;

   package uu_is_integer_signed_char is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_signed_char;

   package uu_is_integer_char is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_char;

   package uu_is_integer_bool is
      type uu_is_integer is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integer_bool;



   package uu_is_floating_long_double is
      type uu_is_floating is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_floating_long_double;

   package uu_is_floating_double is
      type uu_is_floating is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_floating_double;

   package uu_is_floating_float is
      type uu_is_floating is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_floating_float;



   package uu_is_char_wchar_t is
      type uu_is_char is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_char_wchar_t;

   package uu_is_char_char is
      type uu_is_char is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_char_char;



   package uu_is_byte_byte is
      type uu_is_byte is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_byte_byte;

   package uu_is_byte_unsigned_char is
      type uu_is_byte is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_byte_unsigned_char;

   package uu_is_byte_signed_char is
      type uu_is_byte is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_byte_signed_char;

   package uu_is_byte_char is
      type uu_is_byte is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_byte_char;



   type byte is 
     ()
   with Convention => C;  -- /usr/include/c++/11/bits/cpp_type_traits.h:404

   package uu_is_memcmp_ordered_with_byte_byte_1 is
      type uu_is_memcmp_ordered_with is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy;



   end;
   use uu_is_memcmp_ordered_with_byte_byte_1;



end cpp_11_bits_cpp_type_traits_h;
