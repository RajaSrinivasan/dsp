with GNAT.Random_Numbers ;
package body signal.noise is

   gen : GNAT.Random_Numbers.Generator ;
   function Value( g : in out UncorrelatedNoise_Type ; arg : float ) return float is
      rf : float ;
   begin
      rf := GNAT.Random_Numbers.Random(gen) - 0.5 ;
      return rf * g.amplitude ;
   end Value ;
   
   function Value( g : in out GaussianNoise_Type ; arg : float ) return float is
      rf : float ;
   begin
      rf := GNAT.Random_Numbers.Random_Gaussian(gen) ;
      return rf * g.amplitude ;
   end Value ;
   
   function Value( g : in out BrownianNoise_Type ; arg : float ) return float is
      rf : float ;
   begin
      rf := GNAT.Random_Numbers.Random(gen) - 0.5 ;
      g.cumsum := g.cumsum + rf ;
      return g.cumsum ;
   end Value ;

   
   --  overriding
   --  procedure Generate( sig : BrownianNoise_Type ;
   --                      samples : Wave.Samples_PtrType ) is
   --     rf : float ;
   --     cumsum : float := 0.0 ;
   --     max,min : float ;
   --     bamp : float ;
   --  begin
   --     for samp in samples'Range
   --     loop
   --        rf := GNAT.Random_Numbers.Random(gen) - 0.5 ;
   --        if samp = samples'first
   --        then
   --           samples(samp).y := rf ;
   --           cumsum := rf ;
   --           max := cumsum ;
   --           min := cumsum ;
   --        else
   --           cumsum := cumsum + rf ;
   --           samples(samp).y := cumsum ;
   --           if samples(samp).y > max
   --           then
   --              max := samples(samp).y ;
   --           end if ;
   --           if samples(samp).y < min
   --           then
   --              min := samples(samp).y ;
   --           end if ;
   --        end if ;
   --     end loop ;
   --     bamp := max - min ;
   --     for samp in samples'Range
   --     loop
   --        samples(samp).y := 2.0 * sig.amplitude * (samples(samp).y-min)/bamp - sig.amplitude ;
   --     end loop ;
   --  
   --  end Generate;
   --  
begin
   GNAT.Random_Numbers.Reset(gen) ;
end signal.noise;
