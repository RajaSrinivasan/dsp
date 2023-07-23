package signal.sinusoid is

   type Generator is new Periodic_Signal_Type and wave.Generator with
   null record;
   function Value (g : in out Generator; arg : float) return float;

end signal.sinusoid;
