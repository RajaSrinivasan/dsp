pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with aarch64_linux_gnu_bits_types_FILE_h;
with Interfaces.C.Strings;

package gsl_gsl_histogram2d_h is

   --  skipped anonymous struct anon_anon_19

   type gsl_histogram2d is record
      nx : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_histogram2d.h:39
      ny : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_histogram2d.h:39
      xrange : access double;  -- /usr/include/gsl/gsl_histogram2d.h:40
      yrange : access double;  -- /usr/include/gsl/gsl_histogram2d.h:41
      bin : access double;  -- /usr/include/gsl/gsl_histogram2d.h:42
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_histogram2d.h:43

   --  skipped anonymous struct anon_anon_20

   type gsl_histogram2d_pdf is record
      nx : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_histogram2d.h:46
      ny : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_histogram2d.h:46
      xrange : access double;  -- /usr/include/gsl/gsl_histogram2d.h:47
      yrange : access double;  -- /usr/include/gsl/gsl_histogram2d.h:48
      sum : access double;  -- /usr/include/gsl/gsl_histogram2d.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_histogram2d.h:50

   function gsl_histogram2d_alloc (nx : stddef_h.size_t; ny : stddef_h.size_t) return access gsl_histogram2d  -- /usr/include/gsl/gsl_histogram2d.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_alloc";

   function gsl_histogram2d_calloc (nx : stddef_h.size_t; ny : stddef_h.size_t) return access gsl_histogram2d  -- /usr/include/gsl/gsl_histogram2d.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_calloc";

   function gsl_histogram2d_calloc_uniform
     (nx : stddef_h.size_t;
      ny : stddef_h.size_t;
      xmin : double;
      xmax : double;
      ymin : double;
      ymax : double) return access gsl_histogram2d  -- /usr/include/gsl/gsl_histogram2d.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_calloc_uniform";

   procedure gsl_histogram2d_free (h : access gsl_histogram2d)  -- /usr/include/gsl/gsl_histogram2d.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_free";

   function gsl_histogram2d_increment
     (h : access gsl_histogram2d;
      x : double;
      y : double) return int  -- /usr/include/gsl/gsl_histogram2d.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_increment";

   function gsl_histogram2d_accumulate
     (h : access gsl_histogram2d;
      x : double;
      y : double;
      weight : double) return int  -- /usr/include/gsl/gsl_histogram2d.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_accumulate";

   function gsl_histogram2d_find
     (h : access constant gsl_histogram2d;
      x : double;
      y : double;
      i : access stddef_h.size_t;
      j : access stddef_h.size_t) return int  -- /usr/include/gsl/gsl_histogram2d.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_find";

   function gsl_histogram2d_get
     (h : access constant gsl_histogram2d;
      i : stddef_h.size_t;
      j : stddef_h.size_t) return double  -- /usr/include/gsl/gsl_histogram2d.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_get";

   function gsl_histogram2d_get_xrange
     (h : access constant gsl_histogram2d;
      i : stddef_h.size_t;
      xlower : access double;
      xupper : access double) return int  -- /usr/include/gsl/gsl_histogram2d.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_get_xrange";

   function gsl_histogram2d_get_yrange
     (h : access constant gsl_histogram2d;
      j : stddef_h.size_t;
      ylower : access double;
      yupper : access double) return int  -- /usr/include/gsl/gsl_histogram2d.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_get_yrange";

   function gsl_histogram2d_xmax (h : access constant gsl_histogram2d) return double  -- /usr/include/gsl/gsl_histogram2d.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_xmax";

   function gsl_histogram2d_xmin (h : access constant gsl_histogram2d) return double  -- /usr/include/gsl/gsl_histogram2d.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_xmin";

   function gsl_histogram2d_nx (h : access constant gsl_histogram2d) return stddef_h.size_t  -- /usr/include/gsl/gsl_histogram2d.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_nx";

   function gsl_histogram2d_ymax (h : access constant gsl_histogram2d) return double  -- /usr/include/gsl/gsl_histogram2d.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_ymax";

   function gsl_histogram2d_ymin (h : access constant gsl_histogram2d) return double  -- /usr/include/gsl/gsl_histogram2d.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_ymin";

   function gsl_histogram2d_ny (h : access constant gsl_histogram2d) return stddef_h.size_t  -- /usr/include/gsl/gsl_histogram2d.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_ny";

   procedure gsl_histogram2d_reset (h : access gsl_histogram2d)  -- /usr/include/gsl/gsl_histogram2d.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_reset";

   function gsl_histogram2d_calloc_range
     (nx : stddef_h.size_t;
      ny : stddef_h.size_t;
      xrange : access double;
      yrange : access double) return access gsl_histogram2d  -- /usr/include/gsl/gsl_histogram2d.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_calloc_range";

   function gsl_histogram2d_set_ranges_uniform
     (h : access gsl_histogram2d;
      xmin : double;
      xmax : double;
      ymin : double;
      ymax : double) return int  -- /usr/include/gsl/gsl_histogram2d.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_set_ranges_uniform";

   function gsl_histogram2d_set_ranges
     (h : access gsl_histogram2d;
      xrange : access double;
      xsize : stddef_h.size_t;
      yrange : access double;
      ysize : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_histogram2d.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_set_ranges";

   function gsl_histogram2d_memcpy (dest : access gsl_histogram2d; source : access constant gsl_histogram2d) return int  -- /usr/include/gsl/gsl_histogram2d.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_memcpy";

   function gsl_histogram2d_clone (source : access constant gsl_histogram2d) return access gsl_histogram2d  -- /usr/include/gsl/gsl_histogram2d.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_clone";

   function gsl_histogram2d_max_val (h : access constant gsl_histogram2d) return double  -- /usr/include/gsl/gsl_histogram2d.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_max_val";

   procedure gsl_histogram2d_max_bin
     (h : access constant gsl_histogram2d;
      i : access stddef_h.size_t;
      j : access stddef_h.size_t)  -- /usr/include/gsl/gsl_histogram2d.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_max_bin";

   function gsl_histogram2d_min_val (h : access constant gsl_histogram2d) return double  -- /usr/include/gsl/gsl_histogram2d.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_min_val";

   procedure gsl_histogram2d_min_bin
     (h : access constant gsl_histogram2d;
      i : access stddef_h.size_t;
      j : access stddef_h.size_t)  -- /usr/include/gsl/gsl_histogram2d.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_min_bin";

   function gsl_histogram2d_xmean (h : access constant gsl_histogram2d) return double  -- /usr/include/gsl/gsl_histogram2d.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_xmean";

   function gsl_histogram2d_ymean (h : access constant gsl_histogram2d) return double  -- /usr/include/gsl/gsl_histogram2d.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_ymean";

   function gsl_histogram2d_xsigma (h : access constant gsl_histogram2d) return double  -- /usr/include/gsl/gsl_histogram2d.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_xsigma";

   function gsl_histogram2d_ysigma (h : access constant gsl_histogram2d) return double  -- /usr/include/gsl/gsl_histogram2d.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_ysigma";

   function gsl_histogram2d_cov (h : access constant gsl_histogram2d) return double  -- /usr/include/gsl/gsl_histogram2d.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_cov";

   function gsl_histogram2d_sum (h : access constant gsl_histogram2d) return double  -- /usr/include/gsl/gsl_histogram2d.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_sum";

   function gsl_histogram2d_equal_bins_p (h1 : access constant gsl_histogram2d; h2 : access constant gsl_histogram2d) return int  -- /usr/include/gsl/gsl_histogram2d.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_equal_bins_p";

   function gsl_histogram2d_add (h1 : access gsl_histogram2d; h2 : access constant gsl_histogram2d) return int  -- /usr/include/gsl/gsl_histogram2d.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_add";

   function gsl_histogram2d_sub (h1 : access gsl_histogram2d; h2 : access constant gsl_histogram2d) return int  -- /usr/include/gsl/gsl_histogram2d.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_sub";

   function gsl_histogram2d_mul (h1 : access gsl_histogram2d; h2 : access constant gsl_histogram2d) return int  -- /usr/include/gsl/gsl_histogram2d.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_mul";

   function gsl_histogram2d_div (h1 : access gsl_histogram2d; h2 : access constant gsl_histogram2d) return int  -- /usr/include/gsl/gsl_histogram2d.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_div";

   function gsl_histogram2d_scale (h : access gsl_histogram2d; scale : double) return int  -- /usr/include/gsl/gsl_histogram2d.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_scale";

   function gsl_histogram2d_shift (h : access gsl_histogram2d; shift : double) return int  -- /usr/include/gsl/gsl_histogram2d.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_shift";

   function gsl_histogram2d_fwrite (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; h : access constant gsl_histogram2d) return int  -- /usr/include/gsl/gsl_histogram2d.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_fwrite";

   function gsl_histogram2d_fread (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; h : access gsl_histogram2d) return int  -- /usr/include/gsl/gsl_histogram2d.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_fread";

   function gsl_histogram2d_fprintf
     (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE;
      h : access constant gsl_histogram2d;
      range_format : Interfaces.C.Strings.chars_ptr;
      bin_format : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/gsl/gsl_histogram2d.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_fprintf";

   function gsl_histogram2d_fscanf (stream : access aarch64_linux_gnu_bits_types_FILE_h.FILE; h : access gsl_histogram2d) return int  -- /usr/include/gsl/gsl_histogram2d.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_fscanf";

   function gsl_histogram2d_pdf_alloc (nx : stddef_h.size_t; ny : stddef_h.size_t) return access gsl_histogram2d_pdf  -- /usr/include/gsl/gsl_histogram2d.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_pdf_alloc";

   function gsl_histogram2d_pdf_init (p : access gsl_histogram2d_pdf; h : access constant gsl_histogram2d) return int  -- /usr/include/gsl/gsl_histogram2d.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_pdf_init";

   procedure gsl_histogram2d_pdf_free (p : access gsl_histogram2d_pdf)  -- /usr/include/gsl/gsl_histogram2d.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_pdf_free";

   function gsl_histogram2d_pdf_sample
     (p : access constant gsl_histogram2d_pdf;
      r1 : double;
      r2 : double;
      x : access double;
      y : access double) return int  -- /usr/include/gsl/gsl_histogram2d.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_histogram2d_pdf_sample";

end gsl_gsl_histogram2d_h;
