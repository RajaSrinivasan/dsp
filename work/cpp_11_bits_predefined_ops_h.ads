pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package cpp_11_bits_predefined_ops_h is

   type u_Iter_less_iter is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/bits/predefined_ops.h:39

   --  skipped func __iter_less_iter

   package Class_u_Iter_less_val is
      type u_Iter_less_val is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function New_u_Iter_less_val return u_Iter_less_val;  -- /usr/include/c++/11/bits/predefined_ops.h:56
      pragma CPP_Constructor (New_u_Iter_less_val, "_ZN9__gnu_cxx5__ops14_Iter_less_valC1Ev");

      function New_u_Iter_less_val (arg1 : u_Iter_less_iter) return u_Iter_less_val;  -- /usr/include/c++/11/bits/predefined_ops.h:63
      pragma CPP_Constructor (New_u_Iter_less_val, "_ZN9__gnu_cxx5__ops14_Iter_less_valC1ENS0_15_Iter_less_iterE");
   end;
   use Class_u_Iter_less_val;
   --  skipped func __iter_less_val

   --  skipped func __iter_comp_val

   package Class_u_Val_less_iter is
      type u_Val_less_iter is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function New_u_Val_less_iter return u_Val_less_iter;  -- /usr/include/c++/11/bits/predefined_ops.h:85
      pragma CPP_Constructor (New_u_Val_less_iter, "_ZN9__gnu_cxx5__ops14_Val_less_iterC1Ev");

      function New_u_Val_less_iter (arg1 : u_Iter_less_iter) return u_Val_less_iter;  -- /usr/include/c++/11/bits/predefined_ops.h:92
      pragma CPP_Constructor (New_u_Val_less_iter, "_ZN9__gnu_cxx5__ops14_Val_less_iterC1ENS0_15_Iter_less_iterE");
   end;
   use Class_u_Val_less_iter;
   --  skipped func __val_less_iter

   --  skipped func __val_comp_iter

   type u_Iter_equal_to_iter is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/bits/predefined_ops.h:111

   --  skipped func __iter_equal_to_iter

   type u_Iter_equal_to_val is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/bits/predefined_ops.h:125

   --  skipped func __iter_equal_to_val

   --  skipped func __iter_comp_val

end cpp_11_bits_predefined_ops_h;
