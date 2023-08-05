pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package aarch64_linux_gnu_bits_struct_rwlock_h is

   type uu_pthread_rwlock_arch_t is record
      uu_readers : aliased unsigned;  -- /usr/include/aarch64-linux-gnu/bits/struct_rwlock.h:25
      uu_writers : aliased unsigned;  -- /usr/include/aarch64-linux-gnu/bits/struct_rwlock.h:26
      uu_wrphase_futex : aliased unsigned;  -- /usr/include/aarch64-linux-gnu/bits/struct_rwlock.h:27
      uu_writers_futex : aliased unsigned;  -- /usr/include/aarch64-linux-gnu/bits/struct_rwlock.h:28
      uu_pad3 : aliased unsigned;  -- /usr/include/aarch64-linux-gnu/bits/struct_rwlock.h:29
      uu_pad4 : aliased unsigned;  -- /usr/include/aarch64-linux-gnu/bits/struct_rwlock.h:30
      uu_cur_writer : aliased int;  -- /usr/include/aarch64-linux-gnu/bits/struct_rwlock.h:31
      uu_shared : aliased int;  -- /usr/include/aarch64-linux-gnu/bits/struct_rwlock.h:32
      uu_pad1 : aliased unsigned_long;  -- /usr/include/aarch64-linux-gnu/bits/struct_rwlock.h:33
      uu_pad2 : aliased unsigned_long;  -- /usr/include/aarch64-linux-gnu/bits/struct_rwlock.h:34
      uu_flags : aliased unsigned;  -- /usr/include/aarch64-linux-gnu/bits/struct_rwlock.h:35
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/aarch64-linux-gnu/bits/struct_rwlock.h:23

end aarch64_linux_gnu_bits_struct_rwlock_h;
