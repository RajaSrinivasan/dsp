package signal.triangle is

   type Generator is new Periodic_Signal_Type and wave.Generator with
   null record;
   function Value (g : in out Generator; arg : Float) return Float;

end signal.triangle ;