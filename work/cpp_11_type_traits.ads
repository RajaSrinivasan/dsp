pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package cpp_11_type_traits is

   package integral_constant_unsigned_long_0 is
      type integral_constant is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      --  skipped func __conv_op 

      function operator_op (this : access constant integral_constant) return value_type  -- /usr/include/c++/11/type_traits:75
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNKSt17integral_constantImLm0EEclEv";

      value : aliased constant unsigned_long  -- /usr/include/c++/11/type_traits:67
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt17integral_constantImLm0EE5valueE";

   end;
   use integral_constant_unsigned_long_0;

   package integral_constant_bool_0 is
      type integral_constant is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      --  skipped func __conv_op 

      function operator_op (this : access constant integral_constant) return value_type  -- /usr/include/c++/11/type_traits:75
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNKSt17integral_constantIbLb0EEclEv";

      value : aliased constant Extensions.bool  -- /usr/include/c++/11/type_traits:67
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt17integral_constantIbLb0EE5valueE";

   end;
   use integral_constant_bool_0;

   package integral_constant_bool_1 is
      type integral_constant is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      --  skipped func __conv_op 

      function operator_op (this : access constant integral_constant) return value_type  -- /usr/include/c++/11/type_traits:75
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNKSt17integral_constantIbLb1EEclEv";

      value : aliased constant Extensions.bool  -- /usr/include/c++/11/type_traits:67
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt17integral_constantIbLb1EE5valueE";

   end;
   use integral_constant_bool_1;



   subtype true_type is integral_constant;  -- /usr/include/c++/11/type_traits:83

   subtype false_type is integral_constant;  -- /usr/include/c++/11/type_traits:86

   package uu_or_u_unknown51504 is
      type uu_or_u is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_or_u_unknown51504;



   package uu_and_u_unknown81184 is
      type uu_and_u is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_and_u_unknown81184;



   package is_void_address is
      type is_void is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_void_address;



   package remove_cv_address is
      type remove_cv is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use remove_cv_address;

   package remove_cv_char32_t is
      type remove_cv is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use remove_cv_char32_t;

   package remove_cv_unsigned_short is
      type remove_cv is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use remove_cv_unsigned_short;

   package remove_cv_char16_t is
      type remove_cv is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use remove_cv_char16_t;

   package remove_cv_unsigned is
      type remove_cv is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use remove_cv_unsigned;

   package remove_cv_wchar_t is
      type remove_cv is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use remove_cv_wchar_t;



   package is_const_unsigned_short is
      type is_const is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_const_unsigned_short;

   package is_const_unsigned is
      type is_const is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_const_unsigned;

   package is_const_char32_t is
      type is_const is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_const_char32_t;

   package is_const_char16_t is
      type is_const is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_const_char16_t;

   package is_const_wchar_t is
      type is_const is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_const_wchar_t;



   type uu_failure_type is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:250

   package uu_is_void_helper_address is
      type uu_is_void_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_void_helper_address;



   package uu_is_integral_helper_uu_int128_unsigned is
      type uu_is_integral_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integral_helper_uu_int128_unsigned;

   package uu_is_integral_helper_Extensions.Signed_128 is
      type uu_is_integral_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integral_helper_Extensions.Signed_128;

   package uu_is_integral_helper_unsigned_long_long is
      type uu_is_integral_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integral_helper_unsigned_long_long;

   package uu_is_integral_helper_Long_Long_Integer is
      type uu_is_integral_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integral_helper_Long_Long_Integer;

   package uu_is_integral_helper_unsigned_long is
      type uu_is_integral_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integral_helper_unsigned_long;

   package uu_is_integral_helper_long is
      type uu_is_integral_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integral_helper_long;

   package uu_is_integral_helper_unsigned is
      type uu_is_integral_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integral_helper_unsigned;

   package uu_is_integral_helper_int is
      type uu_is_integral_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integral_helper_int;

   package uu_is_integral_helper_unsigned_short is
      type uu_is_integral_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integral_helper_unsigned_short;

   package uu_is_integral_helper_short is
      type uu_is_integral_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integral_helper_short;

   package uu_is_integral_helper_char32_t is
      type uu_is_integral_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integral_helper_char32_t;

   package uu_is_integral_helper_char16_t is
      type uu_is_integral_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integral_helper_char16_t;

   package uu_is_integral_helper_wchar_t is
      type uu_is_integral_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integral_helper_wchar_t;

   package uu_is_integral_helper_unsigned_char is
      type uu_is_integral_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integral_helper_unsigned_char;

   package uu_is_integral_helper_signed_char is
      type uu_is_integral_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integral_helper_signed_char;

   package uu_is_integral_helper_char is
      type uu_is_integral_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integral_helper_char;

   package uu_is_integral_helper_bool is
      type uu_is_integral_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_integral_helper_bool;



   package is_integral_char32_t is
      type is_integral is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_integral_char32_t;

   package is_integral_unsigned_short is
      type is_integral is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_integral_unsigned_short;

   package is_integral_char16_t is
      type is_integral is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_integral_char16_t;

   package is_integral_unsigned is
      type is_integral is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_integral_unsigned;

   package is_integral_wchar_t is
      type is_integral is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_integral_wchar_t;



   package uu_is_floating_point_helper_long_double is
      type uu_is_floating_point_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_floating_point_helper_long_double;

   package uu_is_floating_point_helper_double is
      type uu_is_floating_point_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_floating_point_helper_double;

   package uu_is_floating_point_helper_float is
      type uu_is_floating_point_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_floating_point_helper_float;



   package is_enum_char32_t is
      type is_enum is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_enum_char32_t;

   package is_enum_unsigned_short is
      type is_enum is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_enum_unsigned_short;

   package is_enum_char16_t is
      type is_enum is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_enum_char16_t;

   package is_enum_unsigned is
      type is_enum is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_enum_unsigned;

   package is_enum_wchar_t is
      type is_enum is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_enum_wchar_t;



   package uu_is_null_pointer_helper_address is
      type uu_is_null_pointer_helper is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_is_null_pointer_helper_address;



   package is_volatile_unsigned_short is
      type is_volatile is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_volatile_unsigned_short;

   package is_volatile_unsigned is
      type is_volatile is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_volatile_unsigned;

   package is_volatile_char32_t is
      type is_volatile is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_volatile_char32_t;

   package is_volatile_char16_t is
      type is_volatile is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_volatile_char16_t;

   package is_volatile_wchar_t is
      type is_volatile is limited record
         parent : aliased integral_constant;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use is_volatile_wchar_t;



   type uu_do_is_destructible_impl is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:842

   type uu_do_is_nt_destructible_impl is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:895

   package Class_uu_do_is_implicitly_default_constructible_impl is
      type uu_do_is_implicitly_default_constructible_impl is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      --  skipped func __test
   end;
   use Class_uu_do_is_implicitly_default_constructible_impl;
   package uu_cv_selector_short_0_0 is
      type uu_cv_selector is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_cv_selector_short_0_0;

   package uu_cv_selector_int_0_0 is
      type uu_cv_selector is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_cv_selector_int_0_0;

   package uu_cv_selector_unsigned_short_0_0 is
      type uu_cv_selector is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_cv_selector_unsigned_short_0_0;

   package uu_cv_selector_unsigned_0_0 is
      type uu_cv_selector is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_cv_selector_unsigned_0_0;



   package uu_match_cv_qualifiers_unsigned_short_short_0_0 is
      type uu_match_cv_qualifiers is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_match_cv_qualifiers_unsigned_short_short_0_0;

   package uu_match_cv_qualifiers_unsigned_int_0_0 is
      type uu_match_cv_qualifiers is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_match_cv_qualifiers_unsigned_int_0_0;

   package uu_match_cv_qualifiers_char32_t_unsigned_0_0 is
      type uu_match_cv_qualifiers is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_match_cv_qualifiers_char32_t_unsigned_0_0;

   package uu_match_cv_qualifiers_char16_t_unsigned_short_0_0 is
      type uu_match_cv_qualifiers is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_match_cv_qualifiers_char16_t_unsigned_short_0_0;

   package uu_match_cv_qualifiers_wchar_t_unsigned_0_0 is
      type uu_match_cv_qualifiers is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_match_cv_qualifiers_wchar_t_unsigned_0_0;



   package uu_make_unsigned_char32_t is
      type uu_make_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_unsigned_char32_t;

   package uu_make_unsigned_char16_t is
      type uu_make_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_unsigned_char16_t;

   package uu_make_unsigned_wchar_t is
      type uu_make_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_unsigned_wchar_t;

   package uu_make_unsigned_Extensions.Signed_128 is
      type uu_make_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_unsigned_Extensions.Signed_128;

   package uu_make_unsigned_Long_Long_Integer is
      type uu_make_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_unsigned_Long_Long_Integer;

   package uu_make_unsigned_long is
      type uu_make_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_unsigned_long;

   package uu_make_unsigned_int is
      type uu_make_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_unsigned_int;

   package uu_make_unsigned_short is
      type uu_make_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_unsigned_short;

   package uu_make_unsigned_signed_char is
      type uu_make_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_unsigned_signed_char;

   package uu_make_unsigned_char is
      type uu_make_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_unsigned_char;



   package uu_make_unsigned_selector_char32_t_1_0 is
      type uu_make_unsigned_selector is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_unsigned_selector_char32_t_1_0;

   package uu_make_unsigned_selector_char16_t_1_0 is
      type uu_make_unsigned_selector is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_unsigned_selector_char16_t_1_0;

   package uu_make_unsigned_selector_wchar_t_1_0 is
      type uu_make_unsigned_selector is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_unsigned_selector_wchar_t_1_0;

   package uu_make_unsigned_selector_char32_t_0_1 is
      type uu_make_unsigned_selector is limited record
         parent : aliased uu_make_unsigned_selector_base;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_unsigned_selector_char32_t_0_1;

   package uu_make_unsigned_selector_char16_t_0_1 is
      type uu_make_unsigned_selector is limited record
         parent : aliased uu_make_unsigned_selector_base;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_unsigned_selector_char16_t_0_1;

   package uu_make_unsigned_selector_wchar_t_0_1 is
      type uu_make_unsigned_selector is limited record
         parent : aliased uu_make_unsigned_selector_base;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_unsigned_selector_wchar_t_0_1;



   type uu_make_unsigned_selector_base is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:1752

   package make_unsigned_bool is
      type make_unsigned is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use make_unsigned_bool;



   package uu_make_signed_char32_t is
      type uu_make_signed is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_signed_char32_t;

   package uu_make_signed_char16_t is
      type uu_make_signed is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_signed_char16_t;

   package uu_make_signed_wchar_t is
      type uu_make_signed is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_signed_wchar_t;

   package uu_make_signed_uu_int128_unsigned is
      type uu_make_signed is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_signed_uu_int128_unsigned;

   package uu_make_signed_unsigned_long_long is
      type uu_make_signed is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_signed_unsigned_long_long;

   package uu_make_signed_unsigned_long is
      type uu_make_signed is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_signed_unsigned_long;

   package uu_make_signed_unsigned is
      type uu_make_signed is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_signed_unsigned;

   package uu_make_signed_unsigned_short is
      type uu_make_signed is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_signed_unsigned_short;

   package uu_make_signed_unsigned_char is
      type uu_make_signed is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_signed_unsigned_char;

   package uu_make_signed_char is
      type uu_make_signed is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_signed_char;



   package uu_make_signed_selector_char32_t_0_1 is
      type uu_make_signed_selector is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_signed_selector_char32_t_0_1;

   package uu_make_signed_selector_unsigned_short_1_0 is
      type uu_make_signed_selector is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_signed_selector_unsigned_short_1_0;

   package uu_make_signed_selector_char16_t_0_1 is
      type uu_make_signed_selector is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_signed_selector_char16_t_0_1;

   package uu_make_signed_selector_unsigned_1_0 is
      type uu_make_signed_selector is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_signed_selector_unsigned_1_0;

   package uu_make_signed_selector_wchar_t_0_1 is
      type uu_make_signed_selector is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_make_signed_selector_wchar_t_0_1;



   package make_signed_bool is
      type make_signed is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use make_signed_bool;



   package common_type_unknown145880 is
      type common_type is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use common_type_unknown145880;



   type uu_do_common_type_impl is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:2235

   type uu_invoke_memfun_ref is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:2374

   type uu_invoke_memfun_deref is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:2375

   type uu_invoke_memobj_ref is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:2376

   type uu_invoke_memobj_deref is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:2377

   type uu_invoke_other is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:2378

   type uu_result_of_memfun_ref_impl is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:2386

   type uu_result_of_memfun_deref_impl is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:2405

   type uu_result_of_memobj_ref_impl is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:2424

   type uu_result_of_memobj_deref_impl is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:2443

   type uu_result_of_other_impl is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:2526

   type uu_do_is_swappable_impl is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:2691

   type uu_do_is_nothrow_swappable_impl is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:2701

   type uu_do_is_swappable_with_impl is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:2777

   type uu_do_is_nothrow_swappable_with_impl is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:2789

   type uu_nonesuchbase is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/type_traits:2990

   package Class_uu_nonesuch is
      type uu_nonesuch is limited record
         parent : aliased uu_nonesuchbase;
      end record
      with Import => True,
           Convention => CPP;

      procedure Delete_uu_nonesuch (this : access uu_nonesuch)  -- /usr/include/c++/11/type_traits:2992
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt10__nonesuchD1Ev";

      procedure Assign_uu_nonesuch (this : access uu_nonesuch; arg2 : access constant uu_nonesuch)  -- /usr/include/c++/11/type_traits:2994
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt10__nonesuchaSERKS_";
   end;
   use Class_uu_nonesuch;
end cpp_11_type_traits;
