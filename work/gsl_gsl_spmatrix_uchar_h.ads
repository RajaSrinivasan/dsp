pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with stddef_h;
limited with gsl_gsl_bst_h;
with Interfaces.C.Strings;
limited with aarch64_linux_gnu_bits_types_FILE_h;
limited with gsl_gsl_vector_uchar_h;
limited with gsl_gsl_matrix_uchar_h;

package gsl_gsl_spmatrix_uchar_h is

   --  skipped anonymous struct anon_anon_86

   type anon_anon_87 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            work_void : System.Address;  -- /usr/include/gsl/gsl_spmatrix_uchar.h:99
         when 1 =>
            work_int : access int;  -- /usr/include/gsl/gsl_spmatrix_uchar.h:100
         when others =>
            work_atomic : access unsigned_char;  -- /usr/include/gsl/gsl_spmatrix_uchar.h:101
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type gsl_spmatrix_uchar is record
      size1 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_uchar.h:67
      size2 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_uchar.h:68
      i : access int;  -- /usr/include/gsl/gsl_spmatrix_uchar.h:75
      data : access unsigned_char;  -- /usr/include/gsl/gsl_spmatrix_uchar.h:77
      p : access int;  -- /usr/include/gsl/gsl_spmatrix_uchar.h:84
      nzmax : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_uchar.h:86
      nz : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_uchar.h:87
      tree : access gsl_gsl_bst_h.gsl_bst_workspace;  -- /usr/include/gsl/gsl_spmatrix_uchar.h:89
      node_size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_uchar.h:91
      work : aliased anon_anon_87;  -- /usr/include/gsl/gsl_spmatrix_uchar.h:102
      sptype : aliased int;  -- /usr/include/gsl/gsl_spmatrix_uchar.h:104
      spflags : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_uchar.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_spmatrix_uchar.h:106

   function gsl_spmatrix_uchar_alloc (n1 : stddef_h.size_t; n2 : stddef_h.size_t) return access gsl_spmatrix_uchar  -- /usr/include/gsl/gsl_spmatrix_uchar.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_alloc";

   function gsl_spmatrix_uchar_alloc_nzmax
     (n1 : stddef_h.size_t;
      n2 : stddef_h.size_t;
      nzmax : stddef_h.size_t;
      sptype : int) return access gsl_spmatrix_uchar  -- /usr/include/gsl/gsl_spmatrix_uchar.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_alloc_nzmax";

   procedure gsl_spmatrix_uchar_free (m : access gsl_spmatrix_uchar)  -- /usr/include/gsl/gsl_spmatrix_uchar.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_free";

   function gsl_spmatrix_uchar_realloc (nzmax : stddef_h.size_t; m : access gsl_spmatrix_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_realloc";

   function gsl_spmatrix_uchar_nnz (m : access constant gsl_spmatrix_uchar) return stddef_h.size_t  -- /usr/include/gsl/gsl_spmatrix_uchar.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_nnz";

   function gsl_spmatrix_uchar_type (m : access constant gsl_spmatrix_uchar) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_spmatrix_uchar.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_type";

   function gsl_spmatrix_uchar_set_zero (m : access gsl_spmatrix_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_set_zero";

   function gsl_spmatrix_uchar_tree_rebuild (m : access gsl_spmatrix_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_tree_rebuild";

   function gsl_spmatrix_uchar_csc (dest : access gsl_spmatrix_uchar; src : access constant gsl_spmatrix_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_csc";

   function gsl_spmatrix_uchar_csr (dest : access gsl_spmatrix_uchar; src : access constant gsl_spmatrix_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_csr";

   function gsl_spmatrix_uchar_compress (src : access constant gsl_spmatrix_uchar; sptype : int) return access gsl_spmatrix_uchar  -- /usr/include/gsl/gsl_spmatrix_uchar.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_compress";

   function gsl_spmatrix_uchar_compcol (src : access constant gsl_spmatrix_uchar) return access gsl_spmatrix_uchar  -- /usr/include/gsl/gsl_spmatrix_uchar.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_compcol";

   function gsl_spmatrix_uchar_ccs (src : access constant gsl_spmatrix_uchar) return access gsl_spmatrix_uchar  -- /usr/include/gsl/gsl_spmatrix_uchar.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_ccs";

   function gsl_spmatrix_uchar_crs (src : access constant gsl_spmatrix_uchar) return access gsl_spmatrix_uchar  -- /usr/include/gsl/gsl_spmatrix_uchar.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_crs";

   function gsl_spmatrix_uchar_memcpy (dest : access gsl_spmatrix_uchar; src : access constant gsl_spmatrix_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_memcpy";

   function gsl_spmatrix_uchar_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      m : access constant gsl_spmatrix_uchar;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_fprintf";

   function gsl_spmatrix_uchar_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE) return access gsl_spmatrix_uchar  -- /usr/include/gsl/gsl_spmatrix_uchar.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_fscanf";

   function gsl_spmatrix_uchar_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access constant gsl_spmatrix_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_fwrite";

   function gsl_spmatrix_uchar_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access gsl_spmatrix_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_fread";

   function gsl_spmatrix_uchar_get
     (m : access constant gsl_spmatrix_uchar;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return unsigned_char  -- /usr/include/gsl/gsl_spmatrix_uchar.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_get";

   function gsl_spmatrix_uchar_set
     (m : access gsl_spmatrix_uchar;
      i : stddef_h.size_t;
      j : stddef_h.size_t;
      x : unsigned_char) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_set";

   function gsl_spmatrix_uchar_ptr
     (m : access constant gsl_spmatrix_uchar;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return access unsigned_char  -- /usr/include/gsl/gsl_spmatrix_uchar.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_ptr";

   function gsl_spmatrix_uchar_minmax
     (m : access constant gsl_spmatrix_uchar;
      min_out : access unsigned_char;
      max_out : access unsigned_char) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_minmax";

   function gsl_spmatrix_uchar_min_index
     (m : access constant gsl_spmatrix_uchar;
      imin_out : access stddef_h.size_t;
      jmin_out : access stddef_h.size_t) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_min_index";

   function gsl_spmatrix_uchar_scale (m : access gsl_spmatrix_uchar; x : unsigned_char) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_scale";

   function gsl_spmatrix_uchar_scale_columns (m : access gsl_spmatrix_uchar; x : access constant gsl_gsl_vector_uchar_h.gsl_vector_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_scale_columns";

   function gsl_spmatrix_uchar_scale_rows (m : access gsl_spmatrix_uchar; x : access constant gsl_gsl_vector_uchar_h.gsl_vector_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_scale_rows";

   function gsl_spmatrix_uchar_add
     (c : access gsl_spmatrix_uchar;
      a : access constant gsl_spmatrix_uchar;
      b : access constant gsl_spmatrix_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_add";

   function gsl_spmatrix_uchar_dense_add (a : access gsl_gsl_matrix_uchar_h.gsl_matrix_uchar; b : access constant gsl_spmatrix_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_dense_add";

   function gsl_spmatrix_uchar_dense_sub (a : access gsl_gsl_matrix_uchar_h.gsl_matrix_uchar; b : access constant gsl_spmatrix_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_dense_sub";

   function gsl_spmatrix_uchar_d2sp (T : access gsl_spmatrix_uchar; A : access constant gsl_gsl_matrix_uchar_h.gsl_matrix_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_d2sp";

   function gsl_spmatrix_uchar_sp2d (A : access gsl_gsl_matrix_uchar_h.gsl_matrix_uchar; S : access constant gsl_spmatrix_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_sp2d";

   function gsl_spmatrix_uchar_add_to_dense (a : access gsl_gsl_matrix_uchar_h.gsl_matrix_uchar; b : access constant gsl_spmatrix_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_add_to_dense";

   function gsl_spmatrix_uchar_equal (a : access constant gsl_spmatrix_uchar; b : access constant gsl_spmatrix_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_equal";

   function gsl_spmatrix_uchar_norm1 (a : access constant gsl_spmatrix_uchar) return unsigned_char  -- /usr/include/gsl/gsl_spmatrix_uchar.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_norm1";

   function gsl_spmatrix_uchar_transpose (m : access gsl_spmatrix_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_transpose";

   function gsl_spmatrix_uchar_transpose2 (m : access gsl_spmatrix_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_transpose2";

   function gsl_spmatrix_uchar_transpose_memcpy (dest : access gsl_spmatrix_uchar; src : access constant gsl_spmatrix_uchar) return int  -- /usr/include/gsl/gsl_spmatrix_uchar.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uchar_transpose_memcpy";

end gsl_gsl_spmatrix_uchar_h;
