pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with stddef_h;
limited with gsl_gsl_bst_h;
with Interfaces.C.Strings;
limited with aarch64_linux_gnu_bits_types_FILE_h;
limited with gsl_gsl_vector_short_h;
limited with gsl_gsl_matrix_short_h;

package gsl_gsl_spmatrix_short_h is

   --  skipped anonymous struct anon_anon_86

   type anon_anon_87 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            work_void : System.Address;  -- /usr/include/gsl/gsl_spmatrix_short.h:99
         when 1 =>
            work_int : access int;  -- /usr/include/gsl/gsl_spmatrix_short.h:100
         when others =>
            work_atomic : access short;  -- /usr/include/gsl/gsl_spmatrix_short.h:101
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type gsl_spmatrix_short is record
      size1 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_short.h:67
      size2 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_short.h:68
      i : access int;  -- /usr/include/gsl/gsl_spmatrix_short.h:75
      data : access short;  -- /usr/include/gsl/gsl_spmatrix_short.h:77
      p : access int;  -- /usr/include/gsl/gsl_spmatrix_short.h:84
      nzmax : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_short.h:86
      nz : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_short.h:87
      tree : access gsl_gsl_bst_h.gsl_bst_workspace;  -- /usr/include/gsl/gsl_spmatrix_short.h:89
      node_size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_short.h:91
      work : aliased anon_anon_87;  -- /usr/include/gsl/gsl_spmatrix_short.h:102
      sptype : aliased int;  -- /usr/include/gsl/gsl_spmatrix_short.h:104
      spflags : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_short.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_spmatrix_short.h:106

   function gsl_spmatrix_short_alloc (n1 : stddef_h.size_t; n2 : stddef_h.size_t) return access gsl_spmatrix_short  -- /usr/include/gsl/gsl_spmatrix_short.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_alloc";

   function gsl_spmatrix_short_alloc_nzmax
     (n1 : stddef_h.size_t;
      n2 : stddef_h.size_t;
      nzmax : stddef_h.size_t;
      sptype : int) return access gsl_spmatrix_short  -- /usr/include/gsl/gsl_spmatrix_short.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_alloc_nzmax";

   procedure gsl_spmatrix_short_free (m : access gsl_spmatrix_short)  -- /usr/include/gsl/gsl_spmatrix_short.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_free";

   function gsl_spmatrix_short_realloc (nzmax : stddef_h.size_t; m : access gsl_spmatrix_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_realloc";

   function gsl_spmatrix_short_nnz (m : access constant gsl_spmatrix_short) return stddef_h.size_t  -- /usr/include/gsl/gsl_spmatrix_short.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_nnz";

   function gsl_spmatrix_short_type (m : access constant gsl_spmatrix_short) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_spmatrix_short.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_type";

   function gsl_spmatrix_short_set_zero (m : access gsl_spmatrix_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_set_zero";

   function gsl_spmatrix_short_tree_rebuild (m : access gsl_spmatrix_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_tree_rebuild";

   function gsl_spmatrix_short_csc (dest : access gsl_spmatrix_short; src : access constant gsl_spmatrix_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_csc";

   function gsl_spmatrix_short_csr (dest : access gsl_spmatrix_short; src : access constant gsl_spmatrix_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_csr";

   function gsl_spmatrix_short_compress (src : access constant gsl_spmatrix_short; sptype : int) return access gsl_spmatrix_short  -- /usr/include/gsl/gsl_spmatrix_short.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_compress";

   function gsl_spmatrix_short_compcol (src : access constant gsl_spmatrix_short) return access gsl_spmatrix_short  -- /usr/include/gsl/gsl_spmatrix_short.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_compcol";

   function gsl_spmatrix_short_ccs (src : access constant gsl_spmatrix_short) return access gsl_spmatrix_short  -- /usr/include/gsl/gsl_spmatrix_short.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_ccs";

   function gsl_spmatrix_short_crs (src : access constant gsl_spmatrix_short) return access gsl_spmatrix_short  -- /usr/include/gsl/gsl_spmatrix_short.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_crs";

   function gsl_spmatrix_short_memcpy (dest : access gsl_spmatrix_short; src : access constant gsl_spmatrix_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_memcpy";

   function gsl_spmatrix_short_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      m : access constant gsl_spmatrix_short;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_fprintf";

   function gsl_spmatrix_short_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE) return access gsl_spmatrix_short  -- /usr/include/gsl/gsl_spmatrix_short.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_fscanf";

   function gsl_spmatrix_short_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access constant gsl_spmatrix_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_fwrite";

   function gsl_spmatrix_short_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access gsl_spmatrix_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_fread";

   function gsl_spmatrix_short_get
     (m : access constant gsl_spmatrix_short;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return short  -- /usr/include/gsl/gsl_spmatrix_short.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_get";

   function gsl_spmatrix_short_set
     (m : access gsl_spmatrix_short;
      i : stddef_h.size_t;
      j : stddef_h.size_t;
      x : short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_set";

   function gsl_spmatrix_short_ptr
     (m : access constant gsl_spmatrix_short;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return access short  -- /usr/include/gsl/gsl_spmatrix_short.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_ptr";

   function gsl_spmatrix_short_minmax
     (m : access constant gsl_spmatrix_short;
      min_out : access short;
      max_out : access short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_minmax";

   function gsl_spmatrix_short_min_index
     (m : access constant gsl_spmatrix_short;
      imin_out : access stddef_h.size_t;
      jmin_out : access stddef_h.size_t) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_min_index";

   function gsl_spmatrix_short_scale (m : access gsl_spmatrix_short; x : short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_scale";

   function gsl_spmatrix_short_scale_columns (m : access gsl_spmatrix_short; x : access constant gsl_gsl_vector_short_h.gsl_vector_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_scale_columns";

   function gsl_spmatrix_short_scale_rows (m : access gsl_spmatrix_short; x : access constant gsl_gsl_vector_short_h.gsl_vector_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_scale_rows";

   function gsl_spmatrix_short_add
     (c : access gsl_spmatrix_short;
      a : access constant gsl_spmatrix_short;
      b : access constant gsl_spmatrix_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_add";

   function gsl_spmatrix_short_dense_add (a : access gsl_gsl_matrix_short_h.gsl_matrix_short; b : access constant gsl_spmatrix_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_dense_add";

   function gsl_spmatrix_short_dense_sub (a : access gsl_gsl_matrix_short_h.gsl_matrix_short; b : access constant gsl_spmatrix_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_dense_sub";

   function gsl_spmatrix_short_d2sp (T : access gsl_spmatrix_short; A : access constant gsl_gsl_matrix_short_h.gsl_matrix_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_d2sp";

   function gsl_spmatrix_short_sp2d (A : access gsl_gsl_matrix_short_h.gsl_matrix_short; S : access constant gsl_spmatrix_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_sp2d";

   function gsl_spmatrix_short_add_to_dense (a : access gsl_gsl_matrix_short_h.gsl_matrix_short; b : access constant gsl_spmatrix_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_add_to_dense";

   function gsl_spmatrix_short_equal (a : access constant gsl_spmatrix_short; b : access constant gsl_spmatrix_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_equal";

   function gsl_spmatrix_short_norm1 (a : access constant gsl_spmatrix_short) return short  -- /usr/include/gsl/gsl_spmatrix_short.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_norm1";

   function gsl_spmatrix_short_transpose (m : access gsl_spmatrix_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_transpose";

   function gsl_spmatrix_short_transpose2 (m : access gsl_spmatrix_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_transpose2";

   function gsl_spmatrix_short_transpose_memcpy (dest : access gsl_spmatrix_short; src : access constant gsl_spmatrix_short) return int  -- /usr/include/gsl/gsl_spmatrix_short.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_short_transpose_memcpy";

end gsl_gsl_spmatrix_short_h;
