pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package aarch64_linux_gnu_bits_types_u_mbstate_t_h is

   --  skipped anonymous struct anon_anon_17

   subtype uu_mbstate_t_array2151 is Interfaces.C.char_array (0 .. 3);
   type anon_anon_18 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_wch : aliased unsigned;  -- /usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h:18
         when others =>
            uu_wchb : aliased uu_mbstate_t_array2151;  -- /usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h:19
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type uu_mbstate_t is record
      uu_count : aliased int;  -- /usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h:15
      uu_value : aliased anon_anon_18;  -- /usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h:20
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h:21

end aarch64_linux_gnu_bits_types_u_mbstate_t_h;
