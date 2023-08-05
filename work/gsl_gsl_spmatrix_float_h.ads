pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with stddef_h;
limited with gsl_gsl_bst_h;
with Interfaces.C.Strings;
limited with aarch64_linux_gnu_bits_types_FILE_h;
limited with gsl_gsl_vector_float_h;
limited with gsl_gsl_matrix_float_h;

package gsl_gsl_spmatrix_float_h is

   --  skipped anonymous struct anon_anon_86

   type anon_anon_87 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            work_void : System.Address;  -- /usr/include/gsl/gsl_spmatrix_float.h:99
         when 1 =>
            work_int : access int;  -- /usr/include/gsl/gsl_spmatrix_float.h:100
         when others =>
            work_atomic : access float;  -- /usr/include/gsl/gsl_spmatrix_float.h:101
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type gsl_spmatrix_float is record
      size1 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_float.h:67
      size2 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_float.h:68
      i : access int;  -- /usr/include/gsl/gsl_spmatrix_float.h:75
      data : access float;  -- /usr/include/gsl/gsl_spmatrix_float.h:77
      p : access int;  -- /usr/include/gsl/gsl_spmatrix_float.h:84
      nzmax : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_float.h:86
      nz : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_float.h:87
      tree : access gsl_gsl_bst_h.gsl_bst_workspace;  -- /usr/include/gsl/gsl_spmatrix_float.h:89
      node_size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_float.h:91
      work : aliased anon_anon_87;  -- /usr/include/gsl/gsl_spmatrix_float.h:102
      sptype : aliased int;  -- /usr/include/gsl/gsl_spmatrix_float.h:104
      spflags : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_float.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_spmatrix_float.h:106

   function gsl_spmatrix_float_alloc (n1 : stddef_h.size_t; n2 : stddef_h.size_t) return access gsl_spmatrix_float  -- /usr/include/gsl/gsl_spmatrix_float.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_alloc";

   function gsl_spmatrix_float_alloc_nzmax
     (n1 : stddef_h.size_t;
      n2 : stddef_h.size_t;
      nzmax : stddef_h.size_t;
      sptype : int) return access gsl_spmatrix_float  -- /usr/include/gsl/gsl_spmatrix_float.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_alloc_nzmax";

   procedure gsl_spmatrix_float_free (m : access gsl_spmatrix_float)  -- /usr/include/gsl/gsl_spmatrix_float.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_free";

   function gsl_spmatrix_float_realloc (nzmax : stddef_h.size_t; m : access gsl_spmatrix_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_realloc";

   function gsl_spmatrix_float_nnz (m : access constant gsl_spmatrix_float) return stddef_h.size_t  -- /usr/include/gsl/gsl_spmatrix_float.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_nnz";

   function gsl_spmatrix_float_type (m : access constant gsl_spmatrix_float) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_spmatrix_float.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_type";

   function gsl_spmatrix_float_set_zero (m : access gsl_spmatrix_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_set_zero";

   function gsl_spmatrix_float_tree_rebuild (m : access gsl_spmatrix_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_tree_rebuild";

   function gsl_spmatrix_float_csc (dest : access gsl_spmatrix_float; src : access constant gsl_spmatrix_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_csc";

   function gsl_spmatrix_float_csr (dest : access gsl_spmatrix_float; src : access constant gsl_spmatrix_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_csr";

   function gsl_spmatrix_float_compress (src : access constant gsl_spmatrix_float; sptype : int) return access gsl_spmatrix_float  -- /usr/include/gsl/gsl_spmatrix_float.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_compress";

   function gsl_spmatrix_float_compcol (src : access constant gsl_spmatrix_float) return access gsl_spmatrix_float  -- /usr/include/gsl/gsl_spmatrix_float.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_compcol";

   function gsl_spmatrix_float_ccs (src : access constant gsl_spmatrix_float) return access gsl_spmatrix_float  -- /usr/include/gsl/gsl_spmatrix_float.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_ccs";

   function gsl_spmatrix_float_crs (src : access constant gsl_spmatrix_float) return access gsl_spmatrix_float  -- /usr/include/gsl/gsl_spmatrix_float.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_crs";

   function gsl_spmatrix_float_memcpy (dest : access gsl_spmatrix_float; src : access constant gsl_spmatrix_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_memcpy";

   function gsl_spmatrix_float_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      m : access constant gsl_spmatrix_float;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_fprintf";

   function gsl_spmatrix_float_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE) return access gsl_spmatrix_float  -- /usr/include/gsl/gsl_spmatrix_float.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_fscanf";

   function gsl_spmatrix_float_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access constant gsl_spmatrix_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_fwrite";

   function gsl_spmatrix_float_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access gsl_spmatrix_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_fread";

   function gsl_spmatrix_float_get
     (m : access constant gsl_spmatrix_float;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return float  -- /usr/include/gsl/gsl_spmatrix_float.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_get";

   function gsl_spmatrix_float_set
     (m : access gsl_spmatrix_float;
      i : stddef_h.size_t;
      j : stddef_h.size_t;
      x : float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_set";

   function gsl_spmatrix_float_ptr
     (m : access constant gsl_spmatrix_float;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return access float  -- /usr/include/gsl/gsl_spmatrix_float.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_ptr";

   function gsl_spmatrix_float_minmax
     (m : access constant gsl_spmatrix_float;
      min_out : access float;
      max_out : access float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_minmax";

   function gsl_spmatrix_float_min_index
     (m : access constant gsl_spmatrix_float;
      imin_out : access stddef_h.size_t;
      jmin_out : access stddef_h.size_t) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_min_index";

   function gsl_spmatrix_float_scale (m : access gsl_spmatrix_float; x : float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_scale";

   function gsl_spmatrix_float_scale_columns (m : access gsl_spmatrix_float; x : access constant gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_scale_columns";

   function gsl_spmatrix_float_scale_rows (m : access gsl_spmatrix_float; x : access constant gsl_gsl_vector_float_h.gsl_vector_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_scale_rows";

   function gsl_spmatrix_float_add
     (c : access gsl_spmatrix_float;
      a : access constant gsl_spmatrix_float;
      b : access constant gsl_spmatrix_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_add";

   function gsl_spmatrix_float_dense_add (a : access gsl_gsl_matrix_float_h.gsl_matrix_float; b : access constant gsl_spmatrix_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_dense_add";

   function gsl_spmatrix_float_dense_sub (a : access gsl_gsl_matrix_float_h.gsl_matrix_float; b : access constant gsl_spmatrix_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_dense_sub";

   function gsl_spmatrix_float_d2sp (T : access gsl_spmatrix_float; A : access constant gsl_gsl_matrix_float_h.gsl_matrix_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_d2sp";

   function gsl_spmatrix_float_sp2d (A : access gsl_gsl_matrix_float_h.gsl_matrix_float; S : access constant gsl_spmatrix_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_sp2d";

   function gsl_spmatrix_float_add_to_dense (a : access gsl_gsl_matrix_float_h.gsl_matrix_float; b : access constant gsl_spmatrix_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_add_to_dense";

   function gsl_spmatrix_float_equal (a : access constant gsl_spmatrix_float; b : access constant gsl_spmatrix_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_equal";

   function gsl_spmatrix_float_norm1 (a : access constant gsl_spmatrix_float) return float  -- /usr/include/gsl/gsl_spmatrix_float.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_norm1";

   function gsl_spmatrix_float_transpose (m : access gsl_spmatrix_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_transpose";

   function gsl_spmatrix_float_transpose2 (m : access gsl_spmatrix_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_transpose2";

   function gsl_spmatrix_float_transpose_memcpy (dest : access gsl_spmatrix_float; src : access constant gsl_spmatrix_float) return int  -- /usr/include/gsl/gsl_spmatrix_float.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_float_transpose_memcpy";

end gsl_gsl_spmatrix_float_h;
