pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with stddef_h;
limited with gsl_gsl_bst_h;
with Interfaces.C.Strings;
limited with aarch64_linux_gnu_bits_types_FILE_h;
limited with gsl_gsl_vector_long_h;
limited with gsl_gsl_matrix_long_h;

package gsl_gsl_spmatrix_long_h is

   --  skipped anonymous struct anon_anon_86

   type anon_anon_87 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            work_void : System.Address;  -- /usr/include/gsl/gsl_spmatrix_long.h:99
         when 1 =>
            work_int : access int;  -- /usr/include/gsl/gsl_spmatrix_long.h:100
         when others =>
            work_atomic : access long;  -- /usr/include/gsl/gsl_spmatrix_long.h:101
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type gsl_spmatrix_long is record
      size1 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_long.h:67
      size2 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_long.h:68
      i : access int;  -- /usr/include/gsl/gsl_spmatrix_long.h:75
      data : access long;  -- /usr/include/gsl/gsl_spmatrix_long.h:77
      p : access int;  -- /usr/include/gsl/gsl_spmatrix_long.h:84
      nzmax : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_long.h:86
      nz : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_long.h:87
      tree : access gsl_gsl_bst_h.gsl_bst_workspace;  -- /usr/include/gsl/gsl_spmatrix_long.h:89
      node_size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_long.h:91
      work : aliased anon_anon_87;  -- /usr/include/gsl/gsl_spmatrix_long.h:102
      sptype : aliased int;  -- /usr/include/gsl/gsl_spmatrix_long.h:104
      spflags : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_long.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_spmatrix_long.h:106

   function gsl_spmatrix_long_alloc (n1 : stddef_h.size_t; n2 : stddef_h.size_t) return access gsl_spmatrix_long  -- /usr/include/gsl/gsl_spmatrix_long.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_alloc";

   function gsl_spmatrix_long_alloc_nzmax
     (n1 : stddef_h.size_t;
      n2 : stddef_h.size_t;
      nzmax : stddef_h.size_t;
      sptype : int) return access gsl_spmatrix_long  -- /usr/include/gsl/gsl_spmatrix_long.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_alloc_nzmax";

   procedure gsl_spmatrix_long_free (m : access gsl_spmatrix_long)  -- /usr/include/gsl/gsl_spmatrix_long.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_free";

   function gsl_spmatrix_long_realloc (nzmax : stddef_h.size_t; m : access gsl_spmatrix_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_realloc";

   function gsl_spmatrix_long_nnz (m : access constant gsl_spmatrix_long) return stddef_h.size_t  -- /usr/include/gsl/gsl_spmatrix_long.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_nnz";

   function gsl_spmatrix_long_type (m : access constant gsl_spmatrix_long) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_spmatrix_long.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_type";

   function gsl_spmatrix_long_set_zero (m : access gsl_spmatrix_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_set_zero";

   function gsl_spmatrix_long_tree_rebuild (m : access gsl_spmatrix_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_tree_rebuild";

   function gsl_spmatrix_long_csc (dest : access gsl_spmatrix_long; src : access constant gsl_spmatrix_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_csc";

   function gsl_spmatrix_long_csr (dest : access gsl_spmatrix_long; src : access constant gsl_spmatrix_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_csr";

   function gsl_spmatrix_long_compress (src : access constant gsl_spmatrix_long; sptype : int) return access gsl_spmatrix_long  -- /usr/include/gsl/gsl_spmatrix_long.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_compress";

   function gsl_spmatrix_long_compcol (src : access constant gsl_spmatrix_long) return access gsl_spmatrix_long  -- /usr/include/gsl/gsl_spmatrix_long.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_compcol";

   function gsl_spmatrix_long_ccs (src : access constant gsl_spmatrix_long) return access gsl_spmatrix_long  -- /usr/include/gsl/gsl_spmatrix_long.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_ccs";

   function gsl_spmatrix_long_crs (src : access constant gsl_spmatrix_long) return access gsl_spmatrix_long  -- /usr/include/gsl/gsl_spmatrix_long.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_crs";

   function gsl_spmatrix_long_memcpy (dest : access gsl_spmatrix_long; src : access constant gsl_spmatrix_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_memcpy";

   function gsl_spmatrix_long_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      m : access constant gsl_spmatrix_long;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_fprintf";

   function gsl_spmatrix_long_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE) return access gsl_spmatrix_long  -- /usr/include/gsl/gsl_spmatrix_long.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_fscanf";

   function gsl_spmatrix_long_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access constant gsl_spmatrix_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_fwrite";

   function gsl_spmatrix_long_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access gsl_spmatrix_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_fread";

   function gsl_spmatrix_long_get
     (m : access constant gsl_spmatrix_long;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return long  -- /usr/include/gsl/gsl_spmatrix_long.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_get";

   function gsl_spmatrix_long_set
     (m : access gsl_spmatrix_long;
      i : stddef_h.size_t;
      j : stddef_h.size_t;
      x : long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_set";

   function gsl_spmatrix_long_ptr
     (m : access constant gsl_spmatrix_long;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return access long  -- /usr/include/gsl/gsl_spmatrix_long.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_ptr";

   function gsl_spmatrix_long_minmax
     (m : access constant gsl_spmatrix_long;
      min_out : access long;
      max_out : access long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_minmax";

   function gsl_spmatrix_long_min_index
     (m : access constant gsl_spmatrix_long;
      imin_out : access stddef_h.size_t;
      jmin_out : access stddef_h.size_t) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_min_index";

   function gsl_spmatrix_long_scale (m : access gsl_spmatrix_long; x : long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_scale";

   function gsl_spmatrix_long_scale_columns (m : access gsl_spmatrix_long; x : access constant gsl_gsl_vector_long_h.gsl_vector_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_scale_columns";

   function gsl_spmatrix_long_scale_rows (m : access gsl_spmatrix_long; x : access constant gsl_gsl_vector_long_h.gsl_vector_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_scale_rows";

   function gsl_spmatrix_long_add
     (c : access gsl_spmatrix_long;
      a : access constant gsl_spmatrix_long;
      b : access constant gsl_spmatrix_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_add";

   function gsl_spmatrix_long_dense_add (a : access gsl_gsl_matrix_long_h.gsl_matrix_long; b : access constant gsl_spmatrix_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_dense_add";

   function gsl_spmatrix_long_dense_sub (a : access gsl_gsl_matrix_long_h.gsl_matrix_long; b : access constant gsl_spmatrix_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_dense_sub";

   function gsl_spmatrix_long_d2sp (T : access gsl_spmatrix_long; A : access constant gsl_gsl_matrix_long_h.gsl_matrix_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_d2sp";

   function gsl_spmatrix_long_sp2d (A : access gsl_gsl_matrix_long_h.gsl_matrix_long; S : access constant gsl_spmatrix_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_sp2d";

   function gsl_spmatrix_long_add_to_dense (a : access gsl_gsl_matrix_long_h.gsl_matrix_long; b : access constant gsl_spmatrix_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_add_to_dense";

   function gsl_spmatrix_long_equal (a : access constant gsl_spmatrix_long; b : access constant gsl_spmatrix_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_equal";

   function gsl_spmatrix_long_norm1 (a : access constant gsl_spmatrix_long) return long  -- /usr/include/gsl/gsl_spmatrix_long.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_norm1";

   function gsl_spmatrix_long_transpose (m : access gsl_spmatrix_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_transpose";

   function gsl_spmatrix_long_transpose2 (m : access gsl_spmatrix_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_transpose2";

   function gsl_spmatrix_long_transpose_memcpy (dest : access gsl_spmatrix_long; src : access constant gsl_spmatrix_long) return int  -- /usr/include/gsl/gsl_spmatrix_long.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_long_transpose_memcpy";

end gsl_gsl_spmatrix_long_h;
