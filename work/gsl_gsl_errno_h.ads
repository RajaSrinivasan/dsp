pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
limited with aarch64_linux_gnu_bits_types_FILE_h;

package gsl_gsl_errno_h is

   --  arg-macro: procedure GSL_ERROR (reason, gsl_errno)
   --    do { gsl_error (reason, __FILE__, __LINE__, gsl_errno) ; return gsl_errno ; } while (0)
   --  arg-macro: procedure GSL_ERROR_VAL (reason, gsl_errno, value)
   --    do { gsl_error (reason, __FILE__, __LINE__, gsl_errno) ; return value ; } while (0)
   --  arg-macro: procedure GSL_ERROR_VOID (reason, gsl_errno)
   --    do { gsl_error (reason, __FILE__, __LINE__, gsl_errno) ; return ; } while (0)
   --  arg-macro: procedure GSL_ERROR_NULL (reason, gsl_errno)
   --    GSL_ERROR_VAL(reason, gsl_errno, 0)
   --  arg-macro: function GSL_ERROR_SELECT_2 (a, b)
   --    return (a) /= GSL_SUCCESS ? (a) : ((b) /= GSL_SUCCESS ? (b) : GSL_SUCCESS);
   --  arg-macro: function GSL_ERROR_SELECT_3 (a, b, c)
   --    return (a) /= GSL_SUCCESS ? (a) : GSL_ERROR_SELECT_2(b,c);
   --  arg-macro: function GSL_ERROR_SELECT_4 (a, b, c, d)
   --    return (a) /= GSL_SUCCESS ? (a) : GSL_ERROR_SELECT_3(b,c,d);
   --  arg-macro: function GSL_ERROR_SELECT_5 (a, b, c, d, e)
   --    return (a) /= GSL_SUCCESS ? (a) : GSL_ERROR_SELECT_4(b,c,d,e);
   --  arg-macro: procedure GSL_STATUS_UPDATE (sp, s)
   --    do { if ((s) /= GSL_SUCCESS) *(sp) := (s);} while(0)
   procedure gsl_error
     (reason : Interfaces.C.Strings.chars_ptr;
      file : Interfaces.C.Strings.chars_ptr;
      line : int;
      gsl_errno : int)  -- /usr/include/gsl/gsl_errno.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_error";

   procedure gsl_stream_printf
     (label : Interfaces.C.Strings.chars_ptr;
      file : Interfaces.C.Strings.chars_ptr;
      line : int;
      reason : Interfaces.C.Strings.chars_ptr)  -- /usr/include/gsl/gsl_errno.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_stream_printf";

   function gsl_strerror (gsl_errno : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_errno.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_strerror";

   --  skipped function type gsl_error_handler_t

   --  skipped function type gsl_stream_handler_t

   function gsl_set_error_handler (new_handler : access procedure
        (arg1 : Interfaces.C.Strings.chars_ptr;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : int;
         arg4 : int)) return access procedure
        (arg1 : Interfaces.C.Strings.chars_ptr;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : int;
         arg4 : int)  -- /usr/include/gsl/gsl_errno.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_set_error_handler";

   function gsl_set_error_handler_off return access procedure
        (arg1 : Interfaces.C.Strings.chars_ptr;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : int;
         arg4 : int)  -- /usr/include/gsl/gsl_errno.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_set_error_handler_off";

   function gsl_set_stream_handler (new_handler : access procedure
        (arg1 : Interfaces.C.Strings.chars_ptr;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : int;
         arg4 : Interfaces.C.Strings.chars_ptr)) return access procedure
        (arg1 : Interfaces.C.Strings.chars_ptr;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : int;
         arg4 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/gsl/gsl_errno.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_set_stream_handler";

   function gsl_set_stream (new_stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE) return access aarch64_linux_gnu_bits_types_FILE_h.FILE  -- /usr/include/gsl/gsl_errno.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_set_stream";

end gsl_gsl_errno_h;
