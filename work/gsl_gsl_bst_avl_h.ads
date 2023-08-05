pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
limited with gsl_gsl_bst_types_h;
with stddef_h;

package gsl_gsl_bst_avl_h is

   GSL_BST_AVL_MAX_HEIGHT : constant := 32;  --  /usr/include/gsl/gsl_bst_avl.h:39

   type gsl_bst_avl_node;
   type gsl_bst_avl_node_array10109 is array (0 .. 1) of access gsl_bst_avl_node;
   type gsl_bst_avl_node is record
      avl_link : gsl_bst_avl_node_array10109;  -- /usr/include/gsl/gsl_bst_avl.h:45
      avl_data : System.Address;  -- /usr/include/gsl/gsl_bst_avl.h:46
      avl_balance : aliased signed_char;  -- /usr/include/gsl/gsl_bst_avl.h:47
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_bst_avl.h:43

   --  skipped anonymous struct anon_anon_67

   type gsl_bst_avl_table is record
      avl_root : access gsl_bst_avl_node;  -- /usr/include/gsl/gsl_bst_avl.h:53
      avl_compare : access function
           (arg1 : System.Address;
            arg2 : System.Address;
            arg3 : System.Address) return int;  -- /usr/include/gsl/gsl_bst_avl.h:54
      avl_param : System.Address;  -- /usr/include/gsl/gsl_bst_avl.h:55
      avl_alloc : access constant gsl_gsl_bst_types_h.gsl_bst_allocator;  -- /usr/include/gsl/gsl_bst_avl.h:56
      avl_count : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_bst_avl.h:57
      avl_generation : aliased unsigned_long;  -- /usr/include/gsl/gsl_bst_avl.h:58
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_bst_avl.h:59

   --  skipped anonymous struct anon_anon_68

   type gsl_bst_avl_traverser_array10119 is array (0 .. 31) of access gsl_bst_avl_node;
   type gsl_bst_avl_traverser is record
      avl_table : access constant gsl_bst_avl_table;  -- /usr/include/gsl/gsl_bst_avl.h:64
      avl_node : access gsl_bst_avl_node;  -- /usr/include/gsl/gsl_bst_avl.h:65
      avl_stack : gsl_bst_avl_traverser_array10119;  -- /usr/include/gsl/gsl_bst_avl.h:66
      avl_height : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_bst_avl.h:67
      avl_generation : aliased unsigned_long;  -- /usr/include/gsl/gsl_bst_avl.h:68
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_bst_avl.h:69

end gsl_gsl_bst_avl_h;
