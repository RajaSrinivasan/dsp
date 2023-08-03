with Ada.Numerics.Real_Arrays;
package signal.chirp is
   type Chirp_Type is abstract new Signal_Type with record
      startfreq : Float;
      endfreq   : Float;
      -- chirpiness : Float := 0.0;
      -- freqs : access Ada.Numerics.Real_Arrays.Real_Vector;
   end record;

   type LinearChirp is new Chirp_Type and wave.NPGenerator with null record;

   procedure Generate (g : in out LinearChirp; w : in out wave.Wave_Type);
   procedure Initialize (g : in out LinearChirp; w : wave.Wave_Type);

   type ExponentialChirp is new Chirp_Type and wave.NPGenerator with
   null record;

   procedure Generate (g : in out ExponentialChirp; w : in out wave.Wave_Type);
   procedure Initialize (g : in out ExponentialChirp; w : wave.Wave_Type);

end signal.chirp;
