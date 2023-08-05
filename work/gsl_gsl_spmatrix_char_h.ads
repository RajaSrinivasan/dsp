pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;
with stddef_h;
limited with gsl_gsl_bst_h;
limited with aarch64_linux_gnu_bits_types_FILE_h;
limited with gsl_gsl_vector_char_h;
limited with gsl_gsl_matrix_char_h;

package gsl_gsl_spmatrix_char_h is

   --  skipped anonymous struct anon_anon_86

   type anon_anon_87 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            work_void : System.Address;  -- /usr/include/gsl/gsl_spmatrix_char.h:99
         when 1 =>
            work_int : access int;  -- /usr/include/gsl/gsl_spmatrix_char.h:100
         when others =>
            work_atomic : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_spmatrix_char.h:101
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type gsl_spmatrix_char is record
      size1 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_char.h:67
      size2 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_char.h:68
      i : access int;  -- /usr/include/gsl/gsl_spmatrix_char.h:75
      data : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gsl/gsl_spmatrix_char.h:77
      p : access int;  -- /usr/include/gsl/gsl_spmatrix_char.h:84
      nzmax : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_char.h:86
      nz : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_char.h:87
      tree : access gsl_gsl_bst_h.gsl_bst_workspace;  -- /usr/include/gsl/gsl_spmatrix_char.h:89
      node_size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_char.h:91
      work : aliased anon_anon_87;  -- /usr/include/gsl/gsl_spmatrix_char.h:102
      sptype : aliased int;  -- /usr/include/gsl/gsl_spmatrix_char.h:104
      spflags : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_spmatrix_char.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_spmatrix_char.h:106

   function gsl_spmatrix_char_alloc (n1 : stddef_h.size_t; n2 : stddef_h.size_t) return access gsl_spmatrix_char  -- /usr/include/gsl/gsl_spmatrix_char.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_alloc";

   function gsl_spmatrix_char_alloc_nzmax
     (n1 : stddef_h.size_t;
      n2 : stddef_h.size_t;
      nzmax : stddef_h.size_t;
      sptype : int) return access gsl_spmatrix_char  -- /usr/include/gsl/gsl_spmatrix_char.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_alloc_nzmax";

   procedure gsl_spmatrix_char_free (m : access gsl_spmatrix_char)  -- /usr/include/gsl/gsl_spmatrix_char.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_free";

   function gsl_spmatrix_char_realloc (nzmax : stddef_h.size_t; m : access gsl_spmatrix_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_realloc";

   function gsl_spmatrix_char_nnz (m : access constant gsl_spmatrix_char) return stddef_h.size_t  -- /usr/include/gsl/gsl_spmatrix_char.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_nnz";

   function gsl_spmatrix_char_type (m : access constant gsl_spmatrix_char) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_spmatrix_char.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_type";

   function gsl_spmatrix_char_set_zero (m : access gsl_spmatrix_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_set_zero";

   function gsl_spmatrix_char_tree_rebuild (m : access gsl_spmatrix_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_tree_rebuild";

   function gsl_spmatrix_char_csc (dest : access gsl_spmatrix_char; src : access constant gsl_spmatrix_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_csc";

   function gsl_spmatrix_char_csr (dest : access gsl_spmatrix_char; src : access constant gsl_spmatrix_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_csr";

   function gsl_spmatrix_char_compress (src : access constant gsl_spmatrix_char; sptype : int) return access gsl_spmatrix_char  -- /usr/include/gsl/gsl_spmatrix_char.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_compress";

   function gsl_spmatrix_char_compcol (src : access constant gsl_spmatrix_char) return access gsl_spmatrix_char  -- /usr/include/gsl/gsl_spmatrix_char.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_compcol";

   function gsl_spmatrix_char_ccs (src : access constant gsl_spmatrix_char) return access gsl_spmatrix_char  -- /usr/include/gsl/gsl_spmatrix_char.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_ccs";

   function gsl_spmatrix_char_crs (src : access constant gsl_spmatrix_char) return access gsl_spmatrix_char  -- /usr/include/gsl/gsl_spmatrix_char.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_crs";

   function gsl_spmatrix_char_memcpy (dest : access gsl_spmatrix_char; src : access constant gsl_spmatrix_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_memcpy";

   function gsl_spmatrix_char_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      m : access constant gsl_spmatrix_char;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_fprintf";

   function gsl_spmatrix_char_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE) return access gsl_spmatrix_char  -- /usr/include/gsl/gsl_spmatrix_char.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_fscanf";

   function gsl_spmatrix_char_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access constant gsl_spmatrix_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_fwrite";

   function gsl_spmatrix_char_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access gsl_spmatrix_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_fread";

   function gsl_spmatrix_char_get
     (m : access constant gsl_spmatrix_char;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return char  -- /usr/include/gsl/gsl_spmatrix_char.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_get";

   function gsl_spmatrix_char_set
     (m : access gsl_spmatrix_char;
      i : stddef_h.size_t;
      j : stddef_h.size_t;
      x : char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_set";

   function gsl_spmatrix_char_ptr
     (m : access constant gsl_spmatrix_char;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/gsl/gsl_spmatrix_char.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_ptr";

   function gsl_spmatrix_char_minmax
     (m : access constant gsl_spmatrix_char;
      min_out : Interfaces.C.Strings.chars_ptr;
      max_out : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_minmax";

   function gsl_spmatrix_char_min_index
     (m : access constant gsl_spmatrix_char;
      imin_out : access stddef_h.size_t;
      jmin_out : access stddef_h.size_t) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_min_index";

   function gsl_spmatrix_char_scale (m : access gsl_spmatrix_char; x : char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_scale";

   function gsl_spmatrix_char_scale_columns (m : access gsl_spmatrix_char; x : access constant gsl_gsl_vector_char_h.gsl_vector_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_scale_columns";

   function gsl_spmatrix_char_scale_rows (m : access gsl_spmatrix_char; x : access constant gsl_gsl_vector_char_h.gsl_vector_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_scale_rows";

   function gsl_spmatrix_char_add
     (c : access gsl_spmatrix_char;
      a : access constant gsl_spmatrix_char;
      b : access constant gsl_spmatrix_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_add";

   function gsl_spmatrix_char_dense_add (a : access gsl_gsl_matrix_char_h.gsl_matrix_char; b : access constant gsl_spmatrix_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_dense_add";

   function gsl_spmatrix_char_dense_sub (a : access gsl_gsl_matrix_char_h.gsl_matrix_char; b : access constant gsl_spmatrix_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_dense_sub";

   function gsl_spmatrix_char_d2sp (T : access gsl_spmatrix_char; A : access constant gsl_gsl_matrix_char_h.gsl_matrix_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_d2sp";

   function gsl_spmatrix_char_sp2d (A : access gsl_gsl_matrix_char_h.gsl_matrix_char; S : access constant gsl_spmatrix_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_sp2d";

   function gsl_spmatrix_char_add_to_dense (a : access gsl_gsl_matrix_char_h.gsl_matrix_char; b : access constant gsl_spmatrix_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_add_to_dense";

   function gsl_spmatrix_char_equal (a : access constant gsl_spmatrix_char; b : access constant gsl_spmatrix_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_equal";

   function gsl_spmatrix_char_norm1 (a : access constant gsl_spmatrix_char) return char  -- /usr/include/gsl/gsl_spmatrix_char.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_norm1";

   function gsl_spmatrix_char_transpose (m : access gsl_spmatrix_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_transpose";

   function gsl_spmatrix_char_transpose2 (m : access gsl_spmatrix_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_transpose2";

   function gsl_spmatrix_char_transpose_memcpy (dest : access gsl_spmatrix_char; src : access constant gsl_spmatrix_char) return int  -- /usr/include/gsl/gsl_spmatrix_char.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_spmatrix_char_transpose_memcpy";

end gsl_gsl_spmatrix_char_h;
