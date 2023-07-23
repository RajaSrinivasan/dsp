package signal.chirp is

   type Chirp_Type is abstract new Signal_Type with record
      startfreq  : Integer;
      endfreq    : Integer;
      chirpiness : float := 0.0;
   end record;

   type LinearChirp is new Chirp_Type and wave.Generator and
     wave.WGenerator with null record;
   function Value (g : in out LinearChirp; arg : float) return float;
   procedure Initialize (g : in out LinearChirp; w : wave.Wave_Type);

   type ExponentialChirp is new Chirp_Type and wave.Generator and
     wave.WGenerator with record
      lnchirpiness : float;
   end record;
   function Value (g : in out ExponentialChirp; arg : float) return float;
   procedure Initialize (eg : in out ExponentialChirp; w : wave.Wave_Type);

end signal.chirp;
