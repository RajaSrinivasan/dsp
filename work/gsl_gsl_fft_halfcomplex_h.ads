pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with gsl_gsl_complex_h;
limited with gsl_gsl_fft_real_h;

package gsl_gsl_fft_halfcomplex_h is

   function gsl_fft_halfcomplex_radix2_backward
     (data : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_radix2_backward";

   function gsl_fft_halfcomplex_radix2_inverse
     (data : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_radix2_inverse";

   function gsl_fft_halfcomplex_radix2_transform
     (data : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_radix2_transform";

   --  skipped anonymous struct anon_anon_73

   type gsl_fft_halfcomplex_wavetable_array10114 is array (0 .. 63) of aliased stddef_h.size_t;
   type gsl_fft_halfcomplex_wavetable_array10116 is array (0 .. 63) of access gsl_gsl_complex_h.gsl_complex;
   type gsl_fft_halfcomplex_wavetable is record
      n : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_fft_halfcomplex.h:48
      nf : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_fft_halfcomplex.h:49
      factor : aliased gsl_fft_halfcomplex_wavetable_array10114;  -- /usr/include/gsl/gsl_fft_halfcomplex.h:50
      twiddle : gsl_fft_halfcomplex_wavetable_array10116;  -- /usr/include/gsl/gsl_fft_halfcomplex.h:51
      trig : access gsl_gsl_complex_h.gsl_complex;  -- /usr/include/gsl/gsl_fft_halfcomplex.h:52
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_fft_halfcomplex.h:54

   function gsl_fft_halfcomplex_wavetable_alloc (n : stddef_h.size_t) return access gsl_fft_halfcomplex_wavetable  -- /usr/include/gsl/gsl_fft_halfcomplex.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_wavetable_alloc";

   procedure gsl_fft_halfcomplex_wavetable_free (wavetable : access gsl_fft_halfcomplex_wavetable)  -- /usr/include/gsl/gsl_fft_halfcomplex.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_wavetable_free";

   function gsl_fft_halfcomplex_backward
     (data : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      wavetable : access constant gsl_fft_halfcomplex_wavetable;
      work : access gsl_gsl_fft_real_h.gsl_fft_real_workspace) return int  -- /usr/include/gsl/gsl_fft_halfcomplex.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_backward";

   function gsl_fft_halfcomplex_inverse
     (data : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      wavetable : access constant gsl_fft_halfcomplex_wavetable;
      work : access gsl_gsl_fft_real_h.gsl_fft_real_workspace) return int  -- /usr/include/gsl/gsl_fft_halfcomplex.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_inverse";

   function gsl_fft_halfcomplex_transform
     (data : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      wavetable : access constant gsl_fft_halfcomplex_wavetable;
      work : access gsl_gsl_fft_real_h.gsl_fft_real_workspace) return int  -- /usr/include/gsl/gsl_fft_halfcomplex.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_transform";

   function gsl_fft_halfcomplex_unpack
     (halfcomplex_coefficient : access double;
      complex_coefficient : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_unpack";

   function gsl_fft_halfcomplex_radix2_unpack
     (halfcomplex_coefficient : access double;
      complex_coefficient : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_radix2_unpack";

end gsl_gsl_fft_halfcomplex_h;
