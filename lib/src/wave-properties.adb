
with Ada.Numerics.Elementary_Functions;

package body wave.properties is

   function Max (w : Wave_Type) return Float is
      temp : Float := Float'Safe_Small;
   begin
      for rx in w.Xs'Range loop
         case w.real is
            when True =>
               if temp < w.samples (rx) then
                  temp := w.samples (rx);
               end if;
            when False =>
               if temp < Modulus (w.csamples (rx)) then
                  temp := Modulus (w.csamples (rx));
               end if;
         end case;
      end loop;
      return temp;
   end Max;
   --

   function Min (w : Wave_Type) return Float is
      temp : Float := Float'Safe_Large;
   begin

      for rx in w.Xs'Range loop
         case w.real is
            when True =>
               if temp > w.samples (rx) then
                  temp := w.samples (rx);
               end if;
            when False =>
               if temp > Modulus (w.csamples (rx)) then
                  temp := Modulus (w.csamples (rx));
               end if;
         end case;
      end loop;
      return temp;
   end Min;

   function Norm (w : Wave_Type; p : Integer := 2) return Float is
      use Ada.Numerics.Elementary_Functions;
      result : Float := 0.0;
      np     : constant Float := Float (p);
      temp   : Float;
   begin
      for rx in w.samples'Range loop
         case w.real is
            when True =>
               temp := abs (w.samples (rx));
            when False =>
               temp := Modulus (w.csamples (rx));
         end case;
         result := result + temp**np;
      end loop;
      return result**(1.0 / np);
   end Norm;

   function Energy (w : Wave_Type) return Float is
   begin
      return Norm (w, 2);
   end Energy;

 function InnerProduct( x : Wave_Type ; y : Wave_Type ) return Complex is
      result : Complex := (Re => 0.0 , Im => 0.0) ;
   begin
      if x.sample_rate /= y.Sample_Rate or
        x.real /= x.real or
        x.Xs'Length /= y.Xs'Length
      then
         raise PRogram_Error with "+ Incompatible Waves" ;
      end if ;
      for idx in x.Xs'Range
      loop
         case x.real is
            when true =>
               result.Re := result.Re + x.samples(idx) * y.samples(idx) ;
            when false =>
               result := result + x.csamples(idx) * Conjugate( y.csamples(idx) ) ;
         end case ;
      end loop ;
      return result ;
   end InnerPRoduct ;

   function Angle (x : Wave_Type; y : Wave_Type) return Float is
      use Ada.Numerics.Elementary_Functions;
      ip       : Complex;
      npx, npy : Float;
   begin
      ip  := InnerProduct (x, y);
      npx := Norm (x, 2);
      npy := Norm (y, 2);
      return Arccos (ip.Re / (npx * npy));
   end Angle;

   function Orthogonal (x : Wave_Type; y : Wave_Type) return Boolean is
   begin
      return Angle (x, y) < epsilon;
   end Orthogonal;

end wave.properties;