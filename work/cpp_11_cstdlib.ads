pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stdlib_h;

package cpp_11_cstdlib is

   function div (uu_i : long; uu_j : long) return stdlib_h.ldiv_t  -- /usr/include/c++/11/cstdlib:177
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3divll";

   function div (uu_n : Long_Long_Integer; uu_d : Long_Long_Integer) return stdlib_h.lldiv_t  -- /usr/include/c++/11/cstdlib:213
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZN9__gnu_cxx3divExx";

end cpp_11_cstdlib;
