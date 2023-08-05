pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package gsl_gsl_fft_h is

   subtype gsl_fft_direction is int;
   gsl_fft_forward : constant gsl_fft_direction := -1;
   gsl_fft_backward : constant gsl_fft_direction := 1;  -- /usr/include/gsl/gsl_fft.h:41

end gsl_gsl_fft_h;
