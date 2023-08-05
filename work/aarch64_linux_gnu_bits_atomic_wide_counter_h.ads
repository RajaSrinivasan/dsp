pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package aarch64_linux_gnu_bits_atomic_wide_counter_h is

   --  skipped anonymous struct anon_anon_6

   type anon_anon_7 is record
      uu_low : aliased unsigned;  -- /usr/include/aarch64-linux-gnu/bits/atomic_wide_counter.h:30
      uu_high : aliased unsigned;  -- /usr/include/aarch64-linux-gnu/bits/atomic_wide_counter.h:31
   end record
   with Convention => C_Pass_By_Copy;
   type uu_atomic_wide_counter (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            uu_value64 : aliased Extensions.unsigned_long_long;  -- /usr/include/aarch64-linux-gnu/bits/atomic_wide_counter.h:27
         when others =>
            uu_value32 : aliased anon_anon_7;  -- /usr/include/aarch64-linux-gnu/bits/atomic_wide_counter.h:32
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /usr/include/aarch64-linux-gnu/bits/atomic_wide_counter.h:33

end aarch64_linux_gnu_bits_atomic_wide_counter_h;
