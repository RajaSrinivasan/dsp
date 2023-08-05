pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with aarch64_linux_gnu_bits_floatn_common_h;
with Interfaces.C.Extensions;
with Interfaces.C.Strings;
with aarch64_linux_gnu_bits_types_h;

package aarch64_linux_gnu_bits_mathcalls_h is

   function acos (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "acos";

   function acosf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "acosf";

   function acosl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "acosl";

   --  skipped func __acos

   --  skipped func __acosf

   --  skipped func __acosl

   function acosf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "acosf32";

   --  skipped func __acosf32

   function acosf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "acosf64";

   --  skipped func __acosf64

   function acosf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "acosf128";

   --  skipped func __acosf128

   function acosf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "acosf32x";

   --  skipped func __acosf32x

   function acosf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "acosf64x";

   --  skipped func __acosf64x

   function asin (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "asin";

   function asinf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "asinf";

   function asinl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "asinl";

   --  skipped func __asin

   --  skipped func __asinf

   --  skipped func __asinl

   function asinf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "asinf32";

   --  skipped func __asinf32

   function asinf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "asinf64";

   --  skipped func __asinf64

   function asinf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "asinf128";

   --  skipped func __asinf128

   function asinf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "asinf32x";

   --  skipped func __asinf32x

   function asinf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "asinf64x";

   --  skipped func __asinf64x

   function atan (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "atan";

   function atanf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "atanf";

   function atanl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "atanl";

   --  skipped func __atan

   --  skipped func __atanf

   --  skipped func __atanl

   function atanf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "atanf32";

   --  skipped func __atanf32

   function atanf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "atanf64";

   --  skipped func __atanf64

   function atanf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "atanf128";

   --  skipped func __atanf128

   function atanf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "atanf32x";

   --  skipped func __atanf32x

   function atanf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "atanf64x";

   --  skipped func __atanf64x

   function atan2 (uu_y : double; uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "atan2";

   function atan2f (uu_y : float; uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "atan2f";

   function atan2l (uu_y : long_double; uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "atan2l";

   --  skipped func __atan2

   --  skipped func __atan2f

   --  skipped func __atan2l

   function atan2f32 (uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "atan2f32";

   --  skipped func __atan2f32

   function atan2f64 (uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "atan2f64";

   --  skipped func __atan2f64

   function atan2f128 (uu_y : Extensions.Float_128; uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "atan2f128";

   --  skipped func __atan2f128

   function atan2f32x (uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "atan2f32x";

   --  skipped func __atan2f32x

   function atan2f64x (uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "atan2f64x";

   --  skipped func __atan2f64x

   function cos (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "cos";

   function cosf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "cosf";

   function cosl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "cosl";

   --  skipped func __cos

   --  skipped func __cosf

   --  skipped func __cosl

   function cosf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "cosf32";

   --  skipped func __cosf32

   function cosf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "cosf64";

   --  skipped func __cosf64

   function cosf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "cosf128";

   --  skipped func __cosf128

   function cosf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "cosf32x";

   --  skipped func __cosf32x

   function cosf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "cosf64x";

   --  skipped func __cosf64x

   function sin (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "sin";

   function sinf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "sinf";

   function sinl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "sinl";

   --  skipped func __sin

   --  skipped func __sinf

   --  skipped func __sinl

   function sinf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "sinf32";

   --  skipped func __sinf32

   function sinf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "sinf64";

   --  skipped func __sinf64

   function sinf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "sinf128";

   --  skipped func __sinf128

   function sinf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "sinf32x";

   --  skipped func __sinf32x

   function sinf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "sinf64x";

   --  skipped func __sinf64x

   function tan (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "tan";

   function tanf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "tanf";

   function tanl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "tanl";

   --  skipped func __tan

   --  skipped func __tanf

   --  skipped func __tanl

   function tanf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "tanf32";

   --  skipped func __tanf32

   function tanf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "tanf64";

   --  skipped func __tanf64

   function tanf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "tanf128";

   --  skipped func __tanf128

   function tanf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "tanf32x";

   --  skipped func __tanf32x

   function tanf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "tanf64x";

   --  skipped func __tanf64x

   function cosh (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "cosh";

   function coshf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "coshf";

   function coshl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "coshl";

   --  skipped func __cosh

   --  skipped func __coshf

   --  skipped func __coshl

   function coshf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "coshf32";

   --  skipped func __coshf32

   function coshf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "coshf64";

   --  skipped func __coshf64

   function coshf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "coshf128";

   --  skipped func __coshf128

   function coshf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "coshf32x";

   --  skipped func __coshf32x

   function coshf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "coshf64x";

   --  skipped func __coshf64x

   function sinh (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "sinh";

   function sinhf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "sinhf";

   function sinhl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "sinhl";

   --  skipped func __sinh

   --  skipped func __sinhf

   --  skipped func __sinhl

   function sinhf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "sinhf32";

   --  skipped func __sinhf32

   function sinhf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "sinhf64";

   --  skipped func __sinhf64

   function sinhf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "sinhf128";

   --  skipped func __sinhf128

   function sinhf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "sinhf32x";

   --  skipped func __sinhf32x

   function sinhf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "sinhf64x";

   --  skipped func __sinhf64x

   function tanh (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "tanh";

   function tanhf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "tanhf";

   function tanhl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "tanhl";

   --  skipped func __tanh

   --  skipped func __tanhf

   --  skipped func __tanhl

   function tanhf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "tanhf32";

   --  skipped func __tanhf32

   function tanhf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "tanhf64";

   --  skipped func __tanhf64

   function tanhf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "tanhf128";

   --  skipped func __tanhf128

   function tanhf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "tanhf32x";

   --  skipped func __tanhf32x

   function tanhf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "tanhf64x";

   --  skipped func __tanhf64x

   procedure sincos
     (uu_x : double;
      uu_sinx : access double;
      uu_cosx : access double)  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "sincos";

   procedure sincosf
     (uu_x : float;
      uu_sinx : access float;
      uu_cosx : access float)  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "sincosf";

   procedure sincosl
     (uu_x : long_double;
      uu_sinx : access long_double;
      uu_cosx : access long_double)  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "sincosl";

   --  skipped func __sincos

   --  skipped func __sincosf

   --  skipped func __sincosl

   procedure sincosf32
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32;
      uu_sinx : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32;
      uu_cosx : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32)  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "sincosf32";

   --  skipped func __sincosf32

   procedure sincosf64
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64;
      uu_sinx : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64;
      uu_cosx : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64)  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "sincosf64";

   --  skipped func __sincosf64

   procedure sincosf128
     (uu_x : Extensions.Float_128;
      uu_sinx : access Extensions.Float_128;
      uu_cosx : access Extensions.Float_128)  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "sincosf128";

   --  skipped func __sincosf128

   procedure sincosf32x
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x;
      uu_sinx : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32x;
      uu_cosx : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32x)  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "sincosf32x";

   --  skipped func __sincosf32x

   procedure sincosf64x
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x;
      uu_sinx : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64x;
      uu_cosx : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64x)  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "sincosf64x";

   --  skipped func __sincosf64x

   function acosh (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "acosh";

   function acoshf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "acoshf";

   function acoshl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "acoshl";

   --  skipped func __acosh

   --  skipped func __acoshf

   --  skipped func __acoshl

   function acoshf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "acoshf32";

   --  skipped func __acoshf32

   function acoshf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "acoshf64";

   --  skipped func __acoshf64

   function acoshf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "acoshf128";

   --  skipped func __acoshf128

   function acoshf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "acoshf32x";

   --  skipped func __acoshf32x

   function acoshf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "acoshf64x";

   --  skipped func __acoshf64x

   function asinh (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "asinh";

   function asinhf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "asinhf";

   function asinhl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "asinhl";

   --  skipped func __asinh

   --  skipped func __asinhf

   --  skipped func __asinhl

   function asinhf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "asinhf32";

   --  skipped func __asinhf32

   function asinhf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "asinhf64";

   --  skipped func __asinhf64

   function asinhf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "asinhf128";

   --  skipped func __asinhf128

   function asinhf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "asinhf32x";

   --  skipped func __asinhf32x

   function asinhf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "asinhf64x";

   --  skipped func __asinhf64x

   function atanh (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "atanh";

   function atanhf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "atanhf";

   function atanhl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "atanhl";

   --  skipped func __atanh

   --  skipped func __atanhf

   --  skipped func __atanhl

   function atanhf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "atanhf32";

   --  skipped func __atanhf32

   function atanhf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "atanhf64";

   --  skipped func __atanhf64

   function atanhf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "atanhf128";

   --  skipped func __atanhf128

   function atanhf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "atanhf32x";

   --  skipped func __atanhf32x

   function atanhf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "atanhf64x";

   --  skipped func __atanhf64x

   function exp (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "exp";

   function expf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "expf";

   function expl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "expl";

   --  skipped func __exp

   --  skipped func __expf

   --  skipped func __expl

   function expf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "expf32";

   --  skipped func __expf32

   function expf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "expf64";

   --  skipped func __expf64

   function expf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "expf128";

   --  skipped func __expf128

   function expf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "expf32x";

   --  skipped func __expf32x

   function expf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "expf64x";

   --  skipped func __expf64x

   function frexp (uu_x : double; uu_exponent : access int) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "frexp";

   function frexpf (uu_x : float; uu_exponent : access int) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "frexpf";

   function frexpl (uu_x : long_double; uu_exponent : access int) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "frexpl";

   --  skipped func __frexp

   --  skipped func __frexpf

   --  skipped func __frexpl

   function frexpf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_exponent : access int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "frexpf32";

   --  skipped func __frexpf32

   function frexpf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_exponent : access int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "frexpf64";

   --  skipped func __frexpf64

   function frexpf128 (uu_x : Extensions.Float_128; uu_exponent : access int) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "frexpf128";

   --  skipped func __frexpf128

   function frexpf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_exponent : access int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "frexpf32x";

   --  skipped func __frexpf32x

   function frexpf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_exponent : access int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "frexpf64x";

   --  skipped func __frexpf64x

   function ldexp (uu_x : double; uu_exponent : int) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "ldexp";

   function ldexpf (uu_x : float; uu_exponent : int) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "ldexpf";

   function ldexpl (uu_x : long_double; uu_exponent : int) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "ldexpl";

   --  skipped func __ldexp

   --  skipped func __ldexpf

   --  skipped func __ldexpl

   function ldexpf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_exponent : int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "ldexpf32";

   --  skipped func __ldexpf32

   function ldexpf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_exponent : int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "ldexpf64";

   --  skipped func __ldexpf64

   function ldexpf128 (uu_x : Extensions.Float_128; uu_exponent : int) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "ldexpf128";

   --  skipped func __ldexpf128

   function ldexpf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_exponent : int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "ldexpf32x";

   --  skipped func __ldexpf32x

   function ldexpf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_exponent : int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "ldexpf64x";

   --  skipped func __ldexpf64x

   function log (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "log";

   function logf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "logf";

   function logl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "logl";

   --  skipped func __log

   --  skipped func __logf

   --  skipped func __logl

   function logf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "logf32";

   --  skipped func __logf32

   function logf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "logf64";

   --  skipped func __logf64

   function logf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "logf128";

   --  skipped func __logf128

   function logf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "logf32x";

   --  skipped func __logf32x

   function logf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "logf64x";

   --  skipped func __logf64x

   function log10 (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "log10";

   function log10f (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "log10f";

   function log10l (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "log10l";

   --  skipped func __log10

   --  skipped func __log10f

   --  skipped func __log10l

   function log10f32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "log10f32";

   --  skipped func __log10f32

   function log10f64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "log10f64";

   --  skipped func __log10f64

   function log10f128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "log10f128";

   --  skipped func __log10f128

   function log10f32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "log10f32x";

   --  skipped func __log10f32x

   function log10f64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "log10f64x";

   --  skipped func __log10f64x

   function modf (uu_x : double; uu_iptr : access double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "modf";

   function modff (uu_x : float; uu_iptr : access float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "modff";

   function modfl (uu_x : long_double; uu_iptr : access long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "modfl";

   --  skipped func __modf

   --  skipped func __modff

   --  skipped func __modfl

   function modff32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_iptr : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "modff32";

   --  skipped func __modff32

   function modff64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_iptr : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "modff64";

   --  skipped func __modff64

   function modff128 (uu_x : Extensions.Float_128; uu_iptr : access Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "modff128";

   --  skipped func __modff128

   function modff32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_iptr : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "modff32x";

   --  skipped func __modff32x

   function modff64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_iptr : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "modff64x";

   --  skipped func __modff64x

   function exp10 (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "exp10";

   function exp10f (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "exp10f";

   function exp10l (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "exp10l";

   --  skipped func __exp10

   --  skipped func __exp10f

   --  skipped func __exp10l

   function exp10f32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "exp10f32";

   --  skipped func __exp10f32

   function exp10f64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "exp10f64";

   --  skipped func __exp10f64

   function exp10f128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "exp10f128";

   --  skipped func __exp10f128

   function exp10f32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "exp10f32x";

   --  skipped func __exp10f32x

   function exp10f64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "exp10f64x";

   --  skipped func __exp10f64x

   function expm1 (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "expm1";

   function expm1f (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "expm1f";

   function expm1l (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "expm1l";

   --  skipped func __expm1

   --  skipped func __expm1f

   --  skipped func __expm1l

   function expm1f32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "expm1f32";

   --  skipped func __expm1f32

   function expm1f64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "expm1f64";

   --  skipped func __expm1f64

   function expm1f128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "expm1f128";

   --  skipped func __expm1f128

   function expm1f32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "expm1f32x";

   --  skipped func __expm1f32x

   function expm1f64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "expm1f64x";

   --  skipped func __expm1f64x

   function log1p (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "log1p";

   function log1pf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "log1pf";

   function log1pl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "log1pl";

   --  skipped func __log1p

   --  skipped func __log1pf

   --  skipped func __log1pl

   function log1pf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "log1pf32";

   --  skipped func __log1pf32

   function log1pf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "log1pf64";

   --  skipped func __log1pf64

   function log1pf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "log1pf128";

   --  skipped func __log1pf128

   function log1pf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "log1pf32x";

   --  skipped func __log1pf32x

   function log1pf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "log1pf64x";

   --  skipped func __log1pf64x

   function logb (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "logb";

   function logbf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "logbf";

   function logbl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "logbl";

   --  skipped func __logb

   --  skipped func __logbf

   --  skipped func __logbl

   function logbf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "logbf32";

   --  skipped func __logbf32

   function logbf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "logbf64";

   --  skipped func __logbf64

   function logbf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "logbf128";

   --  skipped func __logbf128

   function logbf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "logbf32x";

   --  skipped func __logbf32x

   function logbf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "logbf64x";

   --  skipped func __logbf64x

   function exp2 (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "exp2";

   function exp2f (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "exp2f";

   function exp2l (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "exp2l";

   --  skipped func __exp2

   --  skipped func __exp2f

   --  skipped func __exp2l

   function exp2f32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "exp2f32";

   --  skipped func __exp2f32

   function exp2f64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "exp2f64";

   --  skipped func __exp2f64

   function exp2f128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "exp2f128";

   --  skipped func __exp2f128

   function exp2f32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "exp2f32x";

   --  skipped func __exp2f32x

   function exp2f64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "exp2f64x";

   --  skipped func __exp2f64x

   function log2 (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "log2";

   function log2f (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "log2f";

   function log2l (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "log2l";

   --  skipped func __log2

   --  skipped func __log2f

   --  skipped func __log2l

   function log2f32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "log2f32";

   --  skipped func __log2f32

   function log2f64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "log2f64";

   --  skipped func __log2f64

   function log2f128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "log2f128";

   --  skipped func __log2f128

   function log2f32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "log2f32x";

   --  skipped func __log2f32x

   function log2f64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "log2f64x";

   --  skipped func __log2f64x

   function pow (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "pow";

   function powf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "powf";

   function powl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "powl";

   --  skipped func __pow

   --  skipped func __powf

   --  skipped func __powl

   function powf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "powf32";

   --  skipped func __powf32

   function powf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "powf64";

   --  skipped func __powf64

   function powf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "powf128";

   --  skipped func __powf128

   function powf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "powf32x";

   --  skipped func __powf32x

   function powf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "powf64x";

   --  skipped func __powf64x

   function sqrt (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "sqrt";

   function sqrtf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "sqrtf";

   function sqrtl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "sqrtl";

   --  skipped func __sqrt

   --  skipped func __sqrtf

   --  skipped func __sqrtl

   function sqrtf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "sqrtf32";

   --  skipped func __sqrtf32

   function sqrtf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "sqrtf64";

   --  skipped func __sqrtf64

   function sqrtf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "sqrtf128";

   --  skipped func __sqrtf128

   function sqrtf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "sqrtf32x";

   --  skipped func __sqrtf32x

   function sqrtf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "sqrtf64x";

   --  skipped func __sqrtf64x

   function hypot (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "hypot";

   function hypotf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "hypotf";

   function hypotl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "hypotl";

   --  skipped func __hypot

   --  skipped func __hypotf

   --  skipped func __hypotl

   function hypotf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "hypotf32";

   --  skipped func __hypotf32

   function hypotf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "hypotf64";

   --  skipped func __hypotf64

   function hypotf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "hypotf128";

   --  skipped func __hypotf128

   function hypotf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "hypotf32x";

   --  skipped func __hypotf32x

   function hypotf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "hypotf64x";

   --  skipped func __hypotf64x

   function cbrt (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "cbrt";

   function cbrtf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "cbrtf";

   function cbrtl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "cbrtl";

   --  skipped func __cbrt

   --  skipped func __cbrtf

   --  skipped func __cbrtl

   function cbrtf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "cbrtf32";

   --  skipped func __cbrtf32

   function cbrtf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "cbrtf64";

   --  skipped func __cbrtf64

   function cbrtf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "cbrtf128";

   --  skipped func __cbrtf128

   function cbrtf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "cbrtf32x";

   --  skipped func __cbrtf32x

   function cbrtf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "cbrtf64x";

   --  skipped func __cbrtf64x

   function ceil (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "ceil";

   function ceilf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "ceilf";

   function ceill (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "ceill";

   --  skipped func __ceil

   --  skipped func __ceilf

   --  skipped func __ceill

   function ceilf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "ceilf32";

   --  skipped func __ceilf32

   function ceilf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "ceilf64";

   --  skipped func __ceilf64

   function ceilf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "ceilf128";

   --  skipped func __ceilf128

   function ceilf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "ceilf32x";

   --  skipped func __ceilf32x

   function ceilf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "ceilf64x";

   --  skipped func __ceilf64x

   function fabs (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "fabs";

   function fabsf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "fabsf";

   function fabsl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "fabsl";

   --  skipped func __fabs

   --  skipped func __fabsf

   --  skipped func __fabsl

   function fabsf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "fabsf32";

   --  skipped func __fabsf32

   function fabsf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "fabsf64";

   --  skipped func __fabsf64

   function fabsf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "fabsf128";

   --  skipped func __fabsf128

   function fabsf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "fabsf32x";

   --  skipped func __fabsf32x

   function fabsf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "fabsf64x";

   --  skipped func __fabsf64x

   function floor (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "floor";

   function floorf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "floorf";

   function floorl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "floorl";

   --  skipped func __floor

   --  skipped func __floorf

   --  skipped func __floorl

   function floorf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "floorf32";

   --  skipped func __floorf32

   function floorf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "floorf64";

   --  skipped func __floorf64

   function floorf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "floorf128";

   --  skipped func __floorf128

   function floorf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "floorf32x";

   --  skipped func __floorf32x

   function floorf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "floorf64x";

   --  skipped func __floorf64x

   function fmod (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "fmod";

   function fmodf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "fmodf";

   function fmodl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "fmodl";

   --  skipped func __fmod

   --  skipped func __fmodf

   --  skipped func __fmodl

   function fmodf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "fmodf32";

   --  skipped func __fmodf32

   function fmodf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "fmodf64";

   --  skipped func __fmodf64

   function fmodf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "fmodf128";

   --  skipped func __fmodf128

   function fmodf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "fmodf32x";

   --  skipped func __fmodf32x

   function fmodf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "fmodf64x";

   --  skipped func __fmodf64x

   function isinff (uu_value : float) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "isinff";

   function isinfl (uu_value : long_double) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "isinfl";

   function finite (uu_value : double) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "finite";

   function finitef (uu_value : float) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "finitef";

   function finitel (uu_value : long_double) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "finitel";

   function drem (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "drem";

   function dremf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "dremf";

   function dreml (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "dreml";

   --  skipped func __drem

   --  skipped func __dremf

   --  skipped func __dreml

   function significand (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "significand";

   function significandf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "significandf";

   function significandl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "significandl";

   --  skipped func __significand

   --  skipped func __significandf

   --  skipped func __significandl

   function copysign (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "copysign";

   function copysignf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "copysignf";

   function copysignl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "copysignl";

   --  skipped func __copysign

   --  skipped func __copysignf

   --  skipped func __copysignl

   function copysignf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "copysignf32";

   --  skipped func __copysignf32

   function copysignf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "copysignf64";

   --  skipped func __copysignf64

   function copysignf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "copysignf128";

   --  skipped func __copysignf128

   function copysignf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "copysignf32x";

   --  skipped func __copysignf32x

   function copysignf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "copysignf64x";

   --  skipped func __copysignf64x

   function nan (uu_tagb : Interfaces.C.Strings.chars_ptr) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "nan";

   function nanf (uu_tagb : Interfaces.C.Strings.chars_ptr) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "nanf";

   function nanl (uu_tagb : Interfaces.C.Strings.chars_ptr) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "nanl";

   --  skipped func __nan

   --  skipped func __nanf

   --  skipped func __nanl

   function nanf32 (uu_tagb : Interfaces.C.Strings.chars_ptr) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "nanf32";

   --  skipped func __nanf32

   function nanf64 (uu_tagb : Interfaces.C.Strings.chars_ptr) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "nanf64";

   --  skipped func __nanf64

   function nanf128 (uu_tagb : Interfaces.C.Strings.chars_ptr) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "nanf128";

   --  skipped func __nanf128

   function nanf32x (uu_tagb : Interfaces.C.Strings.chars_ptr) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "nanf32x";

   --  skipped func __nanf32x

   function nanf64x (uu_tagb : Interfaces.C.Strings.chars_ptr) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "nanf64x";

   --  skipped func __nanf64x

   function isnanf (uu_value : float) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "isnanf";

   function isnanl (uu_value : long_double) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "isnanl";

   function j0 (arg1 : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "j0";

   function j0f (arg1 : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "j0f";

   function j0l (arg1 : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "j0l";

   --  skipped func __j0

   --  skipped func __j0f

   --  skipped func __j0l

   function j0f32 (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "j0f32";

   --  skipped func __j0f32

   function j0f64 (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "j0f64";

   --  skipped func __j0f64

   function j0f128 (arg1 : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "j0f128";

   --  skipped func __j0f128

   function j0f32x (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "j0f32x";

   --  skipped func __j0f32x

   function j0f64x (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "j0f64x";

   --  skipped func __j0f64x

   function j1 (arg1 : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "j1";

   function j1f (arg1 : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "j1f";

   function j1l (arg1 : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "j1l";

   --  skipped func __j1

   --  skipped func __j1f

   --  skipped func __j1l

   function j1f32 (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "j1f32";

   --  skipped func __j1f32

   function j1f64 (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "j1f64";

   --  skipped func __j1f64

   function j1f128 (arg1 : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "j1f128";

   --  skipped func __j1f128

   function j1f32x (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "j1f32x";

   --  skipped func __j1f32x

   function j1f64x (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "j1f64x";

   --  skipped func __j1f64x

   function jn (arg1 : int; arg2 : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "jn";

   function jnf (arg1 : int; arg2 : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "jnf";

   function jnl (arg1 : int; arg2 : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "jnl";

   --  skipped func __jn

   --  skipped func __jnf

   --  skipped func __jnl

   function jnf32 (arg1 : int; arg2 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "jnf32";

   --  skipped func __jnf32

   function jnf64 (arg1 : int; arg2 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "jnf64";

   --  skipped func __jnf64

   function jnf128 (arg1 : int; arg2 : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "jnf128";

   --  skipped func __jnf128

   function jnf32x (arg1 : int; arg2 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "jnf32x";

   --  skipped func __jnf32x

   function jnf64x (arg1 : int; arg2 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "jnf64x";

   --  skipped func __jnf64x

   function y0 (arg1 : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "y0";

   function y0f (arg1 : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "y0f";

   function y0l (arg1 : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "y0l";

   --  skipped func __y0

   --  skipped func __y0f

   --  skipped func __y0l

   function y0f32 (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "y0f32";

   --  skipped func __y0f32

   function y0f64 (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "y0f64";

   --  skipped func __y0f64

   function y0f128 (arg1 : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "y0f128";

   --  skipped func __y0f128

   function y0f32x (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "y0f32x";

   --  skipped func __y0f32x

   function y0f64x (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "y0f64x";

   --  skipped func __y0f64x

   function y1 (arg1 : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "y1";

   function y1f (arg1 : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "y1f";

   function y1l (arg1 : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "y1l";

   --  skipped func __y1

   --  skipped func __y1f

   --  skipped func __y1l

   function y1f32 (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "y1f32";

   --  skipped func __y1f32

   function y1f64 (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "y1f64";

   --  skipped func __y1f64

   function y1f128 (arg1 : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "y1f128";

   --  skipped func __y1f128

   function y1f32x (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "y1f32x";

   --  skipped func __y1f32x

   function y1f64x (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "y1f64x";

   --  skipped func __y1f64x

   function yn (arg1 : int; arg2 : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "yn";

   function ynf (arg1 : int; arg2 : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "ynf";

   function ynl (arg1 : int; arg2 : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "ynl";

   --  skipped func __yn

   --  skipped func __ynf

   --  skipped func __ynl

   function ynf32 (arg1 : int; arg2 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "ynf32";

   --  skipped func __ynf32

   function ynf64 (arg1 : int; arg2 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "ynf64";

   --  skipped func __ynf64

   function ynf128 (arg1 : int; arg2 : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "ynf128";

   --  skipped func __ynf128

   function ynf32x (arg1 : int; arg2 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "ynf32x";

   --  skipped func __ynf32x

   function ynf64x (arg1 : int; arg2 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "ynf64x";

   --  skipped func __ynf64x

   function erf (arg1 : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "erf";

   function erff (arg1 : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "erff";

   function erfl (arg1 : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "erfl";

   --  skipped func __erf

   --  skipped func __erff

   --  skipped func __erfl

   function erff32 (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "erff32";

   --  skipped func __erff32

   function erff64 (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "erff64";

   --  skipped func __erff64

   function erff128 (arg1 : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "erff128";

   --  skipped func __erff128

   function erff32x (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "erff32x";

   --  skipped func __erff32x

   function erff64x (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "erff64x";

   --  skipped func __erff64x

   function erfc (arg1 : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "erfc";

   function erfcf (arg1 : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "erfcf";

   function erfcl (arg1 : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "erfcl";

   --  skipped func __erfc

   --  skipped func __erfcf

   --  skipped func __erfcl

   function erfcf32 (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "erfcf32";

   --  skipped func __erfcf32

   function erfcf64 (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "erfcf64";

   --  skipped func __erfcf64

   function erfcf128 (arg1 : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "erfcf128";

   --  skipped func __erfcf128

   function erfcf32x (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "erfcf32x";

   --  skipped func __erfcf32x

   function erfcf64x (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "erfcf64x";

   --  skipped func __erfcf64x

   function lgamma (arg1 : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "lgamma";

   function lgammaf (arg1 : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "lgammaf";

   function lgammal (arg1 : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "lgammal";

   --  skipped func __lgamma

   --  skipped func __lgammaf

   --  skipped func __lgammal

   function lgammaf32 (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "lgammaf32";

   --  skipped func __lgammaf32

   function lgammaf64 (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "lgammaf64";

   --  skipped func __lgammaf64

   function lgammaf128 (arg1 : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "lgammaf128";

   --  skipped func __lgammaf128

   function lgammaf32x (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "lgammaf32x";

   --  skipped func __lgammaf32x

   function lgammaf64x (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "lgammaf64x";

   --  skipped func __lgammaf64x

   function tgamma (arg1 : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "tgamma";

   function tgammaf (arg1 : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "tgammaf";

   function tgammal (arg1 : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "tgammal";

   --  skipped func __tgamma

   --  skipped func __tgammaf

   --  skipped func __tgammal

   function tgammaf32 (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "tgammaf32";

   --  skipped func __tgammaf32

   function tgammaf64 (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "tgammaf64";

   --  skipped func __tgammaf64

   function tgammaf128 (arg1 : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "tgammaf128";

   --  skipped func __tgammaf128

   function tgammaf32x (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "tgammaf32x";

   --  skipped func __tgammaf32x

   function tgammaf64x (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "tgammaf64x";

   --  skipped func __tgammaf64x

   function gamma (arg1 : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "gamma";

   function gammaf (arg1 : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "gammaf";

   function gammal (arg1 : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "gammal";

   --  skipped func __gamma

   --  skipped func __gammaf

   --  skipped func __gammal

   function lgamma_r (arg1 : double; uu_signgamp : access int) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "lgamma_r";

   function lgammaf_r (arg1 : float; uu_signgamp : access int) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "lgammaf_r";

   function lgammal_r (arg1 : long_double; uu_signgamp : access int) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "lgammal_r";

   --  skipped func __lgamma_r

   --  skipped func __lgammaf_r

   --  skipped func __lgammal_r

   function lgammaf32_r (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_signgamp : access int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "lgammaf32_r";

   --  skipped func __lgammaf32_r

   function lgammaf64_r (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_signgamp : access int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "lgammaf64_r";

   --  skipped func __lgammaf64_r

   function lgammaf128_r (arg1 : Extensions.Float_128; uu_signgamp : access int) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "lgammaf128_r";

   --  skipped func __lgammaf128_r

   function lgammaf32x_r (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_signgamp : access int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "lgammaf32x_r";

   --  skipped func __lgammaf32x_r

   function lgammaf64x_r (arg1 : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_signgamp : access int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "lgammaf64x_r";

   --  skipped func __lgammaf64x_r

   function rint (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "rint";

   function rintf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "rintf";

   function rintl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "rintl";

   --  skipped func __rint

   --  skipped func __rintf

   --  skipped func __rintl

   function rintf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "rintf32";

   --  skipped func __rintf32

   function rintf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "rintf64";

   --  skipped func __rintf64

   function rintf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "rintf128";

   --  skipped func __rintf128

   function rintf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "rintf32x";

   --  skipped func __rintf32x

   function rintf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "rintf64x";

   --  skipped func __rintf64x

   function nextafter (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "nextafter";

   function nextafterf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "nextafterf";

   function nextafterl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "nextafterl";

   --  skipped func __nextafter

   --  skipped func __nextafterf

   --  skipped func __nextafterl

   function nextafterf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "nextafterf32";

   --  skipped func __nextafterf32

   function nextafterf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "nextafterf64";

   --  skipped func __nextafterf64

   function nextafterf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "nextafterf128";

   --  skipped func __nextafterf128

   function nextafterf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "nextafterf32x";

   --  skipped func __nextafterf32x

   function nextafterf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "nextafterf64x";

   --  skipped func __nextafterf64x

   function nexttoward (uu_x : double; uu_y : long_double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "nexttoward";

   function nexttowardf (uu_x : float; uu_y : long_double) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "nexttowardf";

   function nexttowardl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "nexttowardl";

   --  skipped func __nexttoward

   --  skipped func __nexttowardf

   --  skipped func __nexttowardl

   function nextdown (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "nextdown";

   --  skipped func __nextdown

   function nextdownf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "nextdownf";

   --  skipped func __nextdownf

   function nextdownl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "nextdownl";

   --  skipped func __nextdownl

   function nextdownf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "nextdownf32";

   --  skipped func __nextdownf32

   function nextdownf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "nextdownf64";

   --  skipped func __nextdownf64

   function nextdownf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "nextdownf128";

   --  skipped func __nextdownf128

   function nextdownf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "nextdownf32x";

   --  skipped func __nextdownf32x

   function nextdownf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "nextdownf64x";

   --  skipped func __nextdownf64x

   function nextup (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "nextup";

   --  skipped func __nextup

   function nextupf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "nextupf";

   --  skipped func __nextupf

   function nextupl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "nextupl";

   --  skipped func __nextupl

   function nextupf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "nextupf32";

   --  skipped func __nextupf32

   function nextupf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "nextupf64";

   --  skipped func __nextupf64

   function nextupf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "nextupf128";

   --  skipped func __nextupf128

   function nextupf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "nextupf32x";

   --  skipped func __nextupf32x

   function nextupf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "nextupf64x";

   --  skipped func __nextupf64x

   function remainder (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "remainder";

   function remainderf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "remainderf";

   function remainderl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "remainderl";

   --  skipped func __remainder

   --  skipped func __remainderf

   --  skipped func __remainderl

   function remainderf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "remainderf32";

   --  skipped func __remainderf32

   function remainderf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "remainderf64";

   --  skipped func __remainderf64

   function remainderf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "remainderf128";

   --  skipped func __remainderf128

   function remainderf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "remainderf32x";

   --  skipped func __remainderf32x

   function remainderf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "remainderf64x";

   --  skipped func __remainderf64x

   function scalbn (uu_x : double; uu_n : int) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "scalbn";

   function scalbnf (uu_x : float; uu_n : int) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "scalbnf";

   function scalbnl (uu_x : long_double; uu_n : int) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "scalbnl";

   --  skipped func __scalbn

   --  skipped func __scalbnf

   --  skipped func __scalbnl

   function scalbnf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_n : int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "scalbnf32";

   --  skipped func __scalbnf32

   function scalbnf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_n : int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "scalbnf64";

   --  skipped func __scalbnf64

   function scalbnf128 (uu_x : Extensions.Float_128; uu_n : int) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "scalbnf128";

   --  skipped func __scalbnf128

   function scalbnf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_n : int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "scalbnf32x";

   --  skipped func __scalbnf32x

   function scalbnf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_n : int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "scalbnf64x";

   --  skipped func __scalbnf64x

   function ilogb (uu_x : double) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "ilogb";

   function ilogbf (uu_x : float) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "ilogbf";

   function ilogbl (uu_x : long_double) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "ilogbl";

   --  skipped func __ilogb

   --  skipped func __ilogbf

   --  skipped func __ilogbl

   function ilogbf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "ilogbf32";

   --  skipped func __ilogbf32

   function ilogbf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "ilogbf64";

   --  skipped func __ilogbf64

   function ilogbf128 (uu_x : Extensions.Float_128) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "ilogbf128";

   --  skipped func __ilogbf128

   function ilogbf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "ilogbf32x";

   --  skipped func __ilogbf32x

   function ilogbf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "ilogbf64x";

   --  skipped func __ilogbf64x

   function llogb (uu_x : double) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "llogb";

   --  skipped func __llogb

   function llogbf (uu_x : float) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "llogbf";

   --  skipped func __llogbf

   function llogbl (uu_x : long_double) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "llogbl";

   --  skipped func __llogbl

   function llogbf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "llogbf32";

   --  skipped func __llogbf32

   function llogbf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "llogbf64";

   --  skipped func __llogbf64

   function llogbf128 (uu_x : Extensions.Float_128) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "llogbf128";

   --  skipped func __llogbf128

   function llogbf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "llogbf32x";

   --  skipped func __llogbf32x

   function llogbf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "llogbf64x";

   --  skipped func __llogbf64x

   function scalbln (uu_x : double; uu_n : long) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "scalbln";

   function scalblnf (uu_x : float; uu_n : long) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "scalblnf";

   function scalblnl (uu_x : long_double; uu_n : long) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "scalblnl";

   --  skipped func __scalbln

   --  skipped func __scalblnf

   --  skipped func __scalblnl

   function scalblnf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_n : long) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "scalblnf32";

   --  skipped func __scalblnf32

   function scalblnf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_n : long) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "scalblnf64";

   --  skipped func __scalblnf64

   function scalblnf128 (uu_x : Extensions.Float_128; uu_n : long) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "scalblnf128";

   --  skipped func __scalblnf128

   function scalblnf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_n : long) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "scalblnf32x";

   --  skipped func __scalblnf32x

   function scalblnf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_n : long) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "scalblnf64x";

   --  skipped func __scalblnf64x

   function nearbyint (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "nearbyint";

   function nearbyintf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "nearbyintf";

   function nearbyintl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "nearbyintl";

   --  skipped func __nearbyint

   --  skipped func __nearbyintf

   --  skipped func __nearbyintl

   function nearbyintf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "nearbyintf32";

   --  skipped func __nearbyintf32

   function nearbyintf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "nearbyintf64";

   --  skipped func __nearbyintf64

   function nearbyintf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "nearbyintf128";

   --  skipped func __nearbyintf128

   function nearbyintf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "nearbyintf32x";

   --  skipped func __nearbyintf32x

   function nearbyintf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "nearbyintf64x";

   --  skipped func __nearbyintf64x

   function round (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "round";

   function roundf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "roundf";

   function roundl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "roundl";

   --  skipped func __round

   --  skipped func __roundf

   --  skipped func __roundl

   function roundf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "roundf32";

   --  skipped func __roundf32

   function roundf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "roundf64";

   --  skipped func __roundf64

   function roundf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "roundf128";

   --  skipped func __roundf128

   function roundf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "roundf32x";

   --  skipped func __roundf32x

   function roundf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "roundf64x";

   --  skipped func __roundf64x

   function trunc (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "trunc";

   function truncf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "truncf";

   function truncl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "truncl";

   --  skipped func __trunc

   --  skipped func __truncf

   --  skipped func __truncl

   function truncf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "truncf32";

   --  skipped func __truncf32

   function truncf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "truncf64";

   --  skipped func __truncf64

   function truncf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "truncf128";

   --  skipped func __truncf128

   function truncf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "truncf32x";

   --  skipped func __truncf32x

   function truncf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "truncf64x";

   --  skipped func __truncf64x

   function remquo
     (uu_x : double;
      uu_y : double;
      uu_quo : access int) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "remquo";

   function remquof
     (uu_x : float;
      uu_y : float;
      uu_quo : access int) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "remquof";

   function remquol
     (uu_x : long_double;
      uu_y : long_double;
      uu_quo : access int) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "remquol";

   --  skipped func __remquo

   --  skipped func __remquof

   --  skipped func __remquol

   function remquof32
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32;
      uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32;
      uu_quo : access int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "remquof32";

   --  skipped func __remquof32

   function remquof64
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64;
      uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64;
      uu_quo : access int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "remquof64";

   --  skipped func __remquof64

   function remquof128
     (uu_x : Extensions.Float_128;
      uu_y : Extensions.Float_128;
      uu_quo : access int) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "remquof128";

   --  skipped func __remquof128

   function remquof32x
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x;
      uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x;
      uu_quo : access int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "remquof32x";

   --  skipped func __remquof32x

   function remquof64x
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x;
      uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x;
      uu_quo : access int) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "remquof64x";

   --  skipped func __remquof64x

   function lrint (uu_x : double) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "lrint";

   function lrintf (uu_x : float) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "lrintf";

   function lrintl (uu_x : long_double) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "lrintl";

   --  skipped func __lrint

   --  skipped func __lrintf

   --  skipped func __lrintl

   function lrintf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "lrintf32";

   --  skipped func __lrintf32

   function lrintf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "lrintf64";

   --  skipped func __lrintf64

   function lrintf128 (uu_x : Extensions.Float_128) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "lrintf128";

   --  skipped func __lrintf128

   function lrintf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "lrintf32x";

   --  skipped func __lrintf32x

   function lrintf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "lrintf64x";

   --  skipped func __lrintf64x

   function llrint (uu_x : double) return Long_Long_Integer  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "llrint";

   function llrintf (uu_x : float) return Long_Long_Integer  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "llrintf";

   function llrintl (uu_x : long_double) return Long_Long_Integer  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "llrintl";

   --  skipped func __llrint

   --  skipped func __llrintf

   --  skipped func __llrintl

   function llrintf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return Long_Long_Integer  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "llrintf32";

   --  skipped func __llrintf32

   function llrintf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return Long_Long_Integer  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "llrintf64";

   --  skipped func __llrintf64

   function llrintf128 (uu_x : Extensions.Float_128) return Long_Long_Integer  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "llrintf128";

   --  skipped func __llrintf128

   function llrintf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return Long_Long_Integer  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "llrintf32x";

   --  skipped func __llrintf32x

   function llrintf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return Long_Long_Integer  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "llrintf64x";

   --  skipped func __llrintf64x

   function lround (uu_x : double) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "lround";

   function lroundf (uu_x : float) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "lroundf";

   function lroundl (uu_x : long_double) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "lroundl";

   --  skipped func __lround

   --  skipped func __lroundf

   --  skipped func __lroundl

   function lroundf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "lroundf32";

   --  skipped func __lroundf32

   function lroundf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "lroundf64";

   --  skipped func __lroundf64

   function lroundf128 (uu_x : Extensions.Float_128) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "lroundf128";

   --  skipped func __lroundf128

   function lroundf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "lroundf32x";

   --  skipped func __lroundf32x

   function lroundf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return long  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "lroundf64x";

   --  skipped func __lroundf64x

   function llround (uu_x : double) return Long_Long_Integer  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "llround";

   function llroundf (uu_x : float) return Long_Long_Integer  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "llroundf";

   function llroundl (uu_x : long_double) return Long_Long_Integer  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "llroundl";

   --  skipped func __llround

   --  skipped func __llroundf

   --  skipped func __llroundl

   function llroundf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return Long_Long_Integer  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "llroundf32";

   --  skipped func __llroundf32

   function llroundf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return Long_Long_Integer  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "llroundf64";

   --  skipped func __llroundf64

   function llroundf128 (uu_x : Extensions.Float_128) return Long_Long_Integer  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "llroundf128";

   --  skipped func __llroundf128

   function llroundf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return Long_Long_Integer  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "llroundf32x";

   --  skipped func __llroundf32x

   function llroundf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return Long_Long_Integer  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "llroundf64x";

   --  skipped func __llroundf64x

   function fdim (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "fdim";

   function fdimf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "fdimf";

   function fdiml (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "fdiml";

   --  skipped func __fdim

   --  skipped func __fdimf

   --  skipped func __fdiml

   function fdimf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "fdimf32";

   --  skipped func __fdimf32

   function fdimf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "fdimf64";

   --  skipped func __fdimf64

   function fdimf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "fdimf128";

   --  skipped func __fdimf128

   function fdimf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "fdimf32x";

   --  skipped func __fdimf32x

   function fdimf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "fdimf64x";

   --  skipped func __fdimf64x

   function fmax (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "fmax";

   function fmaxf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "fmaxf";

   function fmaxl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "fmaxl";

   --  skipped func __fmax

   --  skipped func __fmaxf

   --  skipped func __fmaxl

   function fmaxf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "fmaxf32";

   --  skipped func __fmaxf32

   function fmaxf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "fmaxf64";

   --  skipped func __fmaxf64

   function fmaxf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "fmaxf128";

   --  skipped func __fmaxf128

   function fmaxf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "fmaxf32x";

   --  skipped func __fmaxf32x

   function fmaxf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "fmaxf64x";

   --  skipped func __fmaxf64x

   function fmin (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "fmin";

   function fminf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "fminf";

   function fminl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "fminl";

   --  skipped func __fmin

   --  skipped func __fminf

   --  skipped func __fminl

   function fminf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "fminf32";

   --  skipped func __fminf32

   function fminf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "fminf64";

   --  skipped func __fminf64

   function fminf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "fminf128";

   --  skipped func __fminf128

   function fminf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "fminf32x";

   --  skipped func __fminf32x

   function fminf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "fminf64x";

   --  skipped func __fminf64x

   function fma
     (uu_x : double;
      uu_y : double;
      uu_z : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "fma";

   function fmaf
     (uu_x : float;
      uu_y : float;
      uu_z : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "fmaf";

   function fmal
     (uu_x : long_double;
      uu_y : long_double;
      uu_z : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "fmal";

   --  skipped func __fma

   --  skipped func __fmaf

   --  skipped func __fmal

   function fmaf32
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32;
      uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32;
      uu_z : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "fmaf32";

   --  skipped func __fmaf32

   function fmaf64
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64;
      uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64;
      uu_z : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "fmaf64";

   --  skipped func __fmaf64

   function fmaf128
     (uu_x : Extensions.Float_128;
      uu_y : Extensions.Float_128;
      uu_z : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "fmaf128";

   --  skipped func __fmaf128

   function fmaf32x
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x;
      uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x;
      uu_z : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "fmaf32x";

   --  skipped func __fmaf32x

   function fmaf64x
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x;
      uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x;
      uu_z : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "fmaf64x";

   --  skipped func __fmaf64x

   function roundeven (uu_x : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "roundeven";

   function roundevenf (uu_x : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "roundevenf";

   function roundevenl (uu_x : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "roundevenl";

   --  skipped func __roundeven

   --  skipped func __roundevenf

   --  skipped func __roundevenl

   function roundevenf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "roundevenf32";

   --  skipped func __roundevenf32

   function roundevenf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "roundevenf64";

   --  skipped func __roundevenf64

   function roundevenf128 (uu_x : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "roundevenf128";

   --  skipped func __roundevenf128

   function roundevenf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "roundevenf32x";

   --  skipped func __roundevenf32x

   function roundevenf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "roundevenf64x";

   --  skipped func __roundevenf64x

   function fromfp
     (uu_x : double;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_intmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "fromfp";

   --  skipped func __fromfp

   function fromfpf
     (uu_x : float;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_intmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "fromfpf";

   --  skipped func __fromfpf

   function fromfpl
     (uu_x : long_double;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_intmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "fromfpl";

   --  skipped func __fromfpl

   function fromfpf32
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_intmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "fromfpf32";

   --  skipped func __fromfpf32

   function fromfpf64
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_intmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "fromfpf64";

   --  skipped func __fromfpf64

   function fromfpf128
     (uu_x : Extensions.Float_128;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_intmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "fromfpf128";

   --  skipped func __fromfpf128

   function fromfpf32x
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_intmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "fromfpf32x";

   --  skipped func __fromfpf32x

   function fromfpf64x
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_intmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "fromfpf64x";

   --  skipped func __fromfpf64x

   function ufromfp
     (uu_x : double;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_uintmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:354
   with Import => True, 
        Convention => C, 
        External_Name => "ufromfp";

   --  skipped func __ufromfp

   function ufromfpf
     (uu_x : float;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_uintmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:354
   with Import => True, 
        Convention => C, 
        External_Name => "ufromfpf";

   --  skipped func __ufromfpf

   function ufromfpl
     (uu_x : long_double;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_uintmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:354
   with Import => True, 
        Convention => C, 
        External_Name => "ufromfpl";

   --  skipped func __ufromfpl

   function ufromfpf32
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_uintmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:354
   with Import => True, 
        Convention => C, 
        External_Name => "ufromfpf32";

   --  skipped func __ufromfpf32

   function ufromfpf64
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_uintmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:354
   with Import => True, 
        Convention => C, 
        External_Name => "ufromfpf64";

   --  skipped func __ufromfpf64

   function ufromfpf128
     (uu_x : Extensions.Float_128;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_uintmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:354
   with Import => True, 
        Convention => C, 
        External_Name => "ufromfpf128";

   --  skipped func __ufromfpf128

   function ufromfpf32x
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_uintmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:354
   with Import => True, 
        Convention => C, 
        External_Name => "ufromfpf32x";

   --  skipped func __ufromfpf32x

   function ufromfpf64x
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_uintmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:354
   with Import => True, 
        Convention => C, 
        External_Name => "ufromfpf64x";

   --  skipped func __ufromfpf64x

   function fromfpx
     (uu_x : double;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_intmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "fromfpx";

   --  skipped func __fromfpx

   function fromfpxf
     (uu_x : float;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_intmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "fromfpxf";

   --  skipped func __fromfpxf

   function fromfpxl
     (uu_x : long_double;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_intmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "fromfpxl";

   --  skipped func __fromfpxl

   function fromfpxf32
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_intmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "fromfpxf32";

   --  skipped func __fromfpxf32

   function fromfpxf64
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_intmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "fromfpxf64";

   --  skipped func __fromfpxf64

   function fromfpxf128
     (uu_x : Extensions.Float_128;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_intmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "fromfpxf128";

   --  skipped func __fromfpxf128

   function fromfpxf32x
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_intmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "fromfpxf32x";

   --  skipped func __fromfpxf32x

   function fromfpxf64x
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_intmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "fromfpxf64x";

   --  skipped func __fromfpxf64x

   function ufromfpx
     (uu_x : double;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_uintmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "ufromfpx";

   --  skipped func __ufromfpx

   function ufromfpxf
     (uu_x : float;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_uintmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "ufromfpxf";

   --  skipped func __ufromfpxf

   function ufromfpxl
     (uu_x : long_double;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_uintmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "ufromfpxl";

   --  skipped func __ufromfpxl

   function ufromfpxf32
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_uintmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "ufromfpxf32";

   --  skipped func __ufromfpxf32

   function ufromfpxf64
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_uintmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "ufromfpxf64";

   --  skipped func __ufromfpxf64

   function ufromfpxf128
     (uu_x : Extensions.Float_128;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_uintmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "ufromfpxf128";

   --  skipped func __ufromfpxf128

   function ufromfpxf32x
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_uintmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "ufromfpxf32x";

   --  skipped func __ufromfpxf32x

   function ufromfpxf64x
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x;
      uu_round : int;
      uu_width : unsigned) return aarch64_linux_gnu_bits_types_h.uu_uintmax_t  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "ufromfpxf64x";

   --  skipped func __ufromfpxf64x

   function canonicalize (uu_cx : access double; uu_x : access double) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:370
   with Import => True, 
        Convention => C, 
        External_Name => "canonicalize";

   function canonicalizef (uu_cx : access float; uu_x : access float) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:370
   with Import => True, 
        Convention => C, 
        External_Name => "canonicalizef";

   function canonicalizel (uu_cx : access long_double; uu_x : access long_double) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:370
   with Import => True, 
        Convention => C, 
        External_Name => "canonicalizel";

   function canonicalizef32 (uu_cx : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:370
   with Import => True, 
        Convention => C, 
        External_Name => "canonicalizef32";

   function canonicalizef64 (uu_cx : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:370
   with Import => True, 
        Convention => C, 
        External_Name => "canonicalizef64";

   function canonicalizef128 (uu_cx : access Extensions.Float_128; uu_x : access Extensions.Float_128) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:370
   with Import => True, 
        Convention => C, 
        External_Name => "canonicalizef128";

   function canonicalizef32x (uu_cx : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:370
   with Import => True, 
        Convention => C, 
        External_Name => "canonicalizef32x";

   function canonicalizef64x (uu_cx : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:370
   with Import => True, 
        Convention => C, 
        External_Name => "canonicalizef64x";

   function fmaxmag (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:377
   with Import => True, 
        Convention => C, 
        External_Name => "fmaxmag";

   --  skipped func __fmaxmag

   function fmaxmagf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:377
   with Import => True, 
        Convention => C, 
        External_Name => "fmaxmagf";

   --  skipped func __fmaxmagf

   function fmaxmagl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:377
   with Import => True, 
        Convention => C, 
        External_Name => "fmaxmagl";

   --  skipped func __fmaxmagl

   function fmaxmagf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:377
   with Import => True, 
        Convention => C, 
        External_Name => "fmaxmagf32";

   --  skipped func __fmaxmagf32

   function fmaxmagf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:377
   with Import => True, 
        Convention => C, 
        External_Name => "fmaxmagf64";

   --  skipped func __fmaxmagf64

   function fmaxmagf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:377
   with Import => True, 
        Convention => C, 
        External_Name => "fmaxmagf128";

   --  skipped func __fmaxmagf128

   function fmaxmagf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:377
   with Import => True, 
        Convention => C, 
        External_Name => "fmaxmagf32x";

   --  skipped func __fmaxmagf32x

   function fmaxmagf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:377
   with Import => True, 
        Convention => C, 
        External_Name => "fmaxmagf64x";

   --  skipped func __fmaxmagf64x

   function fminmag (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:380
   with Import => True, 
        Convention => C, 
        External_Name => "fminmag";

   --  skipped func __fminmag

   function fminmagf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:380
   with Import => True, 
        Convention => C, 
        External_Name => "fminmagf";

   --  skipped func __fminmagf

   function fminmagl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:380
   with Import => True, 
        Convention => C, 
        External_Name => "fminmagl";

   --  skipped func __fminmagl

   function fminmagf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:380
   with Import => True, 
        Convention => C, 
        External_Name => "fminmagf32";

   --  skipped func __fminmagf32

   function fminmagf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:380
   with Import => True, 
        Convention => C, 
        External_Name => "fminmagf64";

   --  skipped func __fminmagf64

   function fminmagf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:380
   with Import => True, 
        Convention => C, 
        External_Name => "fminmagf128";

   --  skipped func __fminmagf128

   function fminmagf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:380
   with Import => True, 
        Convention => C, 
        External_Name => "fminmagf32x";

   --  skipped func __fminmagf32x

   function fminmagf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:380
   with Import => True, 
        Convention => C, 
        External_Name => "fminmagf64x";

   --  skipped func __fminmagf64x

   function fmaximum (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:385
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum";

   --  skipped func __fmaximum

   function fmaximumf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:385
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximumf";

   --  skipped func __fmaximumf

   function fmaximuml (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:385
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximuml";

   --  skipped func __fmaximuml

   function fmaximumf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:385
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximumf32";

   --  skipped func __fmaximumf32

   function fmaximumf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:385
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximumf64";

   --  skipped func __fmaximumf64

   function fmaximumf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:385
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximumf128";

   --  skipped func __fmaximumf128

   function fmaximumf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:385
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximumf32x";

   --  skipped func __fmaximumf32x

   function fmaximumf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:385
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximumf64x";

   --  skipped func __fmaximumf64x

   function fminimum (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum";

   --  skipped func __fminimum

   function fminimumf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "fminimumf";

   --  skipped func __fminimumf

   function fminimuml (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "fminimuml";

   --  skipped func __fminimuml

   function fminimumf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "fminimumf32";

   --  skipped func __fminimumf32

   function fminimumf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "fminimumf64";

   --  skipped func __fminimumf64

   function fminimumf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "fminimumf128";

   --  skipped func __fminimumf128

   function fminimumf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "fminimumf32x";

   --  skipped func __fminimumf32x

   function fminimumf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "fminimumf64x";

   --  skipped func __fminimumf64x

   function fmaximum_num (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:391
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_num";

   --  skipped func __fmaximum_num

   function fmaximum_numf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:391
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_numf";

   --  skipped func __fmaximum_numf

   function fmaximum_numl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:391
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_numl";

   --  skipped func __fmaximum_numl

   function fmaximum_numf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:391
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_numf32";

   --  skipped func __fmaximum_numf32

   function fmaximum_numf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:391
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_numf64";

   --  skipped func __fmaximum_numf64

   function fmaximum_numf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:391
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_numf128";

   --  skipped func __fmaximum_numf128

   function fmaximum_numf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:391
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_numf32x";

   --  skipped func __fmaximum_numf32x

   function fmaximum_numf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:391
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_numf64x";

   --  skipped func __fmaximum_numf64x

   function fminimum_num (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:394
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_num";

   --  skipped func __fminimum_num

   function fminimum_numf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:394
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_numf";

   --  skipped func __fminimum_numf

   function fminimum_numl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:394
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_numl";

   --  skipped func __fminimum_numl

   function fminimum_numf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:394
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_numf32";

   --  skipped func __fminimum_numf32

   function fminimum_numf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:394
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_numf64";

   --  skipped func __fminimum_numf64

   function fminimum_numf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:394
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_numf128";

   --  skipped func __fminimum_numf128

   function fminimum_numf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:394
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_numf32x";

   --  skipped func __fminimum_numf32x

   function fminimum_numf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:394
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_numf64x";

   --  skipped func __fminimum_numf64x

   function fmaximum_mag (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:397
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_mag";

   --  skipped func __fmaximum_mag

   function fmaximum_magf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:397
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_magf";

   --  skipped func __fmaximum_magf

   function fmaximum_magl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:397
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_magl";

   --  skipped func __fmaximum_magl

   function fmaximum_magf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:397
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_magf32";

   --  skipped func __fmaximum_magf32

   function fmaximum_magf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:397
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_magf64";

   --  skipped func __fmaximum_magf64

   function fmaximum_magf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:397
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_magf128";

   --  skipped func __fmaximum_magf128

   function fmaximum_magf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:397
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_magf32x";

   --  skipped func __fmaximum_magf32x

   function fmaximum_magf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:397
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_magf64x";

   --  skipped func __fmaximum_magf64x

   function fminimum_mag (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:400
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_mag";

   --  skipped func __fminimum_mag

   function fminimum_magf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:400
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_magf";

   --  skipped func __fminimum_magf

   function fminimum_magl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:400
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_magl";

   --  skipped func __fminimum_magl

   function fminimum_magf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:400
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_magf32";

   --  skipped func __fminimum_magf32

   function fminimum_magf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:400
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_magf64";

   --  skipped func __fminimum_magf64

   function fminimum_magf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:400
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_magf128";

   --  skipped func __fminimum_magf128

   function fminimum_magf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:400
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_magf32x";

   --  skipped func __fminimum_magf32x

   function fminimum_magf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:400
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_magf64x";

   --  skipped func __fminimum_magf64x

   function fmaximum_mag_num (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:403
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_mag_num";

   --  skipped func __fmaximum_mag_num

   function fmaximum_mag_numf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:403
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_mag_numf";

   --  skipped func __fmaximum_mag_numf

   function fmaximum_mag_numl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:403
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_mag_numl";

   --  skipped func __fmaximum_mag_numl

   function fmaximum_mag_numf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:403
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_mag_numf32";

   --  skipped func __fmaximum_mag_numf32

   function fmaximum_mag_numf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:403
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_mag_numf64";

   --  skipped func __fmaximum_mag_numf64

   function fmaximum_mag_numf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:403
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_mag_numf128";

   --  skipped func __fmaximum_mag_numf128

   function fmaximum_mag_numf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:403
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_mag_numf32x";

   --  skipped func __fmaximum_mag_numf32x

   function fmaximum_mag_numf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:403
   with Import => True, 
        Convention => C, 
        External_Name => "fmaximum_mag_numf64x";

   --  skipped func __fmaximum_mag_numf64x

   function fminimum_mag_num (uu_x : double; uu_y : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:406
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_mag_num";

   --  skipped func __fminimum_mag_num

   function fminimum_mag_numf (uu_x : float; uu_y : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:406
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_mag_numf";

   --  skipped func __fminimum_mag_numf

   function fminimum_mag_numl (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:406
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_mag_numl";

   --  skipped func __fminimum_mag_numl

   function fminimum_mag_numf32 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:406
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_mag_numf32";

   --  skipped func __fminimum_mag_numf32

   function fminimum_mag_numf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:406
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_mag_numf64";

   --  skipped func __fminimum_mag_numf64

   function fminimum_mag_numf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:406
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_mag_numf128";

   --  skipped func __fminimum_mag_numf128

   function fminimum_mag_numf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:406
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_mag_numf32x";

   --  skipped func __fminimum_mag_numf32x

   function fminimum_mag_numf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:406
   with Import => True, 
        Convention => C, 
        External_Name => "fminimum_mag_numf64x";

   --  skipped func __fminimum_mag_numf64x

   function totalorder (uu_x : access double; uu_y : access double) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "totalorder";

   function totalorderf (uu_x : access float; uu_y : access float) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "totalorderf";

   function totalorderl (uu_x : access long_double; uu_y : access long_double) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "totalorderl";

   function totalorderf32 (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "totalorderf32";

   function totalorderf64 (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "totalorderf64";

   function totalorderf128 (uu_x : access Extensions.Float_128; uu_y : access Extensions.Float_128) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "totalorderf128";

   function totalorderf32x (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "totalorderf32x";

   function totalorderf64x (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "totalorderf64x";

   function totalordermag (uu_x : access double; uu_y : access double) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:416
   with Import => True, 
        Convention => C, 
        External_Name => "totalordermag";

   function totalordermagf (uu_x : access float; uu_y : access float) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:416
   with Import => True, 
        Convention => C, 
        External_Name => "totalordermagf";

   function totalordermagl (uu_x : access long_double; uu_y : access long_double) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:416
   with Import => True, 
        Convention => C, 
        External_Name => "totalordermagl";

   function totalordermagf32 (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_y : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:416
   with Import => True, 
        Convention => C, 
        External_Name => "totalordermagf32";

   function totalordermagf64 (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:416
   with Import => True, 
        Convention => C, 
        External_Name => "totalordermagf64";

   function totalordermagf128 (uu_x : access Extensions.Float_128; uu_y : access Extensions.Float_128) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:416
   with Import => True, 
        Convention => C, 
        External_Name => "totalordermagf128";

   function totalordermagf32x (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:416
   with Import => True, 
        Convention => C, 
        External_Name => "totalordermagf32x";

   function totalordermagf64x (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:416
   with Import => True, 
        Convention => C, 
        External_Name => "totalordermagf64x";

   function getpayload (uu_x : access double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:421
   with Import => True, 
        Convention => C, 
        External_Name => "getpayload";

   --  skipped func __getpayload

   function getpayloadf (uu_x : access float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:421
   with Import => True, 
        Convention => C, 
        External_Name => "getpayloadf";

   --  skipped func __getpayloadf

   function getpayloadl (uu_x : access long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:421
   with Import => True, 
        Convention => C, 
        External_Name => "getpayloadl";

   --  skipped func __getpayloadl

   function getpayloadf32 (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:421
   with Import => True, 
        Convention => C, 
        External_Name => "getpayloadf32";

   --  skipped func __getpayloadf32

   function getpayloadf64 (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:421
   with Import => True, 
        Convention => C, 
        External_Name => "getpayloadf64";

   --  skipped func __getpayloadf64

   function getpayloadf128 (uu_x : access Extensions.Float_128) return Extensions.Float_128  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:421
   with Import => True, 
        Convention => C, 
        External_Name => "getpayloadf128";

   --  skipped func __getpayloadf128

   function getpayloadf32x (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:421
   with Import => True, 
        Convention => C, 
        External_Name => "getpayloadf32x";

   --  skipped func __getpayloadf32x

   function getpayloadf64x (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:421
   with Import => True, 
        Convention => C, 
        External_Name => "getpayloadf64x";

   --  skipped func __getpayloadf64x

   function setpayload (uu_x : access double; uu_payload : double) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:424
   with Import => True, 
        Convention => C, 
        External_Name => "setpayload";

   function setpayloadf (uu_x : access float; uu_payload : float) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:424
   with Import => True, 
        Convention => C, 
        External_Name => "setpayloadf";

   function setpayloadl (uu_x : access long_double; uu_payload : long_double) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:424
   with Import => True, 
        Convention => C, 
        External_Name => "setpayloadl";

   function setpayloadf32 (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_payload : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:424
   with Import => True, 
        Convention => C, 
        External_Name => "setpayloadf32";

   function setpayloadf64 (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_payload : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:424
   with Import => True, 
        Convention => C, 
        External_Name => "setpayloadf64";

   function setpayloadf128 (uu_x : access Extensions.Float_128; uu_payload : Extensions.Float_128) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:424
   with Import => True, 
        Convention => C, 
        External_Name => "setpayloadf128";

   function setpayloadf32x (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_payload : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:424
   with Import => True, 
        Convention => C, 
        External_Name => "setpayloadf32x";

   function setpayloadf64x (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_payload : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:424
   with Import => True, 
        Convention => C, 
        External_Name => "setpayloadf64x";

   function setpayloadsig (uu_x : access double; uu_payload : double) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:427
   with Import => True, 
        Convention => C, 
        External_Name => "setpayloadsig";

   function setpayloadsigf (uu_x : access float; uu_payload : float) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:427
   with Import => True, 
        Convention => C, 
        External_Name => "setpayloadsigf";

   function setpayloadsigl (uu_x : access long_double; uu_payload : long_double) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:427
   with Import => True, 
        Convention => C, 
        External_Name => "setpayloadsigl";

   function setpayloadsigf32 (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32; uu_payload : aarch64_linux_gnu_bits_floatn_common_h.u_Float32) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:427
   with Import => True, 
        Convention => C, 
        External_Name => "setpayloadsigf32";

   function setpayloadsigf64 (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_payload : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:427
   with Import => True, 
        Convention => C, 
        External_Name => "setpayloadsigf64";

   function setpayloadsigf128 (uu_x : access Extensions.Float_128; uu_payload : Extensions.Float_128) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:427
   with Import => True, 
        Convention => C, 
        External_Name => "setpayloadsigf128";

   function setpayloadsigf32x (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_payload : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:427
   with Import => True, 
        Convention => C, 
        External_Name => "setpayloadsigf32x";

   function setpayloadsigf64x (uu_x : access aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_payload : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return int  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:427
   with Import => True, 
        Convention => C, 
        External_Name => "setpayloadsigf64x";

   function scalb (uu_x : double; uu_n : double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:435
   with Import => True, 
        Convention => C, 
        External_Name => "scalb";

   function scalbf (uu_x : float; uu_n : float) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:435
   with Import => True, 
        Convention => C, 
        External_Name => "scalbf";

   function scalbl (uu_x : long_double; uu_n : long_double) return long_double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls.h:435
   with Import => True, 
        Convention => C, 
        External_Name => "scalbl";

   --  skipped func __scalb

   --  skipped func __scalbf

   --  skipped func __scalbl

end aarch64_linux_gnu_bits_mathcalls_h;
