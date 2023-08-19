-- Dirac Comb, Shah function, Impulse Train or Sampling function
-- Ref: https://en.wikipedia.org/wiki/Dirac_comb

package signal.dirac is

    type Generator is new Periodic_Signal_Type and wave.Generator 
        with null record;

   function Value (g : in out Generator; arg : Float) return Float;

end signal.dirac;