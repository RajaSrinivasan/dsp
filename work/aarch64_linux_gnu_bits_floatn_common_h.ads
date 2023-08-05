pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package aarch64_linux_gnu_bits_floatn_common_h is

   subtype u_Float32 is float;  -- /usr/include/aarch64-linux-gnu/bits/floatn-common.h:214

   subtype u_Float64 is double;  -- /usr/include/aarch64-linux-gnu/bits/floatn-common.h:251

   subtype u_Float32x is double;  -- /usr/include/aarch64-linux-gnu/bits/floatn-common.h:268

   subtype u_Float64x is long_double;  -- /usr/include/aarch64-linux-gnu/bits/floatn-common.h:285

end aarch64_linux_gnu_bits_floatn_common_h;
