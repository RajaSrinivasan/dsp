package signal.noise is

   type UncorrelatedNoise_Type is new NonPeriodic_Signal_Type and
     wave.Generator with null record;
   function Value
     (g : in out UncorrelatedNoise_Type; arg : float) return float;

   type GaussianNoise_Type is new NonPeriodic_Signal_Type and
     wave.Generator with null record;
   function Value (g : in out GaussianNoise_Type; arg : float) return float;

   --  overriding
   --  procedure Generate( sig : GaussianNoise_Type ;
   --                      samples : Wave.Samples_PtrType ) ;

   type BrownianNoise_Type is new NonPeriodic_Signal_Type and
     wave.Generator with record
      cumsum : float := 0.0;
   end record;

   function Value (g : in out BrownianNoise_Type; arg : float) return float;

   --  overriding
   --  procedure Generate( sig : BrownianNoise_Type ;
   --                      samples : Wave.Samples_PtrType ) ;

end signal.noise;
