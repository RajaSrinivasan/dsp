pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package aarch64_linux_gnu_bits_types_u_locale_t_h is

   type uu_locale_data;
   type uu_locale_struct_array1726 is array (0 .. 12) of access uu_locale_data;
   type uu_locale_struct_array1729 is array (0 .. 12) of Interfaces.C.Strings.chars_ptr;
   type uu_locale_struct is record
      uu_locales : uu_locale_struct_array1726;  -- /usr/include/aarch64-linux-gnu/bits/types/__locale_t.h:30
      uu_ctype_b : access unsigned_short;  -- /usr/include/aarch64-linux-gnu/bits/types/__locale_t.h:33
      uu_ctype_tolower : access int;  -- /usr/include/aarch64-linux-gnu/bits/types/__locale_t.h:34
      uu_ctype_toupper : access int;  -- /usr/include/aarch64-linux-gnu/bits/types/__locale_t.h:35
      uu_names : uu_locale_struct_array1729;  -- /usr/include/aarch64-linux-gnu/bits/types/__locale_t.h:38
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/aarch64-linux-gnu/bits/types/__locale_t.h:27

   type uu_locale_data is null record;   -- incomplete struct

   type uu_locale_t is access all uu_locale_struct;  -- /usr/include/aarch64-linux-gnu/bits/types/__locale_t.h:41

end aarch64_linux_gnu_bits_types_u_locale_t_h;
