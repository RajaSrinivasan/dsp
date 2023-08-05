pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with stddef_h;
limited with gsl_gsl_bst_h;
with Interfaces.C.Strings;
limited with aarch64_linux_gnu_bits_types_FILE_h;
limited with gsl_gsl_vector_ulong_h;
limited with gsl_gsl_matrix_ulong_h;

package gsl_gsl_spmatrix_ulong_h is

   --  skipped anonymous struct anon_anon_86

   type anon_anon_87 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            work_void : System.Address;  -- /usr/include/gsl/gsl_spmatrix_ulong.h:99
         when 1 =>
            work_int : access int;  -- /usr/include/gsl/gsl_spmatrix_ulong.h:100
         when others =>
            work_atomic : access unsigned_long;  -- /usr/include/gsl/gsl_spmatrix_ulong.h:101
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type gsl_spmatrix_ulong is record
      size1 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_ulong.h:67
      size2 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_ulong.h:68
      i : access int;  -- /usr/include/gsl/gsl_spmatrix_ulong.h:75
      data : access unsigned_long;  -- /usr/include/gsl/gsl_spmatrix_ulong.h:77
      p : access int;  -- /usr/include/gsl/gsl_spmatrix_ulong.h:84
      nzmax : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_ulong.h:86
      nz : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_ulong.h:87
      tree : access gsl_gsl_bst_h.gsl_bst_workspace;  -- /usr/include/gsl/gsl_spmatrix_ulong.h:89
      node_size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_ulong.h:91
      work : aliased anon_anon_87;  -- /usr/include/gsl/gsl_spmatrix_ulong.h:102
      sptype : aliased int;  -- /usr/include/gsl/gsl_spmatrix_ulong.h:104
      spflags : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_ulong.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_spmatrix_ulong.h:106

   function gsl_spmatrix_ulong_alloc (n1 : stddef_h.size_t; n2 : stddef_h.size_t) return access gsl_spmatrix_ulong  -- /usr/include/gsl/gsl_spmatrix_ulong.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_alloc";

   function gsl_spmatrix_ulong_alloc_nzmax
     (n1 : stddef_h.size_t;
      n2 : stddef_h.size_t;
      nzmax : stddef_h.size_t;
      sptype : int) return access gsl_spmatrix_ulong  -- /usr/include/gsl/gsl_spmatrix_ulong.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_alloc_nzmax";

   procedure gsl_spmatrix_ulong_free (m : access gsl_spmatrix_ulong)  -- /usr/include/gsl/gsl_spmatrix_ulong.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_free";

   function gsl_spmatrix_ulong_realloc (nzmax : stddef_h.size_t; m : access gsl_spmatrix_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_realloc";

   function gsl_spmatrix_ulong_nnz (m : access constant gsl_spmatrix_ulong) return stddef_h.size_t  -- /usr/include/gsl/gsl_spmatrix_ulong.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_nnz";

   function gsl_spmatrix_ulong_type (m : access constant gsl_spmatrix_ulong) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_spmatrix_ulong.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_type";

   function gsl_spmatrix_ulong_set_zero (m : access gsl_spmatrix_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_set_zero";

   function gsl_spmatrix_ulong_tree_rebuild (m : access gsl_spmatrix_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_tree_rebuild";

   function gsl_spmatrix_ulong_csc (dest : access gsl_spmatrix_ulong; src : access constant gsl_spmatrix_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_csc";

   function gsl_spmatrix_ulong_csr (dest : access gsl_spmatrix_ulong; src : access constant gsl_spmatrix_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_csr";

   function gsl_spmatrix_ulong_compress (src : access constant gsl_spmatrix_ulong; sptype : int) return access gsl_spmatrix_ulong  -- /usr/include/gsl/gsl_spmatrix_ulong.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_compress";

   function gsl_spmatrix_ulong_compcol (src : access constant gsl_spmatrix_ulong) return access gsl_spmatrix_ulong  -- /usr/include/gsl/gsl_spmatrix_ulong.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_compcol";

   function gsl_spmatrix_ulong_ccs (src : access constant gsl_spmatrix_ulong) return access gsl_spmatrix_ulong  -- /usr/include/gsl/gsl_spmatrix_ulong.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_ccs";

   function gsl_spmatrix_ulong_crs (src : access constant gsl_spmatrix_ulong) return access gsl_spmatrix_ulong  -- /usr/include/gsl/gsl_spmatrix_ulong.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_crs";

   function gsl_spmatrix_ulong_memcpy (dest : access gsl_spmatrix_ulong; src : access constant gsl_spmatrix_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_memcpy";

   function gsl_spmatrix_ulong_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      m : access constant gsl_spmatrix_ulong;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_fprintf";

   function gsl_spmatrix_ulong_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE) return access gsl_spmatrix_ulong  -- /usr/include/gsl/gsl_spmatrix_ulong.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_fscanf";

   function gsl_spmatrix_ulong_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access constant gsl_spmatrix_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_fwrite";

   function gsl_spmatrix_ulong_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access gsl_spmatrix_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_fread";

   function gsl_spmatrix_ulong_get
     (m : access constant gsl_spmatrix_ulong;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return unsigned_long  -- /usr/include/gsl/gsl_spmatrix_ulong.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_get";

   function gsl_spmatrix_ulong_set
     (m : access gsl_spmatrix_ulong;
      i : stddef_h.size_t;
      j : stddef_h.size_t;
      x : unsigned_long) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_set";

   function gsl_spmatrix_ulong_ptr
     (m : access constant gsl_spmatrix_ulong;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return access unsigned_long  -- /usr/include/gsl/gsl_spmatrix_ulong.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_ptr";

   function gsl_spmatrix_ulong_minmax
     (m : access constant gsl_spmatrix_ulong;
      min_out : access unsigned_long;
      max_out : access unsigned_long) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_minmax";

   function gsl_spmatrix_ulong_min_index
     (m : access constant gsl_spmatrix_ulong;
      imin_out : access stddef_h.size_t;
      jmin_out : access stddef_h.size_t) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_min_index";

   function gsl_spmatrix_ulong_scale (m : access gsl_spmatrix_ulong; x : unsigned_long) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_scale";

   function gsl_spmatrix_ulong_scale_columns (m : access gsl_spmatrix_ulong; x : access constant gsl_gsl_vector_ulong_h.gsl_vector_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_scale_columns";

   function gsl_spmatrix_ulong_scale_rows (m : access gsl_spmatrix_ulong; x : access constant gsl_gsl_vector_ulong_h.gsl_vector_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_scale_rows";

   function gsl_spmatrix_ulong_add
     (c : access gsl_spmatrix_ulong;
      a : access constant gsl_spmatrix_ulong;
      b : access constant gsl_spmatrix_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_add";

   function gsl_spmatrix_ulong_dense_add (a : access gsl_gsl_matrix_ulong_h.gsl_matrix_ulong; b : access constant gsl_spmatrix_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_dense_add";

   function gsl_spmatrix_ulong_dense_sub (a : access gsl_gsl_matrix_ulong_h.gsl_matrix_ulong; b : access constant gsl_spmatrix_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_dense_sub";

   function gsl_spmatrix_ulong_d2sp (T : access gsl_spmatrix_ulong; A : access constant gsl_gsl_matrix_ulong_h.gsl_matrix_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_d2sp";

   function gsl_spmatrix_ulong_sp2d (A : access gsl_gsl_matrix_ulong_h.gsl_matrix_ulong; S : access constant gsl_spmatrix_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_sp2d";

   function gsl_spmatrix_ulong_add_to_dense (a : access gsl_gsl_matrix_ulong_h.gsl_matrix_ulong; b : access constant gsl_spmatrix_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_add_to_dense";

   function gsl_spmatrix_ulong_equal (a : access constant gsl_spmatrix_ulong; b : access constant gsl_spmatrix_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_equal";

   function gsl_spmatrix_ulong_norm1 (a : access constant gsl_spmatrix_ulong) return unsigned_long  -- /usr/include/gsl/gsl_spmatrix_ulong.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_norm1";

   function gsl_spmatrix_ulong_transpose (m : access gsl_spmatrix_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_transpose";

   function gsl_spmatrix_ulong_transpose2 (m : access gsl_spmatrix_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_transpose2";

   function gsl_spmatrix_ulong_transpose_memcpy (dest : access gsl_spmatrix_ulong; src : access constant gsl_spmatrix_ulong) return int  -- /usr/include/gsl/gsl_spmatrix_ulong.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ulong_transpose_memcpy";

end gsl_gsl_spmatrix_ulong_h;
