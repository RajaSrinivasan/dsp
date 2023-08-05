pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;

package stdarg_h is

   subtype uu_gnuc_va_list is System.Address;  -- /usr/lib/gcc/aarch64-linux-gnu/11/include/stdarg.h:40

end stdarg_h;
