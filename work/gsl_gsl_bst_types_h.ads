pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
with System;

package gsl_gsl_bst_types_h is

   --  skipped function type gsl_bst_cmp_function

   --  skipped anonymous struct anon_anon_66

   type gsl_bst_allocator is record
      alloc : access function (arg1 : stddef_h.size_t; arg2 : System.Address) return System.Address;  -- /usr/include/gsl/gsl_bst_types.h:42
      free : access procedure (arg1 : System.Address; arg2 : System.Address);  -- /usr/include/gsl/gsl_bst_types.h:43
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_bst_types.h:44

end gsl_gsl_bst_types_h;
