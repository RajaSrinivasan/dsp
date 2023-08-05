pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with gsl_gsl_block_long_double_h;
with gsl_gsl_vector_long_double_h;
limited with aarch64_linux_gnu_bits_types_FILE_h;
with Interfaces.C.Strings;
with gsl_gsl_blas_types_h;

package gsl_gsl_matrix_long_double_h is

   --  skipped anonymous struct anon_anon_83

   type gsl_matrix_long_double is record
      size1 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_matrix_long_double.h:45
      size2 : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_matrix_long_double.h:46
      tda : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_matrix_long_double.h:47
      data : access long_double;  -- /usr/include/gsl/gsl_matrix_long_double.h:48
      block : access gsl_gsl_block_long_double_h.gsl_block_long_double;  -- /usr/include/gsl/gsl_matrix_long_double.h:49
      owner : aliased int;  -- /usr/include/gsl/gsl_matrix_long_double.h:50
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_long_double.h:51

   --  skipped anonymous struct anon_anon_84

   type u_gsl_matrix_long_double_view is record
      matrix : aliased gsl_matrix_long_double;  -- /usr/include/gsl/gsl_matrix_long_double.h:55
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_long_double.h:56

   subtype gsl_matrix_long_double_view is u_gsl_matrix_long_double_view;  -- /usr/include/gsl/gsl_matrix_long_double.h:58

   --  skipped anonymous struct anon_anon_85

   type u_gsl_matrix_long_double_const_view is record
      matrix : aliased gsl_matrix_long_double;  -- /usr/include/gsl/gsl_matrix_long_double.h:62
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_matrix_long_double.h:63

   subtype gsl_matrix_long_double_const_view is u_gsl_matrix_long_double_const_view;  -- /usr/include/gsl/gsl_matrix_long_double.h:65

   function gsl_matrix_long_double_alloc (n1 : stddef_h.size_t; n2 : stddef_h.size_t) return access gsl_matrix_long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_alloc";

   function gsl_matrix_long_double_calloc (n1 : stddef_h.size_t; n2 : stddef_h.size_t) return access gsl_matrix_long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_calloc";

   function gsl_matrix_long_double_alloc_from_block
     (b : access gsl_gsl_block_long_double_h.gsl_block_long_double;
      offset : stddef_h.size_t;
      n1 : stddef_h.size_t;
      n2 : stddef_h.size_t;
      d2 : stddef_h.size_t) return access gsl_matrix_long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_alloc_from_block";

   function gsl_matrix_long_double_alloc_from_matrix
     (m : access gsl_matrix_long_double;
      k1 : stddef_h.size_t;
      k2 : stddef_h.size_t;
      n1 : stddef_h.size_t;
      n2 : stddef_h.size_t) return access gsl_matrix_long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_alloc_from_matrix";

   function gsl_vector_long_double_alloc_row_from_matrix (m : access gsl_matrix_long_double; i : stddef_h.size_t) return access gsl_gsl_vector_long_double_h.gsl_vector_long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_double_alloc_row_from_matrix";

   function gsl_vector_long_double_alloc_col_from_matrix (m : access gsl_matrix_long_double; j : stddef_h.size_t) return access gsl_gsl_vector_long_double_h.gsl_vector_long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_vector_long_double_alloc_col_from_matrix";

   procedure gsl_matrix_long_double_free (m : access gsl_matrix_long_double)  -- /usr/include/gsl/gsl_matrix_long_double.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_free";

   function gsl_matrix_long_double_submatrix
     (m : access gsl_matrix_long_double;
      i : stddef_h.size_t;
      j : stddef_h.size_t;
      n1 : stddef_h.size_t;
      n2 : stddef_h.size_t) return u_gsl_matrix_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_submatrix";

   function gsl_matrix_long_double_row (m : access gsl_matrix_long_double; i : stddef_h.size_t) return gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_row";

   function gsl_matrix_long_double_column (m : access gsl_matrix_long_double; j : stddef_h.size_t) return gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_column";

   function gsl_matrix_long_double_diagonal (m : access gsl_matrix_long_double) return gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_diagonal";

   function gsl_matrix_long_double_subdiagonal (m : access gsl_matrix_long_double; k : stddef_h.size_t) return gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_subdiagonal";

   function gsl_matrix_long_double_superdiagonal (m : access gsl_matrix_long_double; k : stddef_h.size_t) return gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_superdiagonal";

   function gsl_matrix_long_double_subrow
     (m : access gsl_matrix_long_double;
      i : stddef_h.size_t;
      offset : stddef_h.size_t;
      n : stddef_h.size_t) return gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_subrow";

   function gsl_matrix_long_double_subcolumn
     (m : access gsl_matrix_long_double;
      j : stddef_h.size_t;
      offset : stddef_h.size_t;
      n : stddef_h.size_t) return gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_subcolumn";

   function gsl_matrix_long_double_view_array
     (base : access long_double;
      n1 : stddef_h.size_t;
      n2 : stddef_h.size_t) return u_gsl_matrix_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_view_array";

   function gsl_matrix_long_double_view_array_with_tda
     (base : access long_double;
      n1 : stddef_h.size_t;
      n2 : stddef_h.size_t;
      tda : stddef_h.size_t) return u_gsl_matrix_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_view_array_with_tda";

   function gsl_matrix_long_double_view_vector
     (v : access gsl_gsl_vector_long_double_h.gsl_vector_long_double;
      n1 : stddef_h.size_t;
      n2 : stddef_h.size_t) return u_gsl_matrix_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_view_vector";

   function gsl_matrix_long_double_view_vector_with_tda
     (v : access gsl_gsl_vector_long_double_h.gsl_vector_long_double;
      n1 : stddef_h.size_t;
      n2 : stddef_h.size_t;
      tda : stddef_h.size_t) return u_gsl_matrix_long_double_view  -- /usr/include/gsl/gsl_matrix_long_double.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_view_vector_with_tda";

   function gsl_matrix_long_double_const_submatrix
     (m : access constant gsl_matrix_long_double;
      i : stddef_h.size_t;
      j : stddef_h.size_t;
      n1 : stddef_h.size_t;
      n2 : stddef_h.size_t) return u_gsl_matrix_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_submatrix";

   function gsl_matrix_long_double_const_row (m : access constant gsl_matrix_long_double; i : stddef_h.size_t) return gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_row";

   function gsl_matrix_long_double_const_column (m : access constant gsl_matrix_long_double; j : stddef_h.size_t) return gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_column";

   function gsl_matrix_long_double_const_diagonal (m : access constant gsl_matrix_long_double) return gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_diagonal";

   function gsl_matrix_long_double_const_subdiagonal (m : access constant gsl_matrix_long_double; k : stddef_h.size_t) return gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_subdiagonal";

   function gsl_matrix_long_double_const_superdiagonal (m : access constant gsl_matrix_long_double; k : stddef_h.size_t) return gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_superdiagonal";

   function gsl_matrix_long_double_const_subrow
     (m : access constant gsl_matrix_long_double;
      i : stddef_h.size_t;
      offset : stddef_h.size_t;
      n : stddef_h.size_t) return gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_subrow";

   function gsl_matrix_long_double_const_subcolumn
     (m : access constant gsl_matrix_long_double;
      j : stddef_h.size_t;
      offset : stddef_h.size_t;
      n : stddef_h.size_t) return gsl_gsl_vector_long_double_h.u_gsl_vector_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_subcolumn";

   function gsl_matrix_long_double_const_view_array
     (base : access long_double;
      n1 : stddef_h.size_t;
      n2 : stddef_h.size_t) return u_gsl_matrix_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_view_array";

   function gsl_matrix_long_double_const_view_array_with_tda
     (base : access long_double;
      n1 : stddef_h.size_t;
      n2 : stddef_h.size_t;
      tda : stddef_h.size_t) return u_gsl_matrix_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_view_array_with_tda";

   function gsl_matrix_long_double_const_view_vector
     (v : access constant gsl_gsl_vector_long_double_h.gsl_vector_long_double;
      n1 : stddef_h.size_t;
      n2 : stddef_h.size_t) return u_gsl_matrix_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_view_vector";

   function gsl_matrix_long_double_const_view_vector_with_tda
     (v : access constant gsl_gsl_vector_long_double_h.gsl_vector_long_double;
      n1 : stddef_h.size_t;
      n2 : stddef_h.size_t;
      tda : stddef_h.size_t) return u_gsl_matrix_long_double_const_view  -- /usr/include/gsl/gsl_matrix_long_double.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_view_vector_with_tda";

   procedure gsl_matrix_long_double_set_zero (m : access gsl_matrix_long_double)  -- /usr/include/gsl/gsl_matrix_long_double.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_set_zero";

   procedure gsl_matrix_long_double_set_identity (m : access gsl_matrix_long_double)  -- /usr/include/gsl/gsl_matrix_long_double.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_set_identity";

   procedure gsl_matrix_long_double_set_all (m : access gsl_matrix_long_double; x : long_double)  -- /usr/include/gsl/gsl_matrix_long_double.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_set_all";

   function gsl_matrix_long_double_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_fread";

   function gsl_matrix_long_double_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_fwrite";

   function gsl_matrix_long_double_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; m : access gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_fscanf";

   function gsl_matrix_long_double_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      m : access constant gsl_matrix_long_double;
      format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_fprintf";

   function gsl_matrix_long_double_memcpy (dest : access gsl_matrix_long_double; src : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_memcpy";

   function gsl_matrix_long_double_swap (m1 : access gsl_matrix_long_double; m2 : access gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_swap";

   function gsl_matrix_long_double_tricpy
     (Uplo : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      dest : access gsl_matrix_long_double;
      src : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_tricpy";

   function gsl_matrix_long_double_swap_rows
     (m : access gsl_matrix_long_double;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_swap_rows";

   function gsl_matrix_long_double_swap_columns
     (m : access gsl_matrix_long_double;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_swap_columns";

   function gsl_matrix_long_double_swap_rowcol
     (m : access gsl_matrix_long_double;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_swap_rowcol";

   function gsl_matrix_long_double_transpose (m : access gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_transpose";

   function gsl_matrix_long_double_transpose_memcpy (dest : access gsl_matrix_long_double; src : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_transpose_memcpy";

   function gsl_matrix_long_double_transpose_tricpy
     (Uplo_src : gsl_gsl_blas_types_h.CBLAS_UPLO_t;
      Diag : gsl_gsl_blas_types_h.CBLAS_DIAG_t;
      dest : access gsl_matrix_long_double;
      src : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_transpose_tricpy";

   function gsl_matrix_long_double_max (m : access constant gsl_matrix_long_double) return long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_max";

   function gsl_matrix_long_double_min (m : access constant gsl_matrix_long_double) return long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_min";

   procedure gsl_matrix_long_double_minmax
     (m : access constant gsl_matrix_long_double;
      min_out : access long_double;
      max_out : access long_double)  -- /usr/include/gsl/gsl_matrix_long_double.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_minmax";

   procedure gsl_matrix_long_double_max_index
     (m : access constant gsl_matrix_long_double;
      imax : access stddef_h.size_t;
      jmax : access stddef_h.size_t)  -- /usr/include/gsl/gsl_matrix_long_double.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_max_index";

   procedure gsl_matrix_long_double_min_index
     (m : access constant gsl_matrix_long_double;
      imin : access stddef_h.size_t;
      jmin : access stddef_h.size_t)  -- /usr/include/gsl/gsl_matrix_long_double.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_min_index";

   procedure gsl_matrix_long_double_minmax_index
     (m : access constant gsl_matrix_long_double;
      imin : access stddef_h.size_t;
      jmin : access stddef_h.size_t;
      imax : access stddef_h.size_t;
      jmax : access stddef_h.size_t)  -- /usr/include/gsl/gsl_matrix_long_double.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_minmax_index";

   function gsl_matrix_long_double_equal (a : access constant gsl_matrix_long_double; b : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_equal";

   function gsl_matrix_long_double_isnull (m : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_isnull";

   function gsl_matrix_long_double_ispos (m : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_ispos";

   function gsl_matrix_long_double_isneg (m : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_isneg";

   function gsl_matrix_long_double_isnonneg (m : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:242
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_isnonneg";

   function gsl_matrix_long_double_norm1 (m : access constant gsl_matrix_long_double) return long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_norm1";

   function gsl_matrix_long_double_add (a : access gsl_matrix_long_double; b : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_add";

   function gsl_matrix_long_double_sub (a : access gsl_matrix_long_double; b : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_sub";

   function gsl_matrix_long_double_mul_elements (a : access gsl_matrix_long_double; b : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_mul_elements";

   function gsl_matrix_long_double_div_elements (a : access gsl_matrix_long_double; b : access constant gsl_matrix_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_div_elements";

   function gsl_matrix_long_double_scale (a : access gsl_matrix_long_double; x : long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_scale";

   function gsl_matrix_long_double_scale_rows (a : access gsl_matrix_long_double; x : access constant gsl_gsl_vector_long_double_h.gsl_vector_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:251
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_scale_rows";

   function gsl_matrix_long_double_scale_columns (a : access gsl_matrix_long_double; x : access constant gsl_gsl_vector_long_double_h.gsl_vector_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_scale_columns";

   function gsl_matrix_long_double_add_constant (a : access gsl_matrix_long_double; x : long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_add_constant";

   function gsl_matrix_long_double_add_diagonal (a : access gsl_matrix_long_double; x : long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_add_diagonal";

   function gsl_matrix_long_double_get_row
     (v : access gsl_gsl_vector_long_double_h.gsl_vector_long_double;
      m : access constant gsl_matrix_long_double;
      i : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_get_row";

   function gsl_matrix_long_double_get_col
     (v : access gsl_gsl_vector_long_double_h.gsl_vector_long_double;
      m : access constant gsl_matrix_long_double;
      j : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_get_col";

   function gsl_matrix_long_double_set_row
     (m : access gsl_matrix_long_double;
      i : stddef_h.size_t;
      v : access constant gsl_gsl_vector_long_double_h.gsl_vector_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_set_row";

   function gsl_matrix_long_double_set_col
     (m : access gsl_matrix_long_double;
      j : stddef_h.size_t;
      v : access constant gsl_gsl_vector_long_double_h.gsl_vector_long_double) return int  -- /usr/include/gsl/gsl_matrix_long_double.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_set_col";

   function gsl_matrix_long_double_get
     (m : access constant gsl_matrix_long_double;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:267
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_get";

   procedure gsl_matrix_long_double_set
     (m : access gsl_matrix_long_double;
      i : stddef_h.size_t;
      j : stddef_h.size_t;
      x : long_double)  -- /usr/include/gsl/gsl_matrix_long_double.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_set";

   function gsl_matrix_long_double_ptr
     (m : access gsl_matrix_long_double;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return access long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_ptr";

   function gsl_matrix_long_double_const_ptr
     (m : access constant gsl_matrix_long_double;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return access long_double  -- /usr/include/gsl/gsl_matrix_long_double.h:270
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_matrix_long_double_const_ptr";

end gsl_gsl_matrix_long_double_h;
