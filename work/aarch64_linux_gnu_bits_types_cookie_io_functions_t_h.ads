pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;
with stddef_h;
with aarch64_linux_gnu_bits_types_h;

package aarch64_linux_gnu_bits_types_cookie_io_functions_t_h is

   --  skipped function type cookie_read_function_t

   --  skipped function type cookie_write_function_t

   --  skipped function type cookie_seek_function_t

   --  skipped function type cookie_close_function_t

   type u_IO_cookie_io_functions_t is record
      read : access function
           (arg1 : System.Address;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : stddef_h.size_t) return aarch64_linux_gnu_bits_types_h.uu_ssize_t;  -- /usr/include/aarch64-linux-gnu/bits/types/cookie_io_functions_t.h:57
      write : access function
           (arg1 : System.Address;
            arg2 : Interfaces.C.Strings.chars_ptr;
            arg3 : stddef_h.size_t) return aarch64_linux_gnu_bits_types_h.uu_ssize_t;  -- /usr/include/aarch64-linux-gnu/bits/types/cookie_io_functions_t.h:58
      seek : access function
           (arg1 : System.Address;
            arg2 : access aarch64_linux_gnu_bits_types_h.uu_off64_t;
            arg3 : int) return int;  -- /usr/include/aarch64-linux-gnu/bits/types/cookie_io_functions_t.h:59
      close : access function (arg1 : System.Address) return int;  -- /usr/include/aarch64-linux-gnu/bits/types/cookie_io_functions_t.h:60
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/aarch64-linux-gnu/bits/types/cookie_io_functions_t.h:55

   subtype cookie_io_functions_t is u_IO_cookie_io_functions_t;  -- /usr/include/aarch64-linux-gnu/bits/types/cookie_io_functions_t.h:61

end aarch64_linux_gnu_bits_types_cookie_io_functions_t_h;
