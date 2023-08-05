pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;

package gsl_gsl_spmatrix_h is

   --  arg-macro: function GSL_SPMATRIX_ISCOO (m)
   --    return (m).sptype = GSL_SPMATRIX_COO;
   --  arg-macro: function GSL_SPMATRIX_ISCSC (m)
   --    return (m).sptype = GSL_SPMATRIX_CSC;
   --  arg-macro: function GSL_SPMATRIX_ISCSR (m)
   --    return (m).sptype = GSL_SPMATRIX_CSR;
   --  arg-macro: procedure GSL_SPMATRIX_ISTRIPLET (m)
   --    GSL_SPMATRIX_ISCOO(m)
   --  arg-macro: procedure GSL_SPMATRIX_ISCCS (m)
   --    GSL_SPMATRIX_ISCSC(m)
   --  arg-macro: procedure GSL_SPMATRIX_ISCRS (m)
   --    GSL_SPMATRIX_ISCSR(m)
   GSL_SPMATRIX_FLG_GROW : constant := (2 ** 0);  --  /usr/include/gsl/gsl_spmatrix.h:32
   GSL_SPMATRIX_FLG_FIXED : constant := (2 ** 1);  --  /usr/include/gsl/gsl_spmatrix.h:33
   --  arg-macro: function GSL_SPMATRIX_COMPARE_ROWCOL (m, ia, ja, ib, jb)
   --    return (ia) < (ib) ? -1 : ((ia) > (ib) ? 1 : ((ja) < (jb) ? -1 : ((ja) > (jb))));

   type gsl_spmatrix_pool_node;
   type gsl_spmatrix_pool_node is record
      next : access gsl_spmatrix_pool_node;  -- /usr/include/gsl/gsl_spmatrix.h:17
      block_ptr : System.Address;  -- /usr/include/gsl/gsl_spmatrix.h:18
      free_slot : access unsigned_char;  -- /usr/include/gsl/gsl_spmatrix.h:19
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_spmatrix.h:15

   subtype gsl_spmatrix_pool is gsl_spmatrix_pool_node;  -- /usr/include/gsl/gsl_spmatrix.h:22

   procedure gsl_spmatrix_cumsum (n : int; c : access int)  -- /usr/include/gsl/gsl_spmatrix.h:40
   with Import => True, 
        Convention => CPP, 
        External_Name => "_Z19gsl_spmatrix_cumsumiPi";

end gsl_gsl_spmatrix_h;
