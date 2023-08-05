pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with gsl_gsl_complex_h;

package gsl_gsl_fft_real_float_h is

   function gsl_fft_real_float_radix2_transform
     (data : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_real_float.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_float_radix2_transform";

   --  skipped anonymous struct anon_anon_71

   type gsl_fft_real_wavetable_float_array10115 is array (0 .. 63) of aliased stddef_h.size_t;
   type gsl_fft_real_wavetable_float_array10117 is array (0 .. 63) of access gsl_gsl_complex_h.gsl_complex_float;
   type gsl_fft_real_wavetable_float is record
      n : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_fft_real_float.h:45
      nf : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_fft_real_float.h:46
      factor : aliased gsl_fft_real_wavetable_float_array10115;  -- /usr/include/gsl/gsl_fft_real_float.h:47
      twiddle : gsl_fft_real_wavetable_float_array10117;  -- /usr/include/gsl/gsl_fft_real_float.h:48
      trig : access gsl_gsl_complex_h.gsl_complex_float;  -- /usr/include/gsl/gsl_fft_real_float.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_fft_real_float.h:51

   --  skipped anonymous struct anon_anon_72

   type gsl_fft_real_workspace_float is record
      n : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_fft_real_float.h:55
      scratch : access float;  -- /usr/include/gsl/gsl_fft_real_float.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_fft_real_float.h:58

   function gsl_fft_real_wavetable_float_alloc (n : stddef_h.size_t) return access gsl_fft_real_wavetable_float  -- /usr/include/gsl/gsl_fft_real_float.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_wavetable_float_alloc";

   procedure gsl_fft_real_wavetable_float_free (wavetable : access gsl_fft_real_wavetable_float)  -- /usr/include/gsl/gsl_fft_real_float.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_wavetable_float_free";

   function gsl_fft_real_workspace_float_alloc (n : stddef_h.size_t) return access gsl_fft_real_workspace_float  -- /usr/include/gsl/gsl_fft_real_float.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_workspace_float_alloc";

   procedure gsl_fft_real_workspace_float_free (workspace : access gsl_fft_real_workspace_float)  -- /usr/include/gsl/gsl_fft_real_float.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_workspace_float_free";

   function gsl_fft_real_float_transform
     (data : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      wavetable : access constant gsl_fft_real_wavetable_float;
      work : access gsl_fft_real_workspace_float) return int  -- /usr/include/gsl/gsl_fft_real_float.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_float_transform";

   function gsl_fft_real_float_unpack
     (real_float_coefficient : access float;
      complex_coefficient : access float;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_real_float.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_float_unpack";

end gsl_gsl_fft_real_float_h;
