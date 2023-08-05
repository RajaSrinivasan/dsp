pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with aarch64_linux_gnu_bits_types_h;

package aarch64_linux_gnu_bits_types_struct_timeval_h is

   type timeval is record
      tv_sec : aliased aarch64_linux_gnu_bits_types_h.uu_time_t;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_timeval.h:14
      tv_usec : aliased aarch64_linux_gnu_bits_types_h.uu_suseconds_t;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_timeval.h:15
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_timeval.h:8

end aarch64_linux_gnu_bits_types_struct_timeval_h;
