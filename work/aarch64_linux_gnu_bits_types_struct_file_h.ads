pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;
with aarch64_linux_gnu_bits_types_h;
with stddef_h;

package aarch64_linux_gnu_bits_types_struct_FILE_h is

   type u_IO_marker is null record;   -- incomplete struct

   type u_IO_codecvt is null record;   -- incomplete struct

   type u_IO_wide_data is null record;   -- incomplete struct

   subtype u_IO_lock_t is System.Address;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:43

   type u_IO_FILE;
   subtype u_IO_FILE_array2335 is Interfaces.C.char_array (0 .. 0);
   subtype u_IO_FILE_array2340 is Interfaces.C.char_array (0 .. 19);
   type u_IO_FILE is record
      u_flags : aliased int;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:51
      u_IO_read_ptr : Interfaces.C.Strings.chars_ptr;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:54
      u_IO_read_end : Interfaces.C.Strings.chars_ptr;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:55
      u_IO_read_base : Interfaces.C.Strings.chars_ptr;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:56
      u_IO_write_base : Interfaces.C.Strings.chars_ptr;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:57
      u_IO_write_ptr : Interfaces.C.Strings.chars_ptr;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:58
      u_IO_write_end : Interfaces.C.Strings.chars_ptr;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:59
      u_IO_buf_base : Interfaces.C.Strings.chars_ptr;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:60
      u_IO_buf_end : Interfaces.C.Strings.chars_ptr;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:61
      u_IO_save_base : Interfaces.C.Strings.chars_ptr;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:64
      u_IO_backup_base : Interfaces.C.Strings.chars_ptr;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:65
      u_IO_save_end : Interfaces.C.Strings.chars_ptr;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:66
      u_markers : access u_IO_marker;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:68
      u_chain : access u_IO_FILE;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:70
      u_fileno : aliased int;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:72
      u_flags2 : aliased int;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:73
      u_old_offset : aliased aarch64_linux_gnu_bits_types_h.uu_off_t;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:74
      u_cur_column : aliased unsigned_short;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:77
      u_vtable_offset : aliased signed_char;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:78
      u_shortbuf : aliased u_IO_FILE_array2335;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:79
      u_lock : System.Address;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:81
      u_offset : aliased aarch64_linux_gnu_bits_types_h.uu_off64_t;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:89
      u_codecvt : access u_IO_codecvt;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:91
      u_wide_data : access u_IO_wide_data;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:92
      u_freeres_list : access u_IO_FILE;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:93
      u_freeres_buf : System.Address;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:94
      uu_pad5 : aliased stddef_h.size_t;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:95
      u_mode : aliased int;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:96
      u_unused2 : aliased u_IO_FILE_array2340;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:98
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h:49

end aarch64_linux_gnu_bits_types_struct_FILE_h;
