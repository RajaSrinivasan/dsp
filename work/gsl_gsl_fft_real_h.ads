pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
limited with gsl_gsl_complex_h;

package gsl_gsl_fft_real_h is

   function gsl_fft_real_radix2_transform
     (data : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_real.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_radix2_transform";

   --  skipped anonymous struct anon_anon_71

   type gsl_fft_real_wavetable_array10114 is array (0 .. 63) of aliased stddef_h.size_t;
   type gsl_fft_real_wavetable_array10116 is array (0 .. 63) of access gsl_gsl_complex_h.gsl_complex;
   type gsl_fft_real_wavetable is record
      n : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_fft_real.h:45
      nf : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_fft_real.h:46
      factor : aliased gsl_fft_real_wavetable_array10114;  -- /usr/include/gsl/gsl_fft_real.h:47
      twiddle : gsl_fft_real_wavetable_array10116;  -- /usr/include/gsl/gsl_fft_real.h:48
      trig : access gsl_gsl_complex_h.gsl_complex;  -- /usr/include/gsl/gsl_fft_real.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_fft_real.h:51

   --  skipped anonymous struct anon_anon_72

   type gsl_fft_real_workspace is record
      n : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_fft_real.h:55
      scratch : access double;  -- /usr/include/gsl/gsl_fft_real.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_fft_real.h:58

   function gsl_fft_real_wavetable_alloc (n : stddef_h.size_t) return access gsl_fft_real_wavetable  -- /usr/include/gsl/gsl_fft_real.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_wavetable_alloc";

   procedure gsl_fft_real_wavetable_free (wavetable : access gsl_fft_real_wavetable)  -- /usr/include/gsl/gsl_fft_real.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_wavetable_free";

   function gsl_fft_real_workspace_alloc (n : stddef_h.size_t) return access gsl_fft_real_workspace  -- /usr/include/gsl/gsl_fft_real.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_workspace_alloc";

   procedure gsl_fft_real_workspace_free (workspace : access gsl_fft_real_workspace)  -- /usr/include/gsl/gsl_fft_real.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_workspace_free";

   function gsl_fft_real_transform
     (data : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      wavetable : access constant gsl_fft_real_wavetable;
      work : access gsl_fft_real_workspace) return int  -- /usr/include/gsl/gsl_fft_real.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_transform";

   function gsl_fft_real_unpack
     (real_coefficient : access double;
      complex_coefficient : access double;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_real.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_real_unpack";

end gsl_gsl_fft_real_h;
