pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package cpp_11_bits_stl_iterator_base_types_h is

   type input_iterator_tag is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/bits/stl_iterator_base_types.h:93

   type output_iterator_tag is record
      null;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/bits/stl_iterator_base_types.h:96

   type forward_iterator_tag is record
      parent : aliased input_iterator_tag;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/bits/stl_iterator_base_types.h:99

   type bidirectional_iterator_tag is record
      parent : aliased forward_iterator_tag;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/bits/stl_iterator_base_types.h:103

   type random_access_iterator_tag is record
      parent : aliased bidirectional_iterator_tag;
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/c++/11/bits/stl_iterator_base_types.h:107

   package iterator_output_iterator_tag_address_address_address_address is
      type iterator is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use iterator_output_iterator_tag_address_address_address_address;



end cpp_11_bits_stl_iterator_base_types_h;
