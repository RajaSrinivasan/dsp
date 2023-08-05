pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with aarch64_linux_gnu_bits_types_h;

package aarch64_linux_gnu_bits_types_clockid_t_h is

   subtype clockid_t is aarch64_linux_gnu_bits_types_h.uu_clockid_t;  -- /usr/include/aarch64-linux-gnu/bits/types/clockid_t.h:7

end aarch64_linux_gnu_bits_types_clockid_t_h;
