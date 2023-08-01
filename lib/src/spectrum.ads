with Ada.Numerics.Real_Arrays ; 
with Ada.Numerics.Complex_Arrays ; 
--with Ada.Numerics.Long_Real_arrays ;

with Wave ;

package spectrum is
   epsilon : constant float := 0.0001 ;
   type FreqRecord_Type is
      record
         sample_rate : integer ;
         cmplx : access Ada.Numerics.Complex_Arrays.Complex_Vector ;
      end record ;
   type Freq_Type is access FreqRecord_Type ;
   
   function Analyze( w : Wave.Wave_Type ) return Freq_Type ;
   function Synthesize( f : Freq_Type ) return Wave.Wave_Type ;
   procedure Print( f : Freq_Type ; filename : string := "" );
end spectrum;
