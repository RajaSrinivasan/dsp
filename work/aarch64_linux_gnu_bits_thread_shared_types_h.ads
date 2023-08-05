pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with aarch64_linux_gnu_bits_atomic_wide_counter_h;

package aarch64_linux_gnu_bits_thread_shared_types_h is

   type uu_pthread_internal_list;
   type uu_pthread_internal_list is record
      uu_prev : access uu_pthread_internal_list;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:53
      uu_next : access uu_pthread_internal_list;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:51

   subtype uu_pthread_list_t is uu_pthread_internal_list;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:55

   type uu_pthread_internal_slist;
   type uu_pthread_internal_slist is record
      uu_next : access uu_pthread_internal_slist;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:59
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:57

   subtype uu_pthread_slist_t is uu_pthread_internal_slist;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:60

   type uu_pthread_cond_s_array1961 is array (0 .. 1) of aliased unsigned;
   type uu_pthread_cond_s is record
      uu_wseq : aliased aarch64_linux_gnu_bits_atomic_wide_counter_h.uu_atomic_wide_counter;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:96
      uu_g1_start : aliased aarch64_linux_gnu_bits_atomic_wide_counter_h.uu_atomic_wide_counter;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:97
      uu_g_refs : aliased uu_pthread_cond_s_array1961;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:98
      uu_g_size : aliased uu_pthread_cond_s_array1961;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:99
      uu_g1_orig_size : aliased unsigned;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:100
      uu_wrefs : aliased unsigned;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:101
      uu_g_signals : aliased uu_pthread_cond_s_array1961;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:102
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:94

   subtype uu_tss_t is unsigned;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:105

   subtype uu_thrd_t is unsigned_long;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:106

   --  skipped anonymous struct anon_anon_8

   type uu_once_flag is record
      uu_data : aliased int;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:110
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/aarch64-linux-gnu/bits/thread-shared-types.h:111

end aarch64_linux_gnu_bits_thread_shared_types_h;
