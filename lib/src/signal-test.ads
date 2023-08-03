package signal.test is

   type Delta_Type is new NonPeriodic_Signal_Type and wave.Generator with
   null record;
   function Value (g : in out Delta_Type; arg : Float) return Float;

   type Step_Type is new NonPeriodic_Signal_Type and wave.Generator with
   null record;
   function Value (g : in out Step_Type; arg : Float) return Float;

   type Pulse_Type is new NonPeriodic_Signal_Type and wave.Generator with
   record
      width : Float;
   end record;
   function Value (g : in out Pulse_Type; arg : Float) return Float;

end signal.test;
