pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with stddef_h;
limited with gsl_gsl_bst_h;
with Interfaces.C.Strings;
limited with aarch64_linux_gnu_bits_types_FILE_h;
with gsl_gsl_complex_h;
limited with gsl_gsl_vector_complex_long_double_h;
limited with gsl_gsl_matrix_complex_long_double_h;

package gsl_gsl_spmatrix_complex_long_double_h is

   --  skipped anonymous struct anon_anon_92

   type anon_anon_93 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            work_void : System.Address;  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:99
         when 1 =>
            work_int : access int;  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:100
         when others =>
            work_atomic : access long_double;  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:101
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type gsl_spmatrix_complex_long_double is record
      size1 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:67
      size2 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:68
      i : access int;  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:75
      data : access long_double;  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:77
      p : access int;  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:84
      nzmax : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:86
      nz : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:87
      tree : access gsl_gsl_bst_h.gsl_bst_workspace;  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:89
      node_size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:91
      work : aliased anon_anon_93;  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:102
      sptype : aliased int;  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:104
      spflags : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:106

   function gsl_spmatrix_complex_long_double_alloc (n1 : stddef_h.size_t; n2 : stddef_h.size_t) return access gsl_spmatrix_complex_long_double  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_alloc";

   function gsl_spmatrix_complex_long_double_alloc_nzmax
     (n1 : stddef_h.size_t;
      n2 : stddef_h.size_t;
      nzmax : stddef_h.size_t;
      sptype : int) return access gsl_spmatrix_complex_long_double  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_alloc_nzmax";

   procedure gsl_spmatrix_complex_long_double_free (m : access gsl_spmatrix_complex_long_double)  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_free";

   function gsl_spmatrix_complex_long_double_realloc (nzmax : stddef_h.size_t; m : access gsl_spmatrix_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_realloc";

   function gsl_spmatrix_complex_long_double_nnz (m : access constant gsl_spmatrix_complex_long_double) return stddef_h.size_t  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_nnz";

   function gsl_spmatrix_complex_long_double_type (m : access constant gsl_spmatrix_complex_long_double) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_type";

   function gsl_spmatrix_complex_long_double_set_zero (m : access gsl_spmatrix_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_set_zero";

   function gsl_spmatrix_complex_long_double_tree_rebuild (m : access gsl_spmatrix_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_tree_rebuild";

   function gsl_spmatrix_complex_long_double_csc (dest : access gsl_spmatrix_complex_long_double; src : access constant gsl_spmatrix_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_csc";

   function gsl_spmatrix_complex_long_double_csr (dest : access gsl_spmatrix_complex_long_double; src : access constant gsl_spmatrix_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_csr";

   function gsl_spmatrix_complex_long_double_compress (src : access constant gsl_spmatrix_complex_long_double; sptype : int) return access gsl_spmatrix_complex_long_double  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_compress";

   function gsl_spmatrix_complex_long_double_compcol (src : access constant gsl_spmatrix_complex_long_double) return access gsl_spmatrix_complex_long_double  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_compcol";

   function gsl_spmatrix_complex_long_double_ccs (src : access constant gsl_spmatrix_complex_long_double) return access gsl_spmatrix_complex_long_double  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_ccs";

   function gsl_spmatrix_complex_long_double_crs (src : access constant gsl_spmatrix_complex_long_double) return access gsl_spmatrix_complex_long_double  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_crs";

   function gsl_spmatrix_complex_long_double_memcpy (dest : access gsl_spmatrix_complex_long_double; src : access constant gsl_spmatrix_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_memcpy";

   function gsl_spmatrix_complex_long_double_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      m : access constant gsl_spmatrix_complex_long_double;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_fprintf";

   function gsl_spmatrix_complex_long_double_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE) return access gsl_spmatrix_complex_long_double  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_fscanf";

   function gsl_spmatrix_complex_long_double_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access constant gsl_spmatrix_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_fwrite";

   function gsl_spmatrix_complex_long_double_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access gsl_spmatrix_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_fread";

   function gsl_spmatrix_complex_long_double_get
     (m : access constant gsl_spmatrix_complex_long_double;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return gsl_gsl_complex_h.gsl_complex_long_double  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_get";

   function gsl_spmatrix_complex_long_double_set
     (m : access gsl_spmatrix_complex_long_double;
      i : stddef_h.size_t;
      j : stddef_h.size_t;
      x : gsl_gsl_complex_h.gsl_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_set";

   function gsl_spmatrix_complex_long_double_ptr
     (m : access constant gsl_spmatrix_complex_long_double;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return access gsl_gsl_complex_h.gsl_complex_long_double  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_ptr";

   function gsl_spmatrix_complex_long_double_scale (m : access gsl_spmatrix_complex_long_double; x : gsl_gsl_complex_h.gsl_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_scale";

   function gsl_spmatrix_complex_long_double_scale_columns (m : access gsl_spmatrix_complex_long_double; x : access constant gsl_gsl_vector_complex_long_double_h.gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_scale_columns";

   function gsl_spmatrix_complex_long_double_scale_rows (m : access gsl_spmatrix_complex_long_double; x : access constant gsl_gsl_vector_complex_long_double_h.gsl_vector_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_scale_rows";

   function gsl_spmatrix_complex_long_double_add
     (c : access gsl_spmatrix_complex_long_double;
      a : access constant gsl_spmatrix_complex_long_double;
      b : access constant gsl_spmatrix_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_add";

   function gsl_spmatrix_complex_long_double_dense_add (a : access gsl_gsl_matrix_complex_long_double_h.gsl_matrix_complex_long_double; b : access constant gsl_spmatrix_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_dense_add";

   function gsl_spmatrix_complex_long_double_dense_sub (a : access gsl_gsl_matrix_complex_long_double_h.gsl_matrix_complex_long_double; b : access constant gsl_spmatrix_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_dense_sub";

   function gsl_spmatrix_complex_long_double_d2sp (T : access gsl_spmatrix_complex_long_double; A : access constant gsl_gsl_matrix_complex_long_double_h.gsl_matrix_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_d2sp";

   function gsl_spmatrix_complex_long_double_sp2d (A : access gsl_gsl_matrix_complex_long_double_h.gsl_matrix_complex_long_double; S : access constant gsl_spmatrix_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_sp2d";

   function gsl_spmatrix_complex_long_double_add_to_dense (a : access gsl_gsl_matrix_complex_long_double_h.gsl_matrix_complex_long_double; b : access constant gsl_spmatrix_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_add_to_dense";

   function gsl_spmatrix_complex_long_double_equal (a : access constant gsl_spmatrix_complex_long_double; b : access constant gsl_spmatrix_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_equal";

   function gsl_spmatrix_complex_long_double_transpose (m : access gsl_spmatrix_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_transpose";

   function gsl_spmatrix_complex_long_double_transpose2 (m : access gsl_spmatrix_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_transpose2";

   function gsl_spmatrix_complex_long_double_transpose_memcpy (dest : access gsl_spmatrix_complex_long_double; src : access constant gsl_spmatrix_complex_long_double) return int  -- /usr/include/gsl/gsl_spmatrix_complex_long_double.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_complex_long_double_transpose_memcpy";

end gsl_gsl_spmatrix_complex_long_double_h;
