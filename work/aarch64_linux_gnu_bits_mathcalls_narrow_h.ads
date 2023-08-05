pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with aarch64_linux_gnu_bits_floatn_common_h;
with Interfaces.C.Extensions;

package aarch64_linux_gnu_bits_mathcalls_narrow_h is

   function fadd (uu_x : double; uu_y : double) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "fadd";

   function faddl (uu_x : long_double; uu_y : long_double) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "faddl";

   function daddl (uu_x : long_double; uu_y : long_double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "daddl";

   function f32addf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "f32addf32x";

   function f32addf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "f32addf64";

   function f32addf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "f32addf64x";

   function f32addf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "f32addf128";

   function f32xaddf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "f32xaddf64";

   function f32xaddf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "f32xaddf64x";

   function f32xaddf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "f32xaddf128";

   function f64addf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "f64addf64x";

   function f64addf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "f64addf128";

   function f64xaddf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "f64xaddf128";

   function fdiv (uu_x : double; uu_y : double) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "fdiv";

   function fdivl (uu_x : long_double; uu_y : long_double) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "fdivl";

   function ddivl (uu_x : long_double; uu_y : long_double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "ddivl";

   function f32divf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "f32divf32x";

   function f32divf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "f32divf64";

   function f32divf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "f32divf64x";

   function f32divf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "f32divf128";

   function f32xdivf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "f32xdivf64";

   function f32xdivf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "f32xdivf64x";

   function f32xdivf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "f32xdivf128";

   function f64divf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "f64divf64x";

   function f64divf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "f64divf128";

   function f64xdivf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "f64xdivf128";

   function ffma
     (uu_x : double;
      uu_y : double;
      uu_z : double) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "ffma";

   function ffmal
     (uu_x : long_double;
      uu_y : long_double;
      uu_z : long_double) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "ffmal";

   function dfmal
     (uu_x : long_double;
      uu_y : long_double;
      uu_z : long_double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "dfmal";

   function f32fmaf32x
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x;
      uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x;
      uu_z : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "f32fmaf32x";

   function f32fmaf64
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64;
      uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64;
      uu_z : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "f32fmaf64";

   function f32fmaf64x
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x;
      uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x;
      uu_z : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "f32fmaf64x";

   function f32fmaf128
     (uu_x : Extensions.Float_128;
      uu_y : Extensions.Float_128;
      uu_z : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "f32fmaf128";

   function f32xfmaf64
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64;
      uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64;
      uu_z : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "f32xfmaf64";

   function f32xfmaf64x
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x;
      uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x;
      uu_z : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "f32xfmaf64x";

   function f32xfmaf128
     (uu_x : Extensions.Float_128;
      uu_y : Extensions.Float_128;
      uu_z : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "f32xfmaf128";

   function f64fmaf64x
     (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x;
      uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x;
      uu_z : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "f64fmaf64x";

   function f64fmaf128
     (uu_x : Extensions.Float_128;
      uu_y : Extensions.Float_128;
      uu_z : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "f64fmaf128";

   function f64xfmaf128
     (uu_x : Extensions.Float_128;
      uu_y : Extensions.Float_128;
      uu_z : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "f64xfmaf128";

   function fmul (uu_x : double; uu_y : double) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "fmul";

   function fmull (uu_x : long_double; uu_y : long_double) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "fmull";

   function dmull (uu_x : long_double; uu_y : long_double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "dmull";

   function f32mulf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "f32mulf32x";

   function f32mulf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "f32mulf64";

   function f32mulf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "f32mulf64x";

   function f32mulf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "f32mulf128";

   function f32xmulf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "f32xmulf64";

   function f32xmulf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "f32xmulf64x";

   function f32xmulf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "f32xmulf128";

   function f64mulf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "f64mulf64x";

   function f64mulf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "f64mulf128";

   function f64xmulf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "f64xmulf128";

   function fsqrt (uu_x : double) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "fsqrt";

   function fsqrtl (uu_x : long_double) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "fsqrtl";

   function dsqrtl (uu_x : long_double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "dsqrtl";

   function f32sqrtf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "f32sqrtf32x";

   function f32sqrtf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "f32sqrtf64";

   function f32sqrtf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "f32sqrtf64x";

   function f32sqrtf128 (uu_x : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "f32sqrtf128";

   function f32xsqrtf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "f32xsqrtf64";

   function f32xsqrtf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "f32xsqrtf64x";

   function f32xsqrtf128 (uu_x : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "f32xsqrtf128";

   function f64sqrtf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "f64sqrtf64x";

   function f64sqrtf128 (uu_x : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "f64sqrtf128";

   function f64xsqrtf128 (uu_x : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "f64xsqrtf128";

   function fsub (uu_x : double; uu_y : double) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "fsub";

   function fsubl (uu_x : long_double; uu_y : long_double) return float  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "fsubl";

   function dsubl (uu_x : long_double; uu_y : long_double) return double  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "dsubl";

   function f32subf32x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float32x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "f32subf32x";

   function f32subf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "f32subf64";

   function f32subf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "f32subf64x";

   function f32subf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "f32subf128";

   function f32xsubf64 (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "f32xsubf64";

   function f32xsubf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "f32xsubf64x";

   function f32xsubf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float32x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "f32xsubf128";

   function f64subf64x (uu_x : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x; uu_y : aarch64_linux_gnu_bits_floatn_common_h.u_Float64x) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "f64subf64x";

   function f64subf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "f64subf128";

   function f64xsubf128 (uu_x : Extensions.Float_128; uu_y : Extensions.Float_128) return aarch64_linux_gnu_bits_floatn_common_h.u_Float64x  -- /usr/include/aarch64-linux-gnu/bits/mathcalls-narrow.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "f64xsubf128";

end aarch64_linux_gnu_bits_mathcalls_narrow_h;
