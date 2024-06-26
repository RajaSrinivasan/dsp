pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with aarch64_linux_gnu_bits_struct_mutex_h;
with aarch64_linux_gnu_bits_thread_shared_types_h;
with aarch64_linux_gnu_bits_struct_rwlock_h;

package aarch64_linux_gnu_bits_pthreadtypes_h is

   subtype pthread_t is unsigned_long;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:27

   --  skipped anonymous struct anon_anon_9

   subtype pthread_mutexattr_t_array1970 is Interfaces.C.char_array (0 .. 7);
   type pthread_mutexattr_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_size : aliased pthread_mutexattr_t_array1970;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:34
         when others =>
            uu_align : aliased int;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:35
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:36

   --  skipped anonymous struct anon_anon_10

   subtype pthread_condattr_t_array1970 is Interfaces.C.char_array (0 .. 7);
   type pthread_condattr_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_size : aliased pthread_condattr_t_array1970;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:43
         when others =>
            uu_align : aliased int;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:44
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:45

   subtype pthread_key_t is unsigned;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:49

   subtype pthread_once_t is int;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:53

   subtype pthread_attr_t_array1978 is Interfaces.C.char_array (0 .. 63);
   type pthread_attr_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_size : aliased pthread_attr_t_array1978;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:58
         when others =>
            uu_align : aliased long;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:59
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:56

   --  skipped anonymous struct anon_anon_11

   subtype pthread_mutex_t_array1983 is Interfaces.C.char_array (0 .. 47);
   type pthread_mutex_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_data : aliased aarch64_linux_gnu_bits_struct_mutex_h.uu_pthread_mutex_s;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:69
         when 1 =>
            uu_size : aliased pthread_mutex_t_array1983;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:70
         when others =>
            uu_align : aliased long;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:71
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:72

   --  skipped anonymous struct anon_anon_12

   subtype pthread_cond_t_array1983 is Interfaces.C.char_array (0 .. 47);
   type pthread_cond_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_data : aliased aarch64_linux_gnu_bits_thread_shared_types_h.uu_pthread_cond_s;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:77
         when 1 =>
            uu_size : aliased pthread_cond_t_array1983;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:78
         when others =>
            uu_align : aliased Long_Long_Integer;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:79
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:80

   --  skipped anonymous struct anon_anon_13

   subtype pthread_rwlock_t_array1989 is Interfaces.C.char_array (0 .. 55);
   type pthread_rwlock_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_data : aliased aarch64_linux_gnu_bits_struct_rwlock_h.uu_pthread_rwlock_arch_t;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:88
         when 1 =>
            uu_size : aliased pthread_rwlock_t_array1989;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:89
         when others =>
            uu_align : aliased long;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:90
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:91

   --  skipped anonymous struct anon_anon_14

   subtype pthread_rwlockattr_t_array1970 is Interfaces.C.char_array (0 .. 7);
   type pthread_rwlockattr_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_size : aliased pthread_rwlockattr_t_array1970;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:95
         when others =>
            uu_align : aliased long;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:96
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:97

   subtype pthread_spinlock_t is int;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:103

   --  skipped anonymous struct anon_anon_15

   subtype pthread_barrier_t_array1997 is Interfaces.C.char_array (0 .. 31);
   type pthread_barrier_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_size : aliased pthread_barrier_t_array1997;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:110
         when others =>
            uu_align : aliased long;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:111
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:112

   --  skipped anonymous struct anon_anon_16

   subtype pthread_barrierattr_t_array1970 is Interfaces.C.char_array (0 .. 7);
   type pthread_barrierattr_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_size : aliased pthread_barrierattr_t_array1970;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:116
         when others =>
            uu_align : aliased int;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:117
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/aarch64-linux-gnu/bits/pthreadtypes.h:118

end aarch64_linux_gnu_bits_pthreadtypes_h;
