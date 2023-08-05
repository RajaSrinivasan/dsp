pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with aarch64_linux_gnu_bits_types_h;

package aarch64_linux_gnu_bits_types_time_t_h is

   subtype time_t is aarch64_linux_gnu_bits_types_h.uu_time_t;  -- /usr/include/aarch64-linux-gnu/bits/types/time_t.h:10

end aarch64_linux_gnu_bits_types_time_t_h;
