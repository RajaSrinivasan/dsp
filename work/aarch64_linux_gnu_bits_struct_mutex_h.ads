pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with aarch64_linux_gnu_bits_thread_shared_types_h;

package aarch64_linux_gnu_bits_struct_mutex_h is

   type uu_pthread_mutex_s is record
      uu_lock : aliased int;  -- /usr/include/aarch64-linux-gnu/bits/struct_mutex.h:29
      uu_count : aliased unsigned;  -- /usr/include/aarch64-linux-gnu/bits/struct_mutex.h:30
      uu_owner : aliased int;  -- /usr/include/aarch64-linux-gnu/bits/struct_mutex.h:31
      uu_nusers : aliased unsigned;  -- /usr/include/aarch64-linux-gnu/bits/struct_mutex.h:33
      uu_kind : aliased int;  -- /usr/include/aarch64-linux-gnu/bits/struct_mutex.h:58
      uu_spins : aliased int;  -- /usr/include/aarch64-linux-gnu/bits/struct_mutex.h:63
      uu_list : aliased aarch64_linux_gnu_bits_thread_shared_types_h.uu_pthread_list_t;  -- /usr/include/aarch64-linux-gnu/bits/struct_mutex.h:64
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/aarch64-linux-gnu/bits/struct_mutex.h:27

end aarch64_linux_gnu_bits_struct_mutex_h;
