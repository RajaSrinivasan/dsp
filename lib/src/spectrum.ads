with Ada.Numerics.Real_Arrays;
with Ada.Numerics.Complex_Arrays;
--with Ada.Numerics.Long_Real_arrays ;

with wave;

package spectrum is
   epsilon : constant Float := 0.000_1;
   type FreqRecord_Type is record
      sample_rate : Integer;
      cmplx       : access Ada.Numerics.Complex_Arrays.Complex_Vector;
   end record;
   type Freq_Type is access FreqRecord_Type;
   procedure Simplify(f : in out Freq_Type ; frac : float := 0.5);

   procedure Print (f : Freq_Type; filename : String := "");
end spectrum;
