with gsl.rng ;
package signal.noise is
   type UncorrelatedNoise_Type is new NonPeriodic_Signal_Type and
     wave.Generator with null record;
   function Value
     (g : in out UncorrelatedNoise_Type; arg : Float) return Float;
   type GaussianNoise_Type is new NonPeriodic_Signal_Type and
     wave.Generator with null record;
   function Value (g : in out GaussianNoise_Type; arg : Float) return Float;
   type BrownianNoise_Type is new NonPeriodic_Signal_Type and
     wave.Generator with record
      cumsum : Float := 0.0;
   end record;
   function Value (g : in out BrownianNoise_Type; arg : Float) return Float;

   type GSLNoise_Type is new NonPeriodic_Signal_Type and
     wave.Generator with null record;
   function Value
     (g : in out GSLNoise_Type; arg : Float) return Float;

    -- Noise generators
    procedure Show;
    
end signal.noise;
