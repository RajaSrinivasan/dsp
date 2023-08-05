pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with gsl_gsl_complex_h;
limited with gsl_gsl_fft_real_float_h;

package gsl_gsl_fft_halfcomplex_float_h is

   function gsl_fft_halfcomplex_float_radix2_backward
     (data : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_float_radix2_backward";

   function gsl_fft_halfcomplex_float_radix2_inverse
     (data : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_float_radix2_inverse";

   function gsl_fft_halfcomplex_float_radix2_transform
     (data : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_float_radix2_transform";

   --  skipped anonymous struct anon_anon_73

   type gsl_fft_halfcomplex_wavetable_float_array10115 is array (0 .. 63) of aliased stddef_h.size_t;
   type gsl_fft_halfcomplex_wavetable_float_array10117 is array (0 .. 63) of access gsl_gsl_complex_h.gsl_complex_float;
   type gsl_fft_halfcomplex_wavetable_float is record
      n : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:48
      nf : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:49
      factor : aliased gsl_fft_halfcomplex_wavetable_float_array10115;  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:50
      twiddle : gsl_fft_halfcomplex_wavetable_float_array10117;  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:51
      trig : access gsl_gsl_complex_h.gsl_complex_float;  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:52
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:54

   function gsl_fft_halfcomplex_wavetable_float_alloc (n : stddef_h.size_t) return access gsl_fft_halfcomplex_wavetable_float  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_wavetable_float_alloc";

   procedure gsl_fft_halfcomplex_wavetable_float_free (wavetable : access gsl_fft_halfcomplex_wavetable_float)  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_wavetable_float_free";

   function gsl_fft_halfcomplex_float_backward
     (data : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      wavetable : access constant gsl_fft_halfcomplex_wavetable_float;
      work : access gsl_gsl_fft_real_float_h.gsl_fft_real_workspace_float) return int  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_float_backward";

   function gsl_fft_halfcomplex_float_inverse
     (data : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      wavetable : access constant gsl_fft_halfcomplex_wavetable_float;
      work : access gsl_gsl_fft_real_float_h.gsl_fft_real_workspace_float) return int  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_float_inverse";

   function gsl_fft_halfcomplex_float_transform
     (data : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      wavetable : access constant gsl_fft_halfcomplex_wavetable_float;
      work : access gsl_gsl_fft_real_float_h.gsl_fft_real_workspace_float) return int  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_float_transform";

   function gsl_fft_halfcomplex_float_unpack
     (halfcomplex_coefficient : access float;
      complex_coefficient : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_float_unpack";

   function gsl_fft_halfcomplex_float_radix2_unpack
     (halfcomplex_coefficient : access float;
      complex_coefficient : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_halfcomplex_float.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_halfcomplex_float_radix2_unpack";

end gsl_gsl_fft_halfcomplex_float_h;
