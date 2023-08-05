pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
limited with gsl_gsl_bst_types_h;
with stddef_h;

package gsl_gsl_bst_rb_h is

   GSL_BST_RB_MAX_HEIGHT : constant := 48;  --  /usr/include/gsl/gsl_bst_rb.h:39

   type gsl_bst_rb_node;
   type gsl_bst_rb_node_array10123 is array (0 .. 1) of access gsl_bst_rb_node;
   type gsl_bst_rb_node is record
      rb_link : gsl_bst_rb_node_array10123;  -- /usr/include/gsl/gsl_bst_rb.h:45
      rb_data : System.Address;  -- /usr/include/gsl/gsl_bst_rb.h:46
      rb_color : aliased unsigned_char;  -- /usr/include/gsl/gsl_bst_rb.h:47
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_bst_rb.h:43

   --  skipped anonymous struct anon_anon_69

   type gsl_bst_rb_table is record
      rb_root : access gsl_bst_rb_node;  -- /usr/include/gsl/gsl_bst_rb.h:53
      rb_compare : access function
           (arg1 : System.Address;
            arg2 : System.Address;
            arg3 : System.Address) return int;  -- /usr/include/gsl/gsl_bst_rb.h:54
      rb_param : System.Address;  -- /usr/include/gsl/gsl_bst_rb.h:55
      rb_alloc : access constant gsl_gsl_bst_types_h.gsl_bst_allocator;  -- /usr/include/gsl/gsl_bst_rb.h:56
      rb_count : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_bst_rb.h:57
      rb_generation : aliased unsigned_long;  -- /usr/include/gsl/gsl_bst_rb.h:58
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_bst_rb.h:59

   --  skipped anonymous struct anon_anon_70

   type gsl_bst_rb_traverser_array10130 is array (0 .. 47) of access gsl_bst_rb_node;
   type gsl_bst_rb_traverser is record
      rb_table : access constant gsl_bst_rb_table;  -- /usr/include/gsl/gsl_bst_rb.h:64
      rb_node : access gsl_bst_rb_node;  -- /usr/include/gsl/gsl_bst_rb.h:65
      rb_stack : gsl_bst_rb_traverser_array10130;  -- /usr/include/gsl/gsl_bst_rb.h:66
      rb_height : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_bst_rb.h:68
      rb_generation : aliased unsigned_long;  -- /usr/include/gsl/gsl_bst_rb.h:69
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_bst_rb.h:70

end gsl_gsl_bst_rb_h;
