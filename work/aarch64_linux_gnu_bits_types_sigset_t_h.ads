pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with aarch64_linux_gnu_bits_types_u_sigset_t_h;

package aarch64_linux_gnu_bits_types_sigset_t_h is

   subtype sigset_t is aarch64_linux_gnu_bits_types_u_sigset_t_h.uu_sigset_t;  -- /usr/include/aarch64-linux-gnu/bits/types/sigset_t.h:7

end aarch64_linux_gnu_bits_types_sigset_t_h;
