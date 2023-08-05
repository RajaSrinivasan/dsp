pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package cpp_11_bits_stl_algobase_h is

   package uu_copy_move_1_0_random_access_iterator_tag is
      type uu_copy_move is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_copy_move_1_0_random_access_iterator_tag;

   package uu_copy_move_0_0_random_access_iterator_tag is
      type uu_copy_move is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_copy_move_0_0_random_access_iterator_tag;



   type u_Bit_iterator is null record;   -- incomplete struct

   package uu_copy_move_backward_1_0_random_access_iterator_tag is
      type uu_copy_move_backward is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_copy_move_backward_1_0_random_access_iterator_tag;

   package uu_copy_move_backward_0_0_random_access_iterator_tag is
      type uu_copy_move_backward is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_copy_move_backward_0_0_random_access_iterator_tag;



   --  skipped func __fill_a1

   --  skipped func __size_to_integer

   --  skipped func __size_to_integer

   --  skipped func __size_to_integer

   --  skipped func __size_to_integer

   --  skipped func __size_to_integer

   --  skipped func __size_to_integer

   --  skipped func __size_to_integer

   --  skipped func __size_to_integer

   --  skipped func __size_to_integer

   --  skipped func __size_to_integer

   --  skipped func __size_to_integer

   package uu_equal_1 is
      type uu_equal is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_equal_1;



   package uu_lc_rai_random_access_iterator_tag_random_access_iterator_tag is
      type uu_lc_rai is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_lc_rai_random_access_iterator_tag_random_access_iterator_tag;



   package uu_lexicographical_compare_1 is
      type uu_lexicographical_compare is limited record
         null;
      end record
      with Convention => C_Pass_By_Copy

   end;
   use uu_lexicographical_compare_1;



   --  skipped func __lg

   --  skipped func __lg

   --  skipped func __lg

   --  skipped func __lg

   --  skipped func __lg

   --  skipped func __lg

end cpp_11_bits_stl_algobase_h;
