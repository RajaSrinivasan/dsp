pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package cpp_11_bits_std_abs_h is

   function c_abs (uu_i : long) return long  -- /usr/include/c++/11/bits/std_abs.h:56
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3absl";

   function c_abs (uu_x : Long_Long_Integer) return Long_Long_Integer  -- /usr/include/c++/11/bits/std_abs.h:61
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3absx";

   function c_abs (uu_x : double) return double  -- /usr/include/c++/11/bits/std_abs.h:71
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3absd";

   function c_abs (uu_x : float) return float  -- /usr/include/c++/11/bits/std_abs.h:75
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3absf";

   function c_abs (uu_x : long_double) return long_double  -- /usr/include/c++/11/bits/std_abs.h:79
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3abse";

   function c_abs (uu_x : Extensions.Signed_128) return Extensions.Signed_128  -- /usr/include/c++/11/bits/std_abs.h:85
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3absn";

end cpp_11_bits_std_abs_h;
