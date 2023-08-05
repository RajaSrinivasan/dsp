pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with aarch64_linux_gnu_bits_types_h;

package aarch64_linux_gnu_bits_types_struct_timespec_h is

   type timespec is record
      tv_sec : aliased aarch64_linux_gnu_bits_types_h.uu_time_t;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h:16
      tv_nsec : aliased aarch64_linux_gnu_bits_types_h.uu_syscall_slong_t;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h:21
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h:11

end aarch64_linux_gnu_bits_types_struct_timespec_h;
