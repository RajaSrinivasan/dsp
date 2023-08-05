pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with stddef_h;
limited with gsl_gsl_bst_h;
with Interfaces.C.Strings;
limited with aarch64_linux_gnu_bits_types_FILE_h;
limited with gsl_gsl_vector_uint_h;
limited with gsl_gsl_matrix_uint_h;

package gsl_gsl_spmatrix_uint_h is

   --  skipped anonymous struct anon_anon_86

   type anon_anon_87 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            work_void : System.Address;  -- /usr/include/gsl/gsl_spmatrix_uint.h:99
         when 1 =>
            work_int : access int;  -- /usr/include/gsl/gsl_spmatrix_uint.h:100
         when others =>
            work_atomic : access unsigned;  -- /usr/include/gsl/gsl_spmatrix_uint.h:101
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type gsl_spmatrix_uint is record
      size1 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_uint.h:67
      size2 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_uint.h:68
      i : access int;  -- /usr/include/gsl/gsl_spmatrix_uint.h:75
      data : access unsigned;  -- /usr/include/gsl/gsl_spmatrix_uint.h:77
      p : access int;  -- /usr/include/gsl/gsl_spmatrix_uint.h:84
      nzmax : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_uint.h:86
      nz : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_uint.h:87
      tree : access gsl_gsl_bst_h.gsl_bst_workspace;  -- /usr/include/gsl/gsl_spmatrix_uint.h:89
      node_size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_uint.h:91
      work : aliased anon_anon_87;  -- /usr/include/gsl/gsl_spmatrix_uint.h:102
      sptype : aliased int;  -- /usr/include/gsl/gsl_spmatrix_uint.h:104
      spflags : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_uint.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_spmatrix_uint.h:106

   function gsl_spmatrix_uint_alloc (n1 : stddef_h.size_t; n2 : stddef_h.size_t) return access gsl_spmatrix_uint  -- /usr/include/gsl/gsl_spmatrix_uint.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_alloc";

   function gsl_spmatrix_uint_alloc_nzmax
     (n1 : stddef_h.size_t;
      n2 : stddef_h.size_t;
      nzmax : stddef_h.size_t;
      sptype : int) return access gsl_spmatrix_uint  -- /usr/include/gsl/gsl_spmatrix_uint.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_alloc_nzmax";

   procedure gsl_spmatrix_uint_free (m : access gsl_spmatrix_uint)  -- /usr/include/gsl/gsl_spmatrix_uint.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_free";

   function gsl_spmatrix_uint_realloc (nzmax : stddef_h.size_t; m : access gsl_spmatrix_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_realloc";

   function gsl_spmatrix_uint_nnz (m : access constant gsl_spmatrix_uint) return stddef_h.size_t  -- /usr/include/gsl/gsl_spmatrix_uint.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_nnz";

   function gsl_spmatrix_uint_type (m : access constant gsl_spmatrix_uint) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_spmatrix_uint.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_type";

   function gsl_spmatrix_uint_set_zero (m : access gsl_spmatrix_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_set_zero";

   function gsl_spmatrix_uint_tree_rebuild (m : access gsl_spmatrix_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_tree_rebuild";

   function gsl_spmatrix_uint_csc (dest : access gsl_spmatrix_uint; src : access constant gsl_spmatrix_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_csc";

   function gsl_spmatrix_uint_csr (dest : access gsl_spmatrix_uint; src : access constant gsl_spmatrix_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_csr";

   function gsl_spmatrix_uint_compress (src : access constant gsl_spmatrix_uint; sptype : int) return access gsl_spmatrix_uint  -- /usr/include/gsl/gsl_spmatrix_uint.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_compress";

   function gsl_spmatrix_uint_compcol (src : access constant gsl_spmatrix_uint) return access gsl_spmatrix_uint  -- /usr/include/gsl/gsl_spmatrix_uint.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_compcol";

   function gsl_spmatrix_uint_ccs (src : access constant gsl_spmatrix_uint) return access gsl_spmatrix_uint  -- /usr/include/gsl/gsl_spmatrix_uint.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_ccs";

   function gsl_spmatrix_uint_crs (src : access constant gsl_spmatrix_uint) return access gsl_spmatrix_uint  -- /usr/include/gsl/gsl_spmatrix_uint.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_crs";

   function gsl_spmatrix_uint_memcpy (dest : access gsl_spmatrix_uint; src : access constant gsl_spmatrix_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_memcpy";

   function gsl_spmatrix_uint_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      m : access constant gsl_spmatrix_uint;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_fprintf";

   function gsl_spmatrix_uint_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE) return access gsl_spmatrix_uint  -- /usr/include/gsl/gsl_spmatrix_uint.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_fscanf";

   function gsl_spmatrix_uint_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access constant gsl_spmatrix_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_fwrite";

   function gsl_spmatrix_uint_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access gsl_spmatrix_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_fread";

   function gsl_spmatrix_uint_get
     (m : access constant gsl_spmatrix_uint;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return unsigned  -- /usr/include/gsl/gsl_spmatrix_uint.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_get";

   function gsl_spmatrix_uint_set
     (m : access gsl_spmatrix_uint;
      i : stddef_h.size_t;
      j : stddef_h.size_t;
      x : unsigned) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_set";

   function gsl_spmatrix_uint_ptr
     (m : access constant gsl_spmatrix_uint;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return access unsigned  -- /usr/include/gsl/gsl_spmatrix_uint.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_ptr";

   function gsl_spmatrix_uint_minmax
     (m : access constant gsl_spmatrix_uint;
      min_out : access unsigned;
      max_out : access unsigned) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_minmax";

   function gsl_spmatrix_uint_min_index
     (m : access constant gsl_spmatrix_uint;
      imin_out : access stddef_h.size_t;
      jmin_out : access stddef_h.size_t) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_min_index";

   function gsl_spmatrix_uint_scale (m : access gsl_spmatrix_uint; x : unsigned) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_scale";

   function gsl_spmatrix_uint_scale_columns (m : access gsl_spmatrix_uint; x : access constant gsl_gsl_vector_uint_h.gsl_vector_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_scale_columns";

   function gsl_spmatrix_uint_scale_rows (m : access gsl_spmatrix_uint; x : access constant gsl_gsl_vector_uint_h.gsl_vector_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_scale_rows";

   function gsl_spmatrix_uint_add
     (c : access gsl_spmatrix_uint;
      a : access constant gsl_spmatrix_uint;
      b : access constant gsl_spmatrix_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_add";

   function gsl_spmatrix_uint_dense_add (a : access gsl_gsl_matrix_uint_h.gsl_matrix_uint; b : access constant gsl_spmatrix_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_dense_add";

   function gsl_spmatrix_uint_dense_sub (a : access gsl_gsl_matrix_uint_h.gsl_matrix_uint; b : access constant gsl_spmatrix_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_dense_sub";

   function gsl_spmatrix_uint_d2sp (T : access gsl_spmatrix_uint; A : access constant gsl_gsl_matrix_uint_h.gsl_matrix_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_d2sp";

   function gsl_spmatrix_uint_sp2d (A : access gsl_gsl_matrix_uint_h.gsl_matrix_uint; S : access constant gsl_spmatrix_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_sp2d";

   function gsl_spmatrix_uint_add_to_dense (a : access gsl_gsl_matrix_uint_h.gsl_matrix_uint; b : access constant gsl_spmatrix_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_add_to_dense";

   function gsl_spmatrix_uint_equal (a : access constant gsl_spmatrix_uint; b : access constant gsl_spmatrix_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_equal";

   function gsl_spmatrix_uint_norm1 (a : access constant gsl_spmatrix_uint) return unsigned  -- /usr/include/gsl/gsl_spmatrix_uint.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_norm1";

   function gsl_spmatrix_uint_transpose (m : access gsl_spmatrix_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_transpose";

   function gsl_spmatrix_uint_transpose2 (m : access gsl_spmatrix_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_transpose2";

   function gsl_spmatrix_uint_transpose_memcpy (dest : access gsl_spmatrix_uint; src : access constant gsl_spmatrix_uint) return int  -- /usr/include/gsl/gsl_spmatrix_uint.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_uint_transpose_memcpy";

end gsl_gsl_spmatrix_uint_h;
