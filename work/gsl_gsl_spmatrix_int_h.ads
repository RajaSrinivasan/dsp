pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with stddef_h;
limited with gsl_gsl_bst_h;
with Interfaces.C.Strings;
limited with aarch64_linux_gnu_bits_types_FILE_h;
limited with gsl_gsl_vector_int_h;
limited with gsl_gsl_matrix_int_h;

package gsl_gsl_spmatrix_int_h is

   --  skipped anonymous struct anon_anon_86

   type anon_anon_87 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            work_void : System.Address;  -- /usr/include/gsl/gsl_spmatrix_int.h:99
         when 1 =>
            work_int : access int;  -- /usr/include/gsl/gsl_spmatrix_int.h:100
         when others =>
            work_atomic : access int;  -- /usr/include/gsl/gsl_spmatrix_int.h:101
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type gsl_spmatrix_int is record
      size1 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_int.h:67
      size2 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_int.h:68
      i : access int;  -- /usr/include/gsl/gsl_spmatrix_int.h:75
      data : access int;  -- /usr/include/gsl/gsl_spmatrix_int.h:77
      p : access int;  -- /usr/include/gsl/gsl_spmatrix_int.h:84
      nzmax : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_int.h:86
      nz : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_int.h:87
      tree : access gsl_gsl_bst_h.gsl_bst_workspace;  -- /usr/include/gsl/gsl_spmatrix_int.h:89
      node_size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_int.h:91
      work : aliased anon_anon_87;  -- /usr/include/gsl/gsl_spmatrix_int.h:102
      sptype : aliased int;  -- /usr/include/gsl/gsl_spmatrix_int.h:104
      spflags : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_int.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_spmatrix_int.h:106

   function gsl_spmatrix_int_alloc (n1 : stddef_h.size_t; n2 : stddef_h.size_t) return access gsl_spmatrix_int  -- /usr/include/gsl/gsl_spmatrix_int.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_alloc";

   function gsl_spmatrix_int_alloc_nzmax
     (n1 : stddef_h.size_t;
      n2 : stddef_h.size_t;
      nzmax : stddef_h.size_t;
      sptype : int) return access gsl_spmatrix_int  -- /usr/include/gsl/gsl_spmatrix_int.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_alloc_nzmax";

   procedure gsl_spmatrix_int_free (m : access gsl_spmatrix_int)  -- /usr/include/gsl/gsl_spmatrix_int.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_free";

   function gsl_spmatrix_int_realloc (nzmax : stddef_h.size_t; m : access gsl_spmatrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_realloc";

   function gsl_spmatrix_int_nnz (m : access constant gsl_spmatrix_int) return stddef_h.size_t  -- /usr/include/gsl/gsl_spmatrix_int.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_nnz";

   function gsl_spmatrix_int_type (m : access constant gsl_spmatrix_int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_spmatrix_int.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_type";

   function gsl_spmatrix_int_set_zero (m : access gsl_spmatrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_set_zero";

   function gsl_spmatrix_int_tree_rebuild (m : access gsl_spmatrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_tree_rebuild";

   function gsl_spmatrix_int_csc (dest : access gsl_spmatrix_int; src : access constant gsl_spmatrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_csc";

   function gsl_spmatrix_int_csr (dest : access gsl_spmatrix_int; src : access constant gsl_spmatrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_csr";

   function gsl_spmatrix_int_compress (src : access constant gsl_spmatrix_int; sptype : int) return access gsl_spmatrix_int  -- /usr/include/gsl/gsl_spmatrix_int.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_compress";

   function gsl_spmatrix_int_compcol (src : access constant gsl_spmatrix_int) return access gsl_spmatrix_int  -- /usr/include/gsl/gsl_spmatrix_int.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_compcol";

   function gsl_spmatrix_int_ccs (src : access constant gsl_spmatrix_int) return access gsl_spmatrix_int  -- /usr/include/gsl/gsl_spmatrix_int.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_ccs";

   function gsl_spmatrix_int_crs (src : access constant gsl_spmatrix_int) return access gsl_spmatrix_int  -- /usr/include/gsl/gsl_spmatrix_int.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_crs";

   function gsl_spmatrix_int_memcpy (dest : access gsl_spmatrix_int; src : access constant gsl_spmatrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_memcpy";

   function gsl_spmatrix_int_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      m : access constant gsl_spmatrix_int;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_fprintf";

   function gsl_spmatrix_int_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE) return access gsl_spmatrix_int  -- /usr/include/gsl/gsl_spmatrix_int.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_fscanf";

   function gsl_spmatrix_int_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access constant gsl_spmatrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_fwrite";

   function gsl_spmatrix_int_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access gsl_spmatrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_fread";

   function gsl_spmatrix_int_get
     (m : access constant gsl_spmatrix_int;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_get";

   function gsl_spmatrix_int_set
     (m : access gsl_spmatrix_int;
      i : stddef_h.size_t;
      j : stddef_h.size_t;
      x : int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_set";

   function gsl_spmatrix_int_ptr
     (m : access constant gsl_spmatrix_int;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return access int  -- /usr/include/gsl/gsl_spmatrix_int.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_ptr";

   function gsl_spmatrix_int_minmax
     (m : access constant gsl_spmatrix_int;
      min_out : access int;
      max_out : access int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_minmax";

   function gsl_spmatrix_int_min_index
     (m : access constant gsl_spmatrix_int;
      imin_out : access stddef_h.size_t;
      jmin_out : access stddef_h.size_t) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_min_index";

   function gsl_spmatrix_int_scale (m : access gsl_spmatrix_int; x : int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_scale";

   function gsl_spmatrix_int_scale_columns (m : access gsl_spmatrix_int; x : access constant gsl_gsl_vector_int_h.gsl_vector_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_scale_columns";

   function gsl_spmatrix_int_scale_rows (m : access gsl_spmatrix_int; x : access constant gsl_gsl_vector_int_h.gsl_vector_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_scale_rows";

   function gsl_spmatrix_int_add
     (c : access gsl_spmatrix_int;
      a : access constant gsl_spmatrix_int;
      b : access constant gsl_spmatrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_add";

   function gsl_spmatrix_int_dense_add (a : access gsl_gsl_matrix_int_h.gsl_matrix_int; b : access constant gsl_spmatrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_dense_add";

   function gsl_spmatrix_int_dense_sub (a : access gsl_gsl_matrix_int_h.gsl_matrix_int; b : access constant gsl_spmatrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_dense_sub";

   function gsl_spmatrix_int_d2sp (T : access gsl_spmatrix_int; A : access constant gsl_gsl_matrix_int_h.gsl_matrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_d2sp";

   function gsl_spmatrix_int_sp2d (A : access gsl_gsl_matrix_int_h.gsl_matrix_int; S : access constant gsl_spmatrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_sp2d";

   function gsl_spmatrix_int_add_to_dense (a : access gsl_gsl_matrix_int_h.gsl_matrix_int; b : access constant gsl_spmatrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_add_to_dense";

   function gsl_spmatrix_int_equal (a : access constant gsl_spmatrix_int; b : access constant gsl_spmatrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_equal";

   function gsl_spmatrix_int_norm1 (a : access constant gsl_spmatrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_norm1";

   function gsl_spmatrix_int_transpose (m : access gsl_spmatrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_transpose";

   function gsl_spmatrix_int_transpose2 (m : access gsl_spmatrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_transpose2";

   function gsl_spmatrix_int_transpose_memcpy (dest : access gsl_spmatrix_int; src : access constant gsl_spmatrix_int) return int  -- /usr/include/gsl/gsl_spmatrix_int.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_int_transpose_memcpy";

end gsl_gsl_spmatrix_int_h;
