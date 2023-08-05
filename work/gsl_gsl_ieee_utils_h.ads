pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with aarch64_linux_gnu_bits_types_FILE_h;
with Interfaces.C.Strings;

package gsl_gsl_ieee_utils_h is

   --  skipped anonymous struct anon_anon_4

   subtype gsl_ieee_float_rep_array1928 is Interfaces.C.char_array (0 .. 23);
   type gsl_ieee_float_rep is record
      sign : aliased int;  -- /usr/include/gsl/gsl_ieee_utils.h:45
      mantissa : aliased gsl_ieee_float_rep_array1928;  -- /usr/include/gsl/gsl_ieee_utils.h:46
      exponent : aliased int;  -- /usr/include/gsl/gsl_ieee_utils.h:47
      c_type : aliased int;  -- /usr/include/gsl/gsl_ieee_utils.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_ieee_utils.h:49

   --  skipped anonymous struct anon_anon_5

   subtype gsl_ieee_double_rep_array1932 is Interfaces.C.char_array (0 .. 52);
   type gsl_ieee_double_rep is record
      sign : aliased int;  -- /usr/include/gsl/gsl_ieee_utils.h:52
      mantissa : aliased gsl_ieee_double_rep_array1932;  -- /usr/include/gsl/gsl_ieee_utils.h:53
      exponent : aliased int;  -- /usr/include/gsl/gsl_ieee_utils.h:54
      c_type : aliased int;  -- /usr/include/gsl/gsl_ieee_utils.h:55
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_ieee_utils.h:56

   procedure gsl_ieee_printf_float (x : access float)  -- /usr/include/gsl/gsl_ieee_utils.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ieee_printf_float";

   procedure gsl_ieee_printf_double (x : access double)  -- /usr/include/gsl/gsl_ieee_utils.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ieee_printf_double";

   procedure gsl_ieee_fprintf_float (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; x : access float)  -- /usr/include/gsl/gsl_ieee_utils.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ieee_fprintf_float";

   procedure gsl_ieee_fprintf_double (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; x : access double)  -- /usr/include/gsl/gsl_ieee_utils.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ieee_fprintf_double";

   procedure gsl_ieee_float_to_rep (x : access float; r : access gsl_ieee_float_rep)  -- /usr/include/gsl/gsl_ieee_utils.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ieee_float_to_rep";

   procedure gsl_ieee_double_to_rep (x : access double; r : access gsl_ieee_double_rep)  -- /usr/include/gsl/gsl_ieee_utils.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ieee_double_to_rep";

   procedure gsl_ieee_env_setup  -- /usr/include/gsl/gsl_ieee_utils.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ieee_env_setup";

   function gsl_ieee_read_mode_string
     (description : Interfaces.C.Strings.chars_ptr;
      precision : access int;
      rounding : access int;
      exception_mask : access int) return int  -- /usr/include/gsl/gsl_ieee_utils.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ieee_read_mode_string";

   function gsl_ieee_set_mode
     (precision : int;
      rounding : int;
      exception_mask : int) return int  -- /usr/include/gsl/gsl_ieee_utils.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ieee_set_mode";

end gsl_gsl_ieee_utils_h;
