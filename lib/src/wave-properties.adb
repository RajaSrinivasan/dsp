with Ada.Numerics.Elementary_Functions;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Interfaces.C; use Interfaces.C;
with gsl.statistics;

with systems;

with gsl.vector_double ;
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

    function Mean( w : wave_type ) return Float is
        result : double ;
    begin
        result := gsl.statistics.mean( gsl.vector_double.To_C(w.samples.all) );
        return float(result);
    end Mean ;

    function sd( w : wave_type ) return Float is
        result : double;
    begin
        result := gsl.statistics.sd( gsl.vector_double.To_C(w.samples.all));
        return float(result);
    end sd;   

    function sd( w : wave_type ; mean : Float) return float is
        result : double ;
    begin
        result := gsl.statistics.sd_with_fixed_mean( gsl.vector_double.To_C(w.samples.all) , double(mean) );
        return float(result);
    end sd;

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

    function Correlation( x : wave_type ; y : wave_type ) return Float is
        result : Interfaces.C.double;
    begin
        if x.Samples'Length /= y.Samples'Length
        then
            raise Program_Error with "Incompatible waves" ;
        end if;
        if not x.real or not y.real
        then
            raise Program_Error with "Only real waves";
        end if;
        result := gsl.statistics.correlation( gsl.vector_double.To_C(x.samples.all),
                                              gsl.vector_double.To_C(y.samples.all) );
        return Float(result);
    end Correlation ;

    function Covariance( x : wave_type ; y : wave_type ) return Float is
        result : double;
    begin
         if x.Samples'Length /= y.Samples'Length
        then
            raise Program_Error with "Incompatible waves" ;
        end if;
        if not x.real or not y.real
        then
            raise Program_Error with "Only real waves";
        end if;
        result := gsl.statistics.covariance( gsl.vector_double.To_C(x.samples.all) ,
                                             gsl.vector_double.To_C(y.samples.all) );
        return Float(result);
    end Covariance;

    function Autocorrelation( x : wave_type ) return Wave_Type is
      result : constant Wave_Type := Create( like => x);
      shifter : constant systems.Shift := ( slots => 1) ;
      temp : Wave_Type := Create( like => result);
    begin
      for xidx in result.Xs'Range
      loop
         declare
            shifted : constant Wave_Type := systems.Transform(shifter,temp);
         begin
            result.samples(xidx) := Correlation(x,temp);
            temp := shifted;
         end ;
      end loop;
      return result;
    end Autocorrelation;

   function Convolve( x : wave_type ; w : wave_type ) return Wave_Type is
      result : constant Wave_Type := Create( like => x );
      ptr : Integer ;
      sum : Float ;
   begin
      for xptr in result.Xs'Range
      loop
         sum := 0.0 ;
         for xxptr in x.Xs'Range
         loop
            ptr := xptr - xxptr ;
            --Put(ptr); New_Line;
            sum := sum + x.samples(xxptr) * w.samples(ptr mod w.Xs'Length +1);
         end loop;
         result.samples(xptr) := sum ;
      end loop ;
      return result;
   end Convolve ;

end wave.properties;