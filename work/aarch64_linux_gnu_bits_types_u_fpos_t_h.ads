pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with aarch64_linux_gnu_bits_types_h;
with aarch64_linux_gnu_bits_types_u_mbstate_t_h;

package aarch64_linux_gnu_bits_types_u_fpos_t_h is

   type u_G_fpos_t is record
      uu_pos : aliased aarch64_linux_gnu_bits_types_h.uu_off_t;  -- /usr/include/aarch64-linux-gnu/bits/types/__fpos_t.h:12
      uu_state : aliased aarch64_linux_gnu_bits_types_u_mbstate_t_h.uu_mbstate_t;  -- /usr/include/aarch64-linux-gnu/bits/types/__fpos_t.h:13
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/aarch64-linux-gnu/bits/types/__fpos_t.h:10

   subtype uu_fpos_t is u_G_fpos_t;  -- /usr/include/aarch64-linux-gnu/bits/types/__fpos_t.h:14

end aarch64_linux_gnu_bits_types_u_fpos_t_h;
