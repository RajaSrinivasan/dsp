pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with aarch64_linux_gnu_bits_types_h;

package aarch64_linux_gnu_bits_stdint_intn_h is

   subtype int8_t is aarch64_linux_gnu_bits_types_h.uu_int8_t;  -- /usr/include/aarch64-linux-gnu/bits/stdint-intn.h:24

   subtype int16_t is aarch64_linux_gnu_bits_types_h.uu_int16_t;  -- /usr/include/aarch64-linux-gnu/bits/stdint-intn.h:25

   subtype int32_t is aarch64_linux_gnu_bits_types_h.uu_int32_t;  -- /usr/include/aarch64-linux-gnu/bits/stdint-intn.h:26

   subtype int64_t is aarch64_linux_gnu_bits_types_h.uu_int64_t;  -- /usr/include/aarch64-linux-gnu/bits/stdint-intn.h:27

end aarch64_linux_gnu_bits_stdint_intn_h;
