pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with stddef_h;
limited with gsl_gsl_bst_h;
with Interfaces.C.Strings;
limited with aarch64_linux_gnu_bits_types_FILE_h;
limited with gsl_gsl_vector_ushort_h;
limited with gsl_gsl_matrix_ushort_h;

package gsl_gsl_spmatrix_ushort_h is

   --  skipped anonymous struct anon_anon_86

   type anon_anon_87 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            work_void : System.Address;  -- /usr/include/gsl/gsl_spmatrix_ushort.h:99
         when 1 =>
            work_int : access int;  -- /usr/include/gsl/gsl_spmatrix_ushort.h:100
         when others =>
            work_atomic : access unsigned_short;  -- /usr/include/gsl/gsl_spmatrix_ushort.h:101
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type gsl_spmatrix_ushort is record
      size1 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_ushort.h:67
      size2 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_ushort.h:68
      i : access int;  -- /usr/include/gsl/gsl_spmatrix_ushort.h:75
      data : access unsigned_short;  -- /usr/include/gsl/gsl_spmatrix_ushort.h:77
      p : access int;  -- /usr/include/gsl/gsl_spmatrix_ushort.h:84
      nzmax : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_ushort.h:86
      nz : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_ushort.h:87
      tree : access gsl_gsl_bst_h.gsl_bst_workspace;  -- /usr/include/gsl/gsl_spmatrix_ushort.h:89
      node_size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_ushort.h:91
      work : aliased anon_anon_87;  -- /usr/include/gsl/gsl_spmatrix_ushort.h:102
      sptype : aliased int;  -- /usr/include/gsl/gsl_spmatrix_ushort.h:104
      spflags : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_ushort.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_spmatrix_ushort.h:106

   function gsl_spmatrix_ushort_alloc (n1 : stddef_h.size_t; n2 : stddef_h.size_t) return access gsl_spmatrix_ushort  -- /usr/include/gsl/gsl_spmatrix_ushort.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_alloc";

   function gsl_spmatrix_ushort_alloc_nzmax
     (n1 : stddef_h.size_t;
      n2 : stddef_h.size_t;
      nzmax : stddef_h.size_t;
      sptype : int) return access gsl_spmatrix_ushort  -- /usr/include/gsl/gsl_spmatrix_ushort.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_alloc_nzmax";

   procedure gsl_spmatrix_ushort_free (m : access gsl_spmatrix_ushort)  -- /usr/include/gsl/gsl_spmatrix_ushort.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_free";

   function gsl_spmatrix_ushort_realloc (nzmax : stddef_h.size_t; m : access gsl_spmatrix_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_realloc";

   function gsl_spmatrix_ushort_nnz (m : access constant gsl_spmatrix_ushort) return stddef_h.size_t  -- /usr/include/gsl/gsl_spmatrix_ushort.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_nnz";

   function gsl_spmatrix_ushort_type (m : access constant gsl_spmatrix_ushort) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_spmatrix_ushort.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_type";

   function gsl_spmatrix_ushort_set_zero (m : access gsl_spmatrix_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_set_zero";

   function gsl_spmatrix_ushort_tree_rebuild (m : access gsl_spmatrix_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_tree_rebuild";

   function gsl_spmatrix_ushort_csc (dest : access gsl_spmatrix_ushort; src : access constant gsl_spmatrix_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_csc";

   function gsl_spmatrix_ushort_csr (dest : access gsl_spmatrix_ushort; src : access constant gsl_spmatrix_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_csr";

   function gsl_spmatrix_ushort_compress (src : access constant gsl_spmatrix_ushort; sptype : int) return access gsl_spmatrix_ushort  -- /usr/include/gsl/gsl_spmatrix_ushort.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_compress";

   function gsl_spmatrix_ushort_compcol (src : access constant gsl_spmatrix_ushort) return access gsl_spmatrix_ushort  -- /usr/include/gsl/gsl_spmatrix_ushort.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_compcol";

   function gsl_spmatrix_ushort_ccs (src : access constant gsl_spmatrix_ushort) return access gsl_spmatrix_ushort  -- /usr/include/gsl/gsl_spmatrix_ushort.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_ccs";

   function gsl_spmatrix_ushort_crs (src : access constant gsl_spmatrix_ushort) return access gsl_spmatrix_ushort  -- /usr/include/gsl/gsl_spmatrix_ushort.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_crs";

   function gsl_spmatrix_ushort_memcpy (dest : access gsl_spmatrix_ushort; src : access constant gsl_spmatrix_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_memcpy";

   function gsl_spmatrix_ushort_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      m : access constant gsl_spmatrix_ushort;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_fprintf";

   function gsl_spmatrix_ushort_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE) return access gsl_spmatrix_ushort  -- /usr/include/gsl/gsl_spmatrix_ushort.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_fscanf";

   function gsl_spmatrix_ushort_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access constant gsl_spmatrix_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_fwrite";

   function gsl_spmatrix_ushort_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access gsl_spmatrix_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_fread";

   function gsl_spmatrix_ushort_get
     (m : access constant gsl_spmatrix_ushort;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return unsigned_short  -- /usr/include/gsl/gsl_spmatrix_ushort.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_get";

   function gsl_spmatrix_ushort_set
     (m : access gsl_spmatrix_ushort;
      i : stddef_h.size_t;
      j : stddef_h.size_t;
      x : unsigned_short) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_set";

   function gsl_spmatrix_ushort_ptr
     (m : access constant gsl_spmatrix_ushort;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return access unsigned_short  -- /usr/include/gsl/gsl_spmatrix_ushort.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_ptr";

   function gsl_spmatrix_ushort_minmax
     (m : access constant gsl_spmatrix_ushort;
      min_out : access unsigned_short;
      max_out : access unsigned_short) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_minmax";

   function gsl_spmatrix_ushort_min_index
     (m : access constant gsl_spmatrix_ushort;
      imin_out : access stddef_h.size_t;
      jmin_out : access stddef_h.size_t) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_min_index";

   function gsl_spmatrix_ushort_scale (m : access gsl_spmatrix_ushort; x : unsigned_short) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_scale";

   function gsl_spmatrix_ushort_scale_columns (m : access gsl_spmatrix_ushort; x : access constant gsl_gsl_vector_ushort_h.gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_scale_columns";

   function gsl_spmatrix_ushort_scale_rows (m : access gsl_spmatrix_ushort; x : access constant gsl_gsl_vector_ushort_h.gsl_vector_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_scale_rows";

   function gsl_spmatrix_ushort_add
     (c : access gsl_spmatrix_ushort;
      a : access constant gsl_spmatrix_ushort;
      b : access constant gsl_spmatrix_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_add";

   function gsl_spmatrix_ushort_dense_add (a : access gsl_gsl_matrix_ushort_h.gsl_matrix_ushort; b : access constant gsl_spmatrix_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_dense_add";

   function gsl_spmatrix_ushort_dense_sub (a : access gsl_gsl_matrix_ushort_h.gsl_matrix_ushort; b : access constant gsl_spmatrix_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_dense_sub";

   function gsl_spmatrix_ushort_d2sp (T : access gsl_spmatrix_ushort; A : access constant gsl_gsl_matrix_ushort_h.gsl_matrix_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_d2sp";

   function gsl_spmatrix_ushort_sp2d (A : access gsl_gsl_matrix_ushort_h.gsl_matrix_ushort; S : access constant gsl_spmatrix_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_sp2d";

   function gsl_spmatrix_ushort_add_to_dense (a : access gsl_gsl_matrix_ushort_h.gsl_matrix_ushort; b : access constant gsl_spmatrix_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_add_to_dense";

   function gsl_spmatrix_ushort_equal (a : access constant gsl_spmatrix_ushort; b : access constant gsl_spmatrix_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_equal";

   function gsl_spmatrix_ushort_norm1 (a : access constant gsl_spmatrix_ushort) return unsigned_short  -- /usr/include/gsl/gsl_spmatrix_ushort.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_norm1";

   function gsl_spmatrix_ushort_transpose (m : access gsl_spmatrix_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_transpose";

   function gsl_spmatrix_ushort_transpose2 (m : access gsl_spmatrix_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_transpose2";

   function gsl_spmatrix_ushort_transpose_memcpy (dest : access gsl_spmatrix_ushort; src : access constant gsl_spmatrix_ushort) return int  -- /usr/include/gsl/gsl_spmatrix_ushort.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ushort_transpose_memcpy";

end gsl_gsl_spmatrix_ushort_h;
