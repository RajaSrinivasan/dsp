with Ada.Numerics.Elementary_Functions ;
package body signal.chirp is

   package NumLib renames Ada.Numerics.Elementary_Functions ;
   use NumLib ;
   
   procedure Initialize( g : in out LinearChirp ; w : wave.Wave_Type ) is
   begin
      g.chirpiness := float(( g.endfreq - g.startfreq)) / 
                                      (float(w.Xs'Length-1) * w.deltax) ;
   end Initialize ;
   
   function Value( g : in out LinearChirp ; arg : float ) return float is
      phase : float ;
   begin
      phase := 2.0 * Ada.Numerics.Pi * arg * ( float(g.startfreq) + g.chirpiness * arg / 2.0 );
      return g.amplitude * NumLib.Sin(phase);
   end Value ;
   
   
   procedure Initialize( eg : in out ExponentialChirp ; w : wave.Wave_Type ) is
     chirpiness : float := 
       float(eg.endfreq - eg.startfreq) ** (1.0/(float(w.Xs'Length - 1 )*w.deltax)) ; 
   begin
      eg.chirpiness := chirpiness ;
      eg.lnchirpiness := NumLib.Log(chirpiness,ada.Numerics.e) ;
   end Initialize ;
   
   function Value( g : in out ExponentialChirp ; arg : float ) return float is
      phase : float ;
   begin
      phase := arg * ( (g.chirpiness ** arg - 1.0)/g.lnchirpiness );
      return g.amplitude * NumLib.Sin(phase);
   end Value ;

end signal.chirp;
