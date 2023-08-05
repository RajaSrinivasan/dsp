pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with aarch64_linux_gnu_bits_types_struct_timeval_h;
limited with aarch64_linux_gnu_bits_types_struct_timespec_h;
limited with aarch64_linux_gnu_bits_types_u_sigset_t_h;

package aarch64_linux_gnu_sys_select_h is

   --  unsupported macro: FD_SETSIZE __FD_SETSIZE
   --  unsupported macro: NFDBITS __NFDBITS
   --  arg-macro: procedure FD_SET (fd, fdsetp)
   --    __FD_SET (fd, fdsetp)
   --  arg-macro: procedure FD_CLR (fd, fdsetp)
   --    __FD_CLR (fd, fdsetp)
   --  arg-macro: procedure FD_ISSET (fd, fdsetp)
   --    __FD_ISSET (fd, fdsetp)
   --  arg-macro: procedure FD_ZERO (fdsetp)
   --    __FD_ZERO (fdsetp)
   subtype uu_fd_mask is long;  -- /usr/include/aarch64-linux-gnu/sys/select.h:49

   --  skipped anonymous struct anon_anon_5

   type fd_set_array1922 is array (0 .. 15) of aliased uu_fd_mask;
   type fd_set is record
      fds_bits : aliased fd_set_array1922;  -- /usr/include/aarch64-linux-gnu/sys/select.h:64
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/aarch64-linux-gnu/sys/select.h:70

   subtype fd_mask is uu_fd_mask;  -- /usr/include/aarch64-linux-gnu/sys/select.h:77

   function c_select
     (uu_nfds : int;
      uu_readfds : access fd_set;
      uu_writefds : access fd_set;
      uu_exceptfds : access fd_set;
      uu_timeout : access aarch64_linux_gnu_bits_types_struct_timeval_h.timeval) return int  -- /usr/include/aarch64-linux-gnu/sys/select.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "select";

   function pselect
     (uu_nfds : int;
      uu_readfds : access fd_set;
      uu_writefds : access fd_set;
      uu_exceptfds : access fd_set;
      uu_timeout : access constant aarch64_linux_gnu_bits_types_struct_timespec_h.timespec;
      uu_sigmask : access constant aarch64_linux_gnu_bits_types_u_sigset_t_h.uu_sigset_t) return int  -- /usr/include/aarch64-linux-gnu/sys/select.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "pselect";

end aarch64_linux_gnu_sys_select_h;
