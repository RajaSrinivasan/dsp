pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;

package aarch64_linux_gnu_cpp_11_bits_cppconfig_h is

   subtype size_t is unsigned_long;  -- /usr/include/aarch64-linux-gnu/c++/11/bits/c++config.h:280

   subtype ptrdiff_t is long;  -- /usr/include/aarch64-linux-gnu/c++/11/bits/c++config.h:281

   subtype nullptr_t is System.Address;  -- /usr/include/aarch64-linux-gnu/c++/11/bits/c++config.h:284

end aarch64_linux_gnu_cpp_11_bits_cppconfig_h;
