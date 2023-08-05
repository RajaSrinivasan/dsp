pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with stddef_h;
limited with gsl_gsl_bst_types_h;
with System;
with gsl_gsl_bst_avl_h;
with gsl_gsl_bst_rb_h;

package gsl_gsl_bst_h is

   --  skipped anonymous struct anon_anon_71

   type gsl_bst_type is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_bst.h:44
      node_size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_bst.h:45
      init : access function
           (arg1 : access constant gsl_gsl_bst_types_h.gsl_bst_allocator;
            arg2 : access function
              (arg1 : System.Address;
               arg2 : System.Address;
               arg3 : System.Address) return int;
            arg3 : System.Address;
            arg4 : System.Address) return int;  -- /usr/include/gsl/gsl_bst.h:46
      nodes : access function (arg1 : System.Address) return stddef_h.size_t;  -- /usr/include/gsl/gsl_bst.h:48
      insert : access function (arg1 : System.Address; arg2 : System.Address) return System.Address;  -- /usr/include/gsl/gsl_bst.h:49
      find : access function (arg1 : System.Address; arg2 : System.Address) return System.Address;  -- /usr/include/gsl/gsl_bst.h:50
      remove : access function (arg1 : System.Address; arg2 : System.Address) return System.Address;  -- /usr/include/gsl/gsl_bst.h:51
      empty : access function (arg1 : System.Address) return int;  -- /usr/include/gsl/gsl_bst.h:52
      trav_init : access function (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/gsl/gsl_bst.h:53
      trav_first : access function (arg1 : System.Address; arg2 : System.Address) return System.Address;  -- /usr/include/gsl/gsl_bst.h:54
      trav_last : access function (arg1 : System.Address; arg2 : System.Address) return System.Address;  -- /usr/include/gsl/gsl_bst.h:55
      trav_find : access function
           (arg1 : System.Address;
            arg2 : System.Address;
            arg3 : System.Address) return System.Address;  -- /usr/include/gsl/gsl_bst.h:56
      trav_insert : access function
           (arg1 : System.Address;
            arg2 : System.Address;
            arg3 : System.Address) return System.Address;  -- /usr/include/gsl/gsl_bst.h:57
      trav_copy : access function (arg1 : System.Address; arg2 : System.Address) return System.Address;  -- /usr/include/gsl/gsl_bst.h:58
      trav_next : access function (arg1 : System.Address) return System.Address;  -- /usr/include/gsl/gsl_bst.h:59
      trav_prev : access function (arg1 : System.Address) return System.Address;  -- /usr/include/gsl/gsl_bst.h:60
      trav_cur : access function (arg1 : System.Address) return System.Address;  -- /usr/include/gsl/gsl_bst.h:61
      trav_replace : access function (arg1 : System.Address; arg2 : System.Address) return System.Address;  -- /usr/include/gsl/gsl_bst.h:62
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_bst.h:63

   --  skipped anonymous struct anon_anon_72

   type anon_anon_73 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            avl_table : aliased gsl_gsl_bst_avl_h.gsl_bst_avl_table;  -- /usr/include/gsl/gsl_bst.h:70
         when others =>
            rb_table : aliased gsl_gsl_bst_rb_h.gsl_bst_rb_table;  -- /usr/include/gsl/gsl_bst.h:71
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type gsl_bst_workspace is record
      c_type : access constant gsl_bst_type;  -- /usr/include/gsl/gsl_bst.h:67
      table : aliased anon_anon_73;  -- /usr/include/gsl/gsl_bst.h:72
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_bst.h:73

   --  skipped anonymous struct anon_anon_74

   type anon_anon_75 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            avl_trav : aliased gsl_gsl_bst_avl_h.gsl_bst_avl_traverser;  -- /usr/include/gsl/gsl_bst.h:80
         when others =>
            rb_trav : aliased gsl_gsl_bst_rb_h.gsl_bst_rb_traverser;  -- /usr/include/gsl/gsl_bst.h:81
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type gsl_bst_trav is record
      c_type : access constant gsl_bst_type;  -- /usr/include/gsl/gsl_bst.h:77
      trav_data : aliased anon_anon_75;  -- /usr/include/gsl/gsl_bst.h:82
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_bst.h:83

   gsl_bst_avl : access constant gsl_bst_type  -- /usr/include/gsl/gsl_bst.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_avl";

   gsl_bst_rb : access constant gsl_bst_type  -- /usr/include/gsl/gsl_bst.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_rb";

   function gsl_bst_alloc
     (T : access constant gsl_bst_type;
      allocator : access constant gsl_gsl_bst_types_h.gsl_bst_allocator;
      compare : access function
        (arg1 : System.Address;
         arg2 : System.Address;
         arg3 : System.Address) return int;
      params : System.Address) return access gsl_bst_workspace  -- /usr/include/gsl/gsl_bst.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_alloc";

   procedure gsl_bst_free (w : access gsl_bst_workspace)  -- /usr/include/gsl/gsl_bst.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_free";

   function gsl_bst_empty (w : access gsl_bst_workspace) return int  -- /usr/include/gsl/gsl_bst.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_empty";

   function gsl_bst_insert (item : System.Address; w : access gsl_bst_workspace) return System.Address  -- /usr/include/gsl/gsl_bst.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_insert";

   function gsl_bst_find (item : System.Address; w : access constant gsl_bst_workspace) return System.Address  -- /usr/include/gsl/gsl_bst.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_find";

   function gsl_bst_remove (item : System.Address; w : access gsl_bst_workspace) return System.Address  -- /usr/include/gsl/gsl_bst.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_remove";

   function gsl_bst_nodes (w : access constant gsl_bst_workspace) return stddef_h.size_t  -- /usr/include/gsl/gsl_bst.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_nodes";

   function gsl_bst_node_size (w : access constant gsl_bst_workspace) return stddef_h.size_t  -- /usr/include/gsl/gsl_bst.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_node_size";

   function gsl_bst_name (w : access constant gsl_bst_workspace) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_bst.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_name";

   function gsl_bst_trav_init (trav : access gsl_bst_trav; w : access constant gsl_bst_workspace) return int  -- /usr/include/gsl/gsl_bst.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_trav_init";

   function gsl_bst_trav_first (trav : access gsl_bst_trav; w : access constant gsl_bst_workspace) return System.Address  -- /usr/include/gsl/gsl_bst.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_trav_first";

   function gsl_bst_trav_last (trav : access gsl_bst_trav; w : access constant gsl_bst_workspace) return System.Address  -- /usr/include/gsl/gsl_bst.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_trav_last";

   function gsl_bst_trav_find
     (item : System.Address;
      trav : access gsl_bst_trav;
      w : access constant gsl_bst_workspace) return System.Address  -- /usr/include/gsl/gsl_bst.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_trav_find";

   function gsl_bst_trav_insert
     (item : System.Address;
      trav : access gsl_bst_trav;
      w : access gsl_bst_workspace) return System.Address  -- /usr/include/gsl/gsl_bst.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_trav_insert";

   function gsl_bst_trav_copy (dest : access gsl_bst_trav; src : access constant gsl_bst_trav) return System.Address  -- /usr/include/gsl/gsl_bst.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_trav_copy";

   function gsl_bst_trav_next (trav : access gsl_bst_trav) return System.Address  -- /usr/include/gsl/gsl_bst.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_trav_next";

   function gsl_bst_trav_prev (trav : access gsl_bst_trav) return System.Address  -- /usr/include/gsl/gsl_bst.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_trav_prev";

   function gsl_bst_trav_cur (trav : access constant gsl_bst_trav) return System.Address  -- /usr/include/gsl/gsl_bst.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_trav_cur";

   function gsl_bst_trav_replace (trav : access gsl_bst_trav; new_item : System.Address) return System.Address  -- /usr/include/gsl/gsl_bst.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_bst_trav_replace";

end gsl_gsl_bst_h;
