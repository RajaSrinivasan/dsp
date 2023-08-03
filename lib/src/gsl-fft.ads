with System;       use System;
with Interfaces.C; use Interfaces.C;

package gsl.fft is

   pragma Linker_Options ("-lgsl");
   pragma Linker_Options ("-lgslcblas");
   --pragma Linker_Options("-lm");
   procedure Initialize;
   type float_Wavetable is new Address;
   function real_wavetable_float_alloc
     (n : size_t)
      return float_Wavetable  -- ../gsl/gsl_fft_real_float.h:60
   with
      Import        => True,
      Convention    => C,
      External_Name => "gsl_fft_real_wavetable_float_alloc";
   procedure real_wavetable_float_free
     (wavetable : float_Wavetable)  -- ../gsl/gsl_fft_real_float.h:62
   with
      Import        => True,
      Convention    => C,
      External_Name => "gsl_fft_real_wavetable_float_free";

   type float_Workspace is new Address;

   function real_workspace_float_alloc
     (n : size_t)
      return float_Workspace  -- ../gsl/gsl_fft_real_float.h:64
   with
      Import        => True,
      Convention    => C,
      External_Name => "gsl_fft_real_workspace_float_alloc";

   procedure real_workspace_float_free
     (workspace : float_Workspace)  -- ../gsl/gsl_fft_real_float.h:66
   with
      Import        => True,
      Convention    => C,
      External_Name => "gsl_fft_real_workspace_float_free";

   type float_halfcomplex_wavetable is new System.Address;
   function halfcomplex_wavetable_float_alloc
     (n : size_t)
      return float_halfcomplex_wavetable  -- ../gsl/gsl_fft_halfcomplex_float.h:57
   with
      Import        => True,
      Convention    => C,
      External_Name => "gsl_fft_halfcomplex_wavetable_float_alloc";

   procedure halfcomplex_wavetable_float_free
     (wavetable : float_halfcomplex_wavetable)  -- ../gsl/gsl_fft_halfcomplex_float.h:60
   with
      Import        => True,
      Convention    => C,
      External_Name => "gsl_fft_halfcomplex_wavetable_float_free";

   function real_float_transform
     (data : Address; stride : size_t; n : size_t; wavetable : float_Wavetable;
      work : float_Workspace)
      return int  -- ../gsl/gsl_fft_real_float.h:68
   with
      Import        => True,
      Convention    => C,
      External_Name => "gsl_fft_real_float_transform";

   function halfcomplex_float_inverse
     (data      : Address; stride : size_t; n : size_t;
      wavetable : float_halfcomplex_wavetable; work : float_Workspace)
      return int  -- ../gsl/gsl_fft_halfcomplex_float.h:66
   with
      Import        => True,
      Convention    => C,
      External_Name => "gsl_fft_halfcomplex_float_inverse";

end gsl.fft;
