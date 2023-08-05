pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package cpp_11_bits_stl_pair_h is

   package Class_piecewise_construct_t is
      type piecewise_construct_t is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function New_piecewise_construct_t return piecewise_construct_t;  -- /usr/include/c++/11/bits/stl_pair.h:80
      pragma CPP_Constructor (New_piecewise_construct_t, "_ZNSt21piecewise_construct_tC1Ev");
   end;
   use Class_piecewise_construct_t;
   piecewise_construct : aliased constant piecewise_construct_t  -- /usr/include/c++/11/bits/stl_pair.h:83
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt19piecewise_construct";

end cpp_11_bits_stl_pair_h;
