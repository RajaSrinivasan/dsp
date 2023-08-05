pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with aarch64_linux_gnu_bits_types_h;

package aarch64_linux_gnu_bits_types_timer_t_h is

   subtype timer_t is aarch64_linux_gnu_bits_types_h.uu_timer_t;  -- /usr/include/aarch64-linux-gnu/bits/types/timer_t.h:7

end aarch64_linux_gnu_bits_types_timer_t_h;
