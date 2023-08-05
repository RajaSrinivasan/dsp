pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with aarch64_linux_gnu_bits_floatn_common_h;
with Interfaces.C.Extensions;
with stddef_h;
with aarch64_linux_gnu_bits_types_locale_t_h;
with aarch64_linux_gnu_bits_stdint_intn_h;

package stdlib_h is

   --  arg-macro: procedure WEXITSTATUS (status)
   --    __WEXITSTATUS (status)
   --  arg-macro: procedure WTERMSIG (status)
   --    __WTERMSIG (status)
   --  arg-macro: procedure WSTOPSIG (status)
   --    __WSTOPSIG (status)
   --  arg-macro: procedure WIFEXITED (status)
   --    __WIFEXITED (status)
   --  arg-macro: procedure WIFSIGNALED (status)
   --    __WIFSIGNALED (status)
   --  arg-macro: procedure WIFSTOPPED (status)
   --    __WIFSTOPPED (status)
   --  arg-macro: procedure WIFCONTINUED (status)
   --    __WIFCONTINUED (status)
   RAND_MAX : constant := 2147483647;  --  /usr/include/stdlib.h:87

   EXIT_FAILURE : constant := 1;  --  /usr/include/stdlib.h:92
   EXIT_SUCCESS : constant := 0;  --  /usr/include/stdlib.h:93
   --  unsupported macro: MB_CUR_MAX (__ctype_get_mb_cur_max ())

   --  skipped anonymous struct anon_anon_0

   type div_t is record
      quot : aliased int;  -- /usr/include/stdlib.h:61
      c_rem : aliased int;  -- /usr/include/stdlib.h:62
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/stdlib.h:63

   --  skipped anonymous struct anon_anon_1

   type ldiv_t is record
      quot : aliased long;  -- /usr/include/stdlib.h:69
      c_rem : aliased long;  -- /usr/include/stdlib.h:70
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/stdlib.h:71

   --  skipped anonymous struct anon_anon_2

   type lldiv_t is record
      quot : aliased Long_Long_Integer;  -- /usr/include/stdlib.h:79
      c_rem : aliased Long_Long_Integer;  -- /usr/include/stdlib.h:80
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/stdlib.h:81

   --  skipped func __ctype_get_mb_cur_max

   function atof (uu_nptr : Interfaces.C.Strings.chars_ptr) return double  -- /usr/include/stdlib.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "atof";

   function atoi (uu_nptr : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/stdlib.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "atoi";

   function atol (uu_nptr : Interfaces.C.Strings.chars_ptr) return long  -- /usr/include/stdlib.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "atol";

   function atoll (uu_nptr : Interfaces.C.Strings.chars_ptr) return Long_Long_Integer  -- /usr/include/stdlib.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "atoll";

   function strtod (uu_nptr : Interfaces.C.Strings.chars_ptr; uu_endptr : System.Address) return double  -- /usr/include/stdlib.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "strtod";

   function strtof (uu_nptr : Interfaces.C.Strings.chars_ptr; uu_endptr : System.Address) return float  -- /usr/include/stdlib.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "strtof";

   function strtold (uu_nptr : Interfaces.C.Strings.chars_ptr; uu_endptr : System.Address) return long_double  -- /usr/include/stdlib.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "strtold";

   function strtof32 (uu_nptr : Interfaces.C.Strings.chars_ptr; uu_endptr : System.Address) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/stdlib.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "strtof32";

   function strtof64 (uu_nptr : Interfaces.C.Strings.chars_ptr; uu_endptr : System.Address) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/stdlib.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "strtof64";

   function strtof128 (uu_nptr : Interfaces.C.Strings.chars_ptr; uu_endptr : System.Address) return Extensions.Float_128  -- /usr/include/stdlib.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "strtof128";

   function strtof32x (uu_nptr : Interfaces.C.Strings.chars_ptr; uu_endptr : System.Address) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/stdlib.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "strtof32x";

   function strtof64x (uu_nptr : Interfaces.C.Strings.chars_ptr; uu_endptr : System.Address) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/stdlib.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "strtof64x";

   function strtol
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_base : int) return long  -- /usr/include/stdlib.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "strtol";

   function strtoul
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_base : int) return unsigned_long  -- /usr/include/stdlib.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "strtoul";

   function strtoq
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_base : int) return Long_Long_Integer  -- /usr/include/stdlib.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "strtoq";

   function strtouq
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_base : int) return Extensions.unsigned_long_long  -- /usr/include/stdlib.h:193
   with Import => True, 
        Convention => C, 
        External_Name => "strtouq";

   function strtoll
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_base : int) return Long_Long_Integer  -- /usr/include/stdlib.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "strtoll";

   function strtoull
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_base : int) return Extensions.unsigned_long_long  -- /usr/include/stdlib.h:206
   with Import => True, 
        Convention => C, 
        External_Name => "strtoull";

   function strfromd
     (uu_dest : Interfaces.C.Strings.chars_ptr;
      uu_size : stddef_h.size_t;
      uu_format : Interfaces.C.Strings.chars_ptr;
      uu_f : double) return int  -- /usr/include/stdlib.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "strfromd";

   function strfromf
     (uu_dest : Interfaces.C.Strings.chars_ptr;
      uu_size : stddef_h.size_t;
      uu_format : Interfaces.C.Strings.chars_ptr;
      uu_f : float) return int  -- /usr/include/stdlib.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "strfromf";

   function strfroml
     (uu_dest : Interfaces.C.Strings.chars_ptr;
      uu_size : stddef_h.size_t;
      uu_format : Interfaces.C.Strings.chars_ptr;
      uu_f : long_double) return int  -- /usr/include/stdlib.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "strfroml";

   function strfromf32
     (uu_dest : Interfaces.C.Strings.chars_ptr;
      uu_size : stddef_h.size_t;
      uu_format : Interfaces.C.Strings.chars_ptr;
      uu_f : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return int  -- /usr/include/stdlib.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "strfromf32";

   function strfromf64
     (uu_dest : Interfaces.C.Strings.chars_ptr;
      uu_size : stddef_h.size_t;
      uu_format : Interfaces.C.Strings.chars_ptr;
      uu_f : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return int  -- /usr/include/stdlib.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "strfromf64";

   function strfromf128
     (uu_dest : Interfaces.C.Strings.chars_ptr;
      uu_size : stddef_h.size_t;
      uu_format : Interfaces.C.Strings.chars_ptr;
      uu_f : Extensions.Float_128) return int  -- /usr/include/stdlib.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "strfromf128";

   function strfromf32x
     (uu_dest : Interfaces.C.Strings.chars_ptr;
      uu_size : stddef_h.size_t;
      uu_format : Interfaces.C.Strings.chars_ptr;
      uu_f : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return int  -- /usr/include/stdlib.h:251
   with Import => True, 
        Convention => C, 
        External_Name => "strfromf32x";

   function strfromf64x
     (uu_dest : Interfaces.C.Strings.chars_ptr;
      uu_size : stddef_h.size_t;
      uu_format : Interfaces.C.Strings.chars_ptr;
      uu_f : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return int  -- /usr/include/stdlib.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "strfromf64x";

   function strtol_l
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_base : int;
      uu_loc : aarch64_linux_gnu_bits_types_locale_t_h.locale_t) return long  -- /usr/include/stdlib.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "strtol_l";

   function strtoul_l
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_base : int;
      uu_loc : aarch64_linux_gnu_bits_types_locale_t_h.locale_t) return unsigned_long  -- /usr/include/stdlib.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "strtoul_l";

   function strtoll_l
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_base : int;
      uu_loc : aarch64_linux_gnu_bits_types_locale_t_h.locale_t) return Long_Long_Integer  -- /usr/include/stdlib.h:285
   with Import => True, 
        Convention => C, 
        External_Name => "strtoll_l";

   function strtoull_l
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_base : int;
      uu_loc : aarch64_linux_gnu_bits_types_locale_t_h.locale_t) return Extensions.unsigned_long_long  -- /usr/include/stdlib.h:291
   with Import => True, 
        Convention => C, 
        External_Name => "strtoull_l";

   function strtod_l
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_loc : aarch64_linux_gnu_bits_types_locale_t_h.locale_t) return double  -- /usr/include/stdlib.h:296
   with Import => True, 
        Convention => C, 
        External_Name => "strtod_l";

   function strtof_l
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_loc : aarch64_linux_gnu_bits_types_locale_t_h.locale_t) return float  -- /usr/include/stdlib.h:300
   with Import => True, 
        Convention => C, 
        External_Name => "strtof_l";

   function strtold_l
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_loc : aarch64_linux_gnu_bits_types_locale_t_h.locale_t) return long_double  -- /usr/include/stdlib.h:304
   with Import => True, 
        Convention => C, 
        External_Name => "strtold_l";

   function strtof32_l
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_loc : aarch64_linux_gnu_bits_types_locale_t_h.locale_t) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/stdlib.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "strtof32_l";

   function strtof64_l
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_loc : aarch64_linux_gnu_bits_types_locale_t_h.locale_t) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/stdlib.h:324
   with Import => True, 
        Convention => C, 
        External_Name => "strtof64_l";

   function strtof128_l
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_loc : aarch64_linux_gnu_bits_types_locale_t_h.locale_t) return Extensions.Float_128  -- /usr/include/stdlib.h:331
   with Import => True, 
        Convention => C, 
        External_Name => "strtof128_l";

   function strtof32x_l
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_loc : aarch64_linux_gnu_bits_types_locale_t_h.locale_t) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/stdlib.h:338
   with Import => True, 
        Convention => C, 
        External_Name => "strtof32x_l";

   function strtof64x_l
     (uu_nptr : Interfaces.C.Strings.chars_ptr;
      uu_endptr : System.Address;
      uu_loc : aarch64_linux_gnu_bits_types_locale_t_h.locale_t) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/stdlib.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "strtof64x_l";

   function l64a (uu_n : long) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:386
   with Import => True, 
        Convention => C, 
        External_Name => "l64a";

   function a64l (uu_s : Interfaces.C.Strings.chars_ptr) return long  -- /usr/include/stdlib.h:389
   with Import => True, 
        Convention => C, 
        External_Name => "a64l";

   function random return long  -- /usr/include/stdlib.h:402
   with Import => True, 
        Convention => C, 
        External_Name => "random";

   procedure srandom (uu_seed : unsigned)  -- /usr/include/stdlib.h:405
   with Import => True, 
        Convention => C, 
        External_Name => "srandom";

   function initstate
     (uu_seed : unsigned;
      uu_statebuf : Interfaces.C.Strings.chars_ptr;
      uu_statelen : stddef_h.size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "initstate";

   function setstate (uu_statebuf : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:416
   with Import => True, 
        Convention => C, 
        External_Name => "setstate";

   type random_data is record
      fptr : access aarch64_linux_gnu_bits_stdint_intn_h.int32_t;  -- /usr/include/stdlib.h:426
      rptr : access aarch64_linux_gnu_bits_stdint_intn_h.int32_t;  -- /usr/include/stdlib.h:427
      state : access aarch64_linux_gnu_bits_stdint_intn_h.int32_t;  -- /usr/include/stdlib.h:428
      rand_type : aliased int;  -- /usr/include/stdlib.h:429
      rand_deg : aliased int;  -- /usr/include/stdlib.h:430
      rand_sep : aliased int;  -- /usr/include/stdlib.h:431
      end_ptr : access aarch64_linux_gnu_bits_stdint_intn_h.int32_t;  -- /usr/include/stdlib.h:432
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/stdlib.h:424

   function random_r (uu_buf : access random_data; uu_result : access aarch64_linux_gnu_bits_stdint_intn_h.int32_t) return int  -- /usr/include/stdlib.h:435
   with Import => True, 
        Convention => C, 
        External_Name => "random_r";

   function srandom_r (uu_seed : unsigned; uu_buf : access random_data) return int  -- /usr/include/stdlib.h:438
   with Import => True, 
        Convention => C, 
        External_Name => "srandom_r";

   function initstate_r
     (uu_seed : unsigned;
      uu_statebuf : Interfaces.C.Strings.chars_ptr;
      uu_statelen : stddef_h.size_t;
      uu_buf : access random_data) return int  -- /usr/include/stdlib.h:441
   with Import => True, 
        Convention => C, 
        External_Name => "initstate_r";

   function setstate_r (uu_statebuf : Interfaces.C.Strings.chars_ptr; uu_buf : access random_data) return int  -- /usr/include/stdlib.h:446
   with Import => True, 
        Convention => C, 
        External_Name => "setstate_r";

   function rand return int  -- /usr/include/stdlib.h:454
   with Import => True, 
        Convention => C, 
        External_Name => "rand";

   procedure srand (uu_seed : unsigned)  -- /usr/include/stdlib.h:456
   with Import => True, 
        Convention => C, 
        External_Name => "srand";

   function rand_r (uu_seed : access unsigned) return int  -- /usr/include/stdlib.h:460
   with Import => True, 
        Convention => C, 
        External_Name => "rand_r";

   function drand48 return double  -- /usr/include/stdlib.h:468
   with Import => True, 
        Convention => C, 
        External_Name => "drand48";

   function erand48 (uu_xsubi : access unsigned_short) return double  -- /usr/include/stdlib.h:469
   with Import => True, 
        Convention => C, 
        External_Name => "erand48";

   function lrand48 return long  -- /usr/include/stdlib.h:472
   with Import => True, 
        Convention => C, 
        External_Name => "lrand48";

   function nrand48 (uu_xsubi : access unsigned_short) return long  -- /usr/include/stdlib.h:473
   with Import => True, 
        Convention => C, 
        External_Name => "nrand48";

   function mrand48 return long  -- /usr/include/stdlib.h:477
   with Import => True, 
        Convention => C, 
        External_Name => "mrand48";

   function jrand48 (uu_xsubi : access unsigned_short) return long  -- /usr/include/stdlib.h:478
   with Import => True, 
        Convention => C, 
        External_Name => "jrand48";

   procedure srand48 (uu_seedval : long)  -- /usr/include/stdlib.h:482
   with Import => True, 
        Convention => C, 
        External_Name => "srand48";

   function seed48 (uu_seed16v : access unsigned_short) return access unsigned_short  -- /usr/include/stdlib.h:483
   with Import => True, 
        Convention => C, 
        External_Name => "seed48";

   procedure lcong48 (uu_param : access unsigned_short)  -- /usr/include/stdlib.h:485
   with Import => True, 
        Convention => C, 
        External_Name => "lcong48";

   type drand48_data_array2046 is array (0 .. 2) of aliased unsigned_short;
   type drand48_data is record
      uu_x : aliased drand48_data_array2046;  -- /usr/include/stdlib.h:493
      uu_old_x : aliased drand48_data_array2046;  -- /usr/include/stdlib.h:494
      uu_c : aliased unsigned_short;  -- /usr/include/stdlib.h:495
      uu_init : aliased unsigned_short;  -- /usr/include/stdlib.h:496
      uu_a : aliased Extensions.unsigned_long_long;  -- /usr/include/stdlib.h:497
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/stdlib.h:491

   function drand48_r (uu_buffer : access drand48_data; uu_result : access double) return int  -- /usr/include/stdlib.h:502
   with Import => True, 
        Convention => C, 
        External_Name => "drand48_r";

   function erand48_r
     (uu_xsubi : access unsigned_short;
      uu_buffer : access drand48_data;
      uu_result : access double) return int  -- /usr/include/stdlib.h:504
   with Import => True, 
        Convention => C, 
        External_Name => "erand48_r";

   function lrand48_r (uu_buffer : access drand48_data; uu_result : access long) return int  -- /usr/include/stdlib.h:509
   with Import => True, 
        Convention => C, 
        External_Name => "lrand48_r";

   function nrand48_r
     (uu_xsubi : access unsigned_short;
      uu_buffer : access drand48_data;
      uu_result : access long) return int  -- /usr/include/stdlib.h:512
   with Import => True, 
        Convention => C, 
        External_Name => "nrand48_r";

   function mrand48_r (uu_buffer : access drand48_data; uu_result : access long) return int  -- /usr/include/stdlib.h:518
   with Import => True, 
        Convention => C, 
        External_Name => "mrand48_r";

   function jrand48_r
     (uu_xsubi : access unsigned_short;
      uu_buffer : access drand48_data;
      uu_result : access long) return int  -- /usr/include/stdlib.h:521
   with Import => True, 
        Convention => C, 
        External_Name => "jrand48_r";

   function srand48_r (uu_seedval : long; uu_buffer : access drand48_data) return int  -- /usr/include/stdlib.h:527
   with Import => True, 
        Convention => C, 
        External_Name => "srand48_r";

   function seed48_r (uu_seed16v : access unsigned_short; uu_buffer : access drand48_data) return int  -- /usr/include/stdlib.h:530
   with Import => True, 
        Convention => C, 
        External_Name => "seed48_r";

   function lcong48_r (uu_param : access unsigned_short; uu_buffer : access drand48_data) return int  -- /usr/include/stdlib.h:533
   with Import => True, 
        Convention => C, 
        External_Name => "lcong48_r";

   function malloc (uu_size : stddef_h.size_t) return System.Address  -- /usr/include/stdlib.h:540
   with Import => True, 
        Convention => C, 
        External_Name => "malloc";

   function calloc (uu_nmemb : stddef_h.size_t; uu_size : stddef_h.size_t) return System.Address  -- /usr/include/stdlib.h:543
   with Import => True, 
        Convention => C, 
        External_Name => "calloc";

   function realloc (uu_ptr : System.Address; uu_size : stddef_h.size_t) return System.Address  -- /usr/include/stdlib.h:551
   with Import => True, 
        Convention => C, 
        External_Name => "realloc";

   procedure free (uu_ptr : System.Address)  -- /usr/include/stdlib.h:555
   with Import => True, 
        Convention => C, 
        External_Name => "free";

   function reallocarray
     (uu_ptr : System.Address;
      uu_nmemb : stddef_h.size_t;
      uu_size : stddef_h.size_t) return System.Address  -- /usr/include/stdlib.h:569
   with Import => True, 
        Convention => C, 
        External_Name => "reallocarray";

   function valloc (uu_size : stddef_h.size_t) return System.Address  -- /usr/include/stdlib.h:580
   with Import => True, 
        Convention => C, 
        External_Name => "valloc";

   function posix_memalign
     (uu_memptr : System.Address;
      uu_alignment : stddef_h.size_t;
      uu_size : stddef_h.size_t) return int  -- /usr/include/stdlib.h:586
   with Import => True, 
        Convention => C, 
        External_Name => "posix_memalign";

   function aligned_alloc (uu_alignment : stddef_h.size_t; uu_size : stddef_h.size_t) return System.Address  -- /usr/include/stdlib.h:592
   with Import => True, 
        Convention => C, 
        External_Name => "aligned_alloc";

   procedure c_abort  -- /usr/include/stdlib.h:598
   with Import => True, 
        Convention => C, 
        External_Name => "abort";

   function atexit (uu_func : access procedure) return int  -- /usr/include/stdlib.h:602
   with Import => True, 
        Convention => C, 
        External_Name => "atexit";

   function at_quick_exit (uu_func : access procedure) return int  -- /usr/include/stdlib.h:607
   with Import => True, 
        Convention => C, 
        External_Name => "at_quick_exit";

   function on_exit (uu_func : access procedure (arg1 : int; arg2 : System.Address); uu_arg : System.Address) return int  -- /usr/include/stdlib.h:617
   with Import => True, 
        Convention => C, 
        External_Name => "on_exit";

   procedure c_exit (uu_status : int)  -- /usr/include/stdlib.h:624
   with Import => True, 
        Convention => C, 
        External_Name => "exit";

   procedure quick_exit (uu_status : int)  -- /usr/include/stdlib.h:630
   with Import => True, 
        Convention => C, 
        External_Name => "quick_exit";

   --  skipped func _Exit

   function getenv (uu_name : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:641
   with Import => True, 
        Convention => C, 
        External_Name => "getenv";

   function secure_getenv (uu_name : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:646
   with Import => True, 
        Convention => C, 
        External_Name => "secure_getenv";

   function putenv (uu_string : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/stdlib.h:654
   with Import => True, 
        Convention => C, 
        External_Name => "putenv";

   function setenv
     (uu_name : Interfaces.C.Strings.chars_ptr;
      uu_value : Interfaces.C.Strings.chars_ptr;
      uu_replace : int) return int  -- /usr/include/stdlib.h:660
   with Import => True, 
        Convention => C, 
        External_Name => "setenv";

   function unsetenv (uu_name : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/stdlib.h:664
   with Import => True, 
        Convention => C, 
        External_Name => "unsetenv";

   function clearenv return int  -- /usr/include/stdlib.h:671
   with Import => True, 
        Convention => C, 
        External_Name => "clearenv";

   function mktemp (uu_template : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:682
   with Import => True, 
        Convention => C, 
        External_Name => "mktemp";

   function mkstemp (uu_template : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/stdlib.h:695
   with Import => True, 
        Convention => C, 
        External_Name => "mkstemp";

   function mkstemp64 (uu_template : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/stdlib.h:705
   with Import => True, 
        Convention => C, 
        External_Name => "mkstemp64";

   function mkstemps (uu_template : Interfaces.C.Strings.chars_ptr; uu_suffixlen : int) return int  -- /usr/include/stdlib.h:717
   with Import => True, 
        Convention => C, 
        External_Name => "mkstemps";

   function mkstemps64 (uu_template : Interfaces.C.Strings.chars_ptr; uu_suffixlen : int) return int  -- /usr/include/stdlib.h:727
   with Import => True, 
        Convention => C, 
        External_Name => "mkstemps64";

   function mkdtemp (uu_template : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:738
   with Import => True, 
        Convention => C, 
        External_Name => "mkdtemp";

   function mkostemp (uu_template : Interfaces.C.Strings.chars_ptr; uu_flags : int) return int  -- /usr/include/stdlib.h:749
   with Import => True, 
        Convention => C, 
        External_Name => "mkostemp";

   function mkostemp64 (uu_template : Interfaces.C.Strings.chars_ptr; uu_flags : int) return int  -- /usr/include/stdlib.h:759
   with Import => True, 
        Convention => C, 
        External_Name => "mkostemp64";

   function mkostemps
     (uu_template : Interfaces.C.Strings.chars_ptr;
      uu_suffixlen : int;
      uu_flags : int) return int  -- /usr/include/stdlib.h:769
   with Import => True, 
        Convention => C, 
        External_Name => "mkostemps";

   function mkostemps64
     (uu_template : Interfaces.C.Strings.chars_ptr;
      uu_suffixlen : int;
      uu_flags : int) return int  -- /usr/include/stdlib.h:781
   with Import => True, 
        Convention => C, 
        External_Name => "mkostemps64";

   function c_system (uu_command : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/stdlib.h:791
   with Import => True, 
        Convention => C, 
        External_Name => "system";

   function canonicalize_file_name (uu_name : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:797
   with Import => True, 
        Convention => C, 
        External_Name => "canonicalize_file_name";

   function realpath (uu_name : Interfaces.C.Strings.chars_ptr; uu_resolved : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:808
   with Import => True, 
        Convention => C, 
        External_Name => "realpath";

   type uu_compar_fn_t is access function (arg1 : System.Address; arg2 : System.Address) return int
   with Convention => C;  -- /usr/include/stdlib.h:816

   subtype comparison_fn_t is uu_compar_fn_t;  -- /usr/include/stdlib.h:819

   type uu_compar_d_fn_t is access function
        (arg1 : System.Address;
         arg2 : System.Address;
         arg3 : System.Address) return int
   with Convention => C;  -- /usr/include/stdlib.h:823

   function bsearch
     (uu_key : System.Address;
      uu_base : System.Address;
      uu_nmemb : stddef_h.size_t;
      uu_size : stddef_h.size_t;
      uu_compar : uu_compar_fn_t) return System.Address  -- /usr/include/stdlib.h:828
   with Import => True, 
        Convention => C, 
        External_Name => "bsearch";

   procedure qsort
     (uu_base : System.Address;
      uu_nmemb : stddef_h.size_t;
      uu_size : stddef_h.size_t;
      uu_compar : uu_compar_fn_t)  -- /usr/include/stdlib.h:838
   with Import => True, 
        Convention => C, 
        External_Name => "qsort";

   procedure qsort_r
     (uu_base : System.Address;
      uu_nmemb : stddef_h.size_t;
      uu_size : stddef_h.size_t;
      uu_compar : uu_compar_d_fn_t;
      uu_arg : System.Address)  -- /usr/include/stdlib.h:841
   with Import => True, 
        Convention => C, 
        External_Name => "qsort_r";

   function c_abs (uu_x : int) return int  -- /usr/include/stdlib.h:848
   with Import => True, 
        Convention => C, 
        External_Name => "abs";

   function labs (uu_x : long) return long  -- /usr/include/stdlib.h:849
   with Import => True, 
        Convention => C, 
        External_Name => "labs";

   function llabs (uu_x : Long_Long_Integer) return Long_Long_Integer  -- /usr/include/stdlib.h:852
   with Import => True, 
        Convention => C, 
        External_Name => "llabs";

   function div (uu_numer : int; uu_denom : int) return div_t  -- /usr/include/stdlib.h:860
   with Import => True, 
        Convention => C, 
        External_Name => "div";

   function ldiv (uu_numer : long; uu_denom : long) return ldiv_t  -- /usr/include/stdlib.h:862
   with Import => True, 
        Convention => C, 
        External_Name => "ldiv";

   function lldiv (uu_numer : Long_Long_Integer; uu_denom : Long_Long_Integer) return lldiv_t  -- /usr/include/stdlib.h:866
   with Import => True, 
        Convention => C, 
        External_Name => "lldiv";

   function ecvt
     (uu_value : double;
      uu_ndigit : int;
      uu_decpt : access int;
      uu_sign : access int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:880
   with Import => True, 
        Convention => C, 
        External_Name => "ecvt";

   function fcvt
     (uu_value : double;
      uu_ndigit : int;
      uu_decpt : access int;
      uu_sign : access int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:886
   with Import => True, 
        Convention => C, 
        External_Name => "fcvt";

   function gcvt
     (uu_value : double;
      uu_ndigit : int;
      uu_buf : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:892
   with Import => True, 
        Convention => C, 
        External_Name => "gcvt";

   function qecvt
     (uu_value : long_double;
      uu_ndigit : int;
      uu_decpt : access int;
      uu_sign : access int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:898
   with Import => True, 
        Convention => C, 
        External_Name => "qecvt";

   function qfcvt
     (uu_value : long_double;
      uu_ndigit : int;
      uu_decpt : access int;
      uu_sign : access int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:901
   with Import => True, 
        Convention => C, 
        External_Name => "qfcvt";

   function qgcvt
     (uu_value : long_double;
      uu_ndigit : int;
      uu_buf : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:904
   with Import => True, 
        Convention => C, 
        External_Name => "qgcvt";

   function ecvt_r
     (uu_value : double;
      uu_ndigit : int;
      uu_decpt : access int;
      uu_sign : access int;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_len : stddef_h.size_t) return int  -- /usr/include/stdlib.h:910
   with Import => True, 
        Convention => C, 
        External_Name => "ecvt_r";

   function fcvt_r
     (uu_value : double;
      uu_ndigit : int;
      uu_decpt : access int;
      uu_sign : access int;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_len : stddef_h.size_t) return int  -- /usr/include/stdlib.h:913
   with Import => True, 
        Convention => C, 
        External_Name => "fcvt_r";

   function qecvt_r
     (uu_value : long_double;
      uu_ndigit : int;
      uu_decpt : access int;
      uu_sign : access int;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_len : stddef_h.size_t) return int  -- /usr/include/stdlib.h:917
   with Import => True, 
        Convention => C, 
        External_Name => "qecvt_r";

   function qfcvt_r
     (uu_value : long_double;
      uu_ndigit : int;
      uu_decpt : access int;
      uu_sign : access int;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_len : stddef_h.size_t) return int  -- /usr/include/stdlib.h:921
   with Import => True, 
        Convention => C, 
        External_Name => "qfcvt_r";

   function mblen (uu_s : Interfaces.C.Strings.chars_ptr; uu_n : stddef_h.size_t) return int  -- /usr/include/stdlib.h:930
   with Import => True, 
        Convention => C, 
        External_Name => "mblen";

   function mbtowc
     (uu_pwc : access wchar_t;
      uu_s : Interfaces.C.Strings.chars_ptr;
      uu_n : stddef_h.size_t) return int  -- /usr/include/stdlib.h:933
   with Import => True, 
        Convention => C, 
        External_Name => "mbtowc";

   function wctomb (uu_s : Interfaces.C.Strings.chars_ptr; uu_wchar : wchar_t) return int  -- /usr/include/stdlib.h:937
   with Import => True, 
        Convention => C, 
        External_Name => "wctomb";

   function mbstowcs
     (uu_pwcs : access wchar_t;
      uu_s : Interfaces.C.Strings.chars_ptr;
      uu_n : stddef_h.size_t) return stddef_h.size_t  -- /usr/include/stdlib.h:941
   with Import => True, 
        Convention => C, 
        External_Name => "mbstowcs";

   function wcstombs
     (uu_s : Interfaces.C.Strings.chars_ptr;
      uu_pwcs : access wchar_t;
      uu_n : stddef_h.size_t) return stddef_h.size_t  -- /usr/include/stdlib.h:945
   with Import => True, 
        Convention => C, 
        External_Name => "wcstombs";

   function rpmatch (uu_response : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/stdlib.h:956
   with Import => True, 
        Convention => C, 
        External_Name => "rpmatch";

   function getsubopt
     (uu_optionp : System.Address;
      uu_tokens : System.Address;
      uu_valuep : System.Address) return int  -- /usr/include/stdlib.h:967
   with Import => True, 
        Convention => C, 
        External_Name => "getsubopt";

   function posix_openpt (uu_oflag : int) return int  -- /usr/include/stdlib.h:978
   with Import => True, 
        Convention => C, 
        External_Name => "posix_openpt";

   function grantpt (uu_fd : int) return int  -- /usr/include/stdlib.h:986
   with Import => True, 
        Convention => C, 
        External_Name => "grantpt";

   function unlockpt (uu_fd : int) return int  -- /usr/include/stdlib.h:990
   with Import => True, 
        Convention => C, 
        External_Name => "unlockpt";

   function ptsname (uu_fd : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/stdlib.h:995
   with Import => True, 
        Convention => C, 
        External_Name => "ptsname";

   function ptsname_r
     (uu_fd : int;
      uu_buf : Interfaces.C.Strings.chars_ptr;
      uu_buflen : stddef_h.size_t) return int  -- /usr/include/stdlib.h:1002
   with Import => True, 
        Convention => C, 
        External_Name => "ptsname_r";

   function getpt return int  -- /usr/include/stdlib.h:1006
   with Import => True, 
        Convention => C, 
        External_Name => "getpt";

   function getloadavg (uu_loadavg : access double; uu_nelem : int) return int  -- /usr/include/stdlib.h:1013
   with Import => True, 
        Convention => C, 
        External_Name => "getloadavg";

end stdlib_h;
