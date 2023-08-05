pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with gsl_gsl_complex_h;
with stddef_h;
with gsl_gsl_fft_h;

package gsl_gsl_fft_complex_h is

   function gsl_fft_complex_radix2_forward
     (data : gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_complex.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_radix2_forward";

   function gsl_fft_complex_radix2_backward
     (data : gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_complex.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_radix2_backward";

   function gsl_fft_complex_radix2_inverse
     (data : gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_complex.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_radix2_inverse";

   function gsl_fft_complex_radix2_transform
     (data : gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      sign : gsl_gsl_fft_h.gsl_fft_direction) return int  -- /usr/include/gsl/gsl_fft_complex.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_radix2_transform";

   function gsl_fft_complex_radix2_dif_forward
     (data : gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_complex.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_radix2_dif_forward";

   function gsl_fft_complex_radix2_dif_backward
     (data : gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_complex.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_radix2_dif_backward";

   function gsl_fft_complex_radix2_dif_inverse
     (data : gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : stddef_h.size_t;
      n : stddef_h.size_t) return int  -- /usr/include/gsl/gsl_fft_complex.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_radix2_dif_inverse";

   function gsl_fft_complex_radix2_dif_transform
     (data : gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      sign : gsl_gsl_fft_h.gsl_fft_direction) return int  -- /usr/include/gsl/gsl_fft_complex.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_radix2_dif_transform";

   --  skipped anonymous struct anon_anon_71

   type gsl_fft_complex_wavetable_array10117 is array (0 .. 63) of aliased stddef_h.size_t;
   type gsl_fft_complex_wavetable_array10119 is array (0 .. 63) of access gsl_gsl_complex_h.gsl_complex;
   type gsl_fft_complex_wavetable is record
      n : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_fft_complex.h:82
      nf : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_fft_complex.h:83
      factor : aliased gsl_fft_complex_wavetable_array10117;  -- /usr/include/gsl/gsl_fft_complex.h:84
      twiddle : gsl_fft_complex_wavetable_array10119;  -- /usr/include/gsl/gsl_fft_complex.h:85
      trig : access gsl_gsl_complex_h.gsl_complex;  -- /usr/include/gsl/gsl_fft_complex.h:86
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_fft_complex.h:88

   --  skipped anonymous struct anon_anon_72

   type gsl_fft_complex_workspace is record
      n : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_fft_complex.h:92
      scratch : access double;  -- /usr/include/gsl/gsl_fft_complex.h:93
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_fft_complex.h:95

   function gsl_fft_complex_wavetable_alloc (n : stddef_h.size_t) return access gsl_fft_complex_wavetable  -- /usr/include/gsl/gsl_fft_complex.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_wavetable_alloc";

   procedure gsl_fft_complex_wavetable_free (wavetable : access gsl_fft_complex_wavetable)  -- /usr/include/gsl/gsl_fft_complex.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_wavetable_free";

   function gsl_fft_complex_workspace_alloc (n : stddef_h.size_t) return access gsl_fft_complex_workspace  -- /usr/include/gsl/gsl_fft_complex.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_workspace_alloc";

   procedure gsl_fft_complex_workspace_free (workspace : access gsl_fft_complex_workspace)  -- /usr/include/gsl/gsl_fft_complex.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_workspace_free";

   function gsl_fft_complex_memcpy (dest : access gsl_fft_complex_wavetable; src : access gsl_fft_complex_wavetable) return int  -- /usr/include/gsl/gsl_fft_complex.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_memcpy";

   function gsl_fft_complex_forward
     (data : gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      wavetable : access constant gsl_fft_complex_wavetable;
      work : access gsl_fft_complex_workspace) return int  -- /usr/include/gsl/gsl_fft_complex.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_forward";

   function gsl_fft_complex_backward
     (data : gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      wavetable : access constant gsl_fft_complex_wavetable;
      work : access gsl_fft_complex_workspace) return int  -- /usr/include/gsl/gsl_fft_complex.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_backward";

   function gsl_fft_complex_inverse
     (data : gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      wavetable : access constant gsl_fft_complex_wavetable;
      work : access gsl_fft_complex_workspace) return int  -- /usr/include/gsl/gsl_fft_complex.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_inverse";

   function gsl_fft_complex_transform
     (data : gsl_gsl_complex_h.gsl_complex_packed_array;
      stride : stddef_h.size_t;
      n : stddef_h.size_t;
      wavetable : access constant gsl_fft_complex_wavetable;
      work : access gsl_fft_complex_workspace;
      sign : gsl_gsl_fft_h.gsl_fft_direction) return int  -- /usr/include/gsl/gsl_fft_complex.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_fft_complex_transform";

end gsl_gsl_fft_complex_h;
