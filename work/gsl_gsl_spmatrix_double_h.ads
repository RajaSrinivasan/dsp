pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with stddef_h;
limited with gsl_gsl_bst_h;
with Interfaces.C.Strings;
limited with aarch64_linux_gnu_bits_types_FILE_h;
limited with gsl_gsl_vector_double_h;
limited with gsl_gsl_matrix_double_h;

package gsl_gsl_spmatrix_double_h is

   --  skipped anonymous struct anon_anon_86

   type anon_anon_87 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            work_void : System.Address;  -- /usr/include/gsl/gsl_spmatrix_double.h:99
         when 1 =>
            work_int : access int;  -- /usr/include/gsl/gsl_spmatrix_double.h:100
         when others =>
            work_atomic : access double;  -- /usr/include/gsl/gsl_spmatrix_double.h:101
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type gsl_spmatrix is record
      size1 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_double.h:67
      size2 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_double.h:68
      i : access int;  -- /usr/include/gsl/gsl_spmatrix_double.h:75
      data : access double;  -- /usr/include/gsl/gsl_spmatrix_double.h:77
      p : access int;  -- /usr/include/gsl/gsl_spmatrix_double.h:84
      nzmax : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_double.h:86
      nz : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_double.h:87
      tree : access gsl_gsl_bst_h.gsl_bst_workspace;  -- /usr/include/gsl/gsl_spmatrix_double.h:89
      node_size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_double.h:91
      work : aliased anon_anon_87;  -- /usr/include/gsl/gsl_spmatrix_double.h:102
      sptype : aliased int;  -- /usr/include/gsl/gsl_spmatrix_double.h:104
      spflags : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_double.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_spmatrix_double.h:106

   function gsl_spmatrix_alloc (n1 : stddef_h.size_t; n2 : stddef_h.size_t) return access gsl_spmatrix  -- /usr/include/gsl/gsl_spmatrix_double.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_alloc";

   function gsl_spmatrix_alloc_nzmax
     (n1 : stddef_h.size_t;
      n2 : stddef_h.size_t;
      nzmax : stddef_h.size_t;
      sptype : int) return access gsl_spmatrix  -- /usr/include/gsl/gsl_spmatrix_double.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_alloc_nzmax";

   procedure gsl_spmatrix_free (m : access gsl_spmatrix)  -- /usr/include/gsl/gsl_spmatrix_double.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_free";

   function gsl_spmatrix_realloc (nzmax : stddef_h.size_t; m : access gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_realloc";

   function gsl_spmatrix_nnz (m : access constant gsl_spmatrix) return stddef_h.size_t  -- /usr/include/gsl/gsl_spmatrix_double.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_nnz";

   function gsl_spmatrix_type (m : access constant gsl_spmatrix) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_spmatrix_double.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_type";

   function gsl_spmatrix_set_zero (m : access gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_set_zero";

   function gsl_spmatrix_tree_rebuild (m : access gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_tree_rebuild";

   function gsl_spmatrix_csc (dest : access gsl_spmatrix; src : access constant gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_csc";

   function gsl_spmatrix_csr (dest : access gsl_spmatrix; src : access constant gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_csr";

   function gsl_spmatrix_compress (src : access constant gsl_spmatrix; sptype : int) return access gsl_spmatrix  -- /usr/include/gsl/gsl_spmatrix_double.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_compress";

   function gsl_spmatrix_compcol (src : access constant gsl_spmatrix) return access gsl_spmatrix  -- /usr/include/gsl/gsl_spmatrix_double.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_compcol";

   function gsl_spmatrix_ccs (src : access constant gsl_spmatrix) return access gsl_spmatrix  -- /usr/include/gsl/gsl_spmatrix_double.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ccs";

   function gsl_spmatrix_crs (src : access constant gsl_spmatrix) return access gsl_spmatrix  -- /usr/include/gsl/gsl_spmatrix_double.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_crs";

   function gsl_spmatrix_memcpy (dest : access gsl_spmatrix; src : access constant gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_memcpy";

   function gsl_spmatrix_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      m : access constant gsl_spmatrix;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_fprintf";

   function gsl_spmatrix_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE) return access gsl_spmatrix  -- /usr/include/gsl/gsl_spmatrix_double.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_fscanf";

   function gsl_spmatrix_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access constant gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_fwrite";

   function gsl_spmatrix_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_fread";

   function gsl_spmatrix_get
     (m : access constant gsl_spmatrix;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_spmatrix_double.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_get";

   function gsl_spmatrix_set
     (m : access gsl_spmatrix;
      i : stddef_h.size_t;
      j : stddef_h.size_t;
      x : double) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_set";

   function gsl_spmatrix_ptr
     (m : access constant gsl_spmatrix;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return access double  -- /usr/include/gsl/gsl_spmatrix_double.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_ptr";

   function gsl_spmatrix_minmax
     (m : access constant gsl_spmatrix;
      min_out : access double;
      max_out : access double) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_minmax";

   function gsl_spmatrix_min_index
     (m : access constant gsl_spmatrix;
      imin_out : access stddef_h.size_t;
      jmin_out : access stddef_h.size_t) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_min_index";

   function gsl_spmatrix_scale (m : access gsl_spmatrix; x : double) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_scale";

   function gsl_spmatrix_scale_columns (m : access gsl_spmatrix; x : access constant gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_scale_columns";

   function gsl_spmatrix_scale_rows (m : access gsl_spmatrix; x : access constant gsl_gsl_vector_double_h.gsl_vector) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_scale_rows";

   function gsl_spmatrix_add
     (c : access gsl_spmatrix;
      a : access constant gsl_spmatrix;
      b : access constant gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_add";

   function gsl_spmatrix_dense_add (a : access gsl_gsl_matrix_double_h.gsl_matrix; b : access constant gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_dense_add";

   function gsl_spmatrix_dense_sub (a : access gsl_gsl_matrix_double_h.gsl_matrix; b : access constant gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_dense_sub";

   function gsl_spmatrix_d2sp (T : access gsl_spmatrix; A : access constant gsl_gsl_matrix_double_h.gsl_matrix) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_d2sp";

   function gsl_spmatrix_sp2d (A : access gsl_gsl_matrix_double_h.gsl_matrix; S : access constant gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_sp2d";

   function gsl_spmatrix_add_to_dense (a : access gsl_gsl_matrix_double_h.gsl_matrix; b : access constant gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_add_to_dense";

   function gsl_spmatrix_equal (a : access constant gsl_spmatrix; b : access constant gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_equal";

   function gsl_spmatrix_norm1 (a : access constant gsl_spmatrix) return double  -- /usr/include/gsl/gsl_spmatrix_double.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_norm1";

   function gsl_spmatrix_transpose (m : access gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_transpose";

   function gsl_spmatrix_transpose2 (m : access gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_transpose2";

   function gsl_spmatrix_transpose_memcpy (dest : access gsl_spmatrix; src : access constant gsl_spmatrix) return int  -- /usr/include/gsl/gsl_spmatrix_double.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_transpose_memcpy";

end gsl_gsl_spmatrix_double_h;
