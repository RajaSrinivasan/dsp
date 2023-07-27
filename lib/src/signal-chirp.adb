with Ada.Numerics.Elementary_Functions;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Text_Io; use Ada.Text_Io;
package body signal.chirp is
   package NumLib renames Ada.Numerics.Elementary_Functions;
   use NumLib;

   procedure Initialize (g : in out LinearChirp; w : wave.Wave_Type) is
   begin
      null;
   end Initialize;

   procedure Generate (g : in out LinearChirp; w : in out wave.Wave_Type) is
      dts : float := w.Xs(2) - w.Xs(1);
      dfreq : float := (g.endfreq - g.startfreq)/Float((w.Xs'Length-1));
      f : Float := g.startfreq;
      dphase : Float := 2.0 * Ada.Numerics.PI * f * dts ;
      phase : Float := dphase;
   begin
      --Put_Line("Generating");
      for x in w.Xs'Range
      loop
         --Put(f); Put(dphase); Put(phase); New_Line;
         w.samples(x) := g.amplitude * 
                         Ada.Numerics.Elementary_Functions.Cos(phase) ;
         f := f + dfreq ;
         dphase := 2.0 * Ada.Numerics.PI * f * dts ;         
         phase := phase + dphase ;
      end loop;
   end Generate;

    
   procedure Generate (g : in out ExponentialChirp ; w : in out wave.Wave_Type) is
      phase : float ;
      use Ada.Numerics;
      k : float := g.endfreq / g.startfreq ;
   begin
      --Put_Line("Generating");
      for x in w.Xs'Range
      loop
         phase := 2.0 * PI * g.startfreq * ( ( k ** w.Xs(x) - 1.0)/ Log(k));
         w.samples(x) := g.amplitude * 
                         Elementary_Functions.Cos(phase) ;
      end loop;
   end Generate;

   procedure Initialize (g : in out ExponentialChirp; w : wave.Wave_Type) is
   begin
      null;
   end Initialize;

end signal.chirp;
