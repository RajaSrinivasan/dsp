with Ada.Numerics.Elementary_Functions;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Text_IO;       use Ada.Text_IO;
package body signal.chirp is
   package NumLib renames Ada.Numerics.Elementary_Functions;
   use NumLib;

   procedure Initialize (g : in out LinearChirp; w : wave.Wave_Type) is
   begin
      null;
   end Initialize;

   procedure Generate (g : in out LinearChirp; w : in out wave.Wave_Type) is
      dts    : Float := w.Xs (2) - w.Xs (1);
      dfreq  : Float := (g.endfreq - g.startfreq) / Float ((w.Xs'Length - 1));
      f      : Float := g.startfreq;
      dphase : Float := 2.0 * Ada.Numerics.Pi * f * dts;
      phase  : Float := dphase;
   begin
      --Put_Line("Generating");
      for x in w.Xs'Range loop
         --Put(f); Put(dphase); Put(phase); New_Line;
         w.samples (x) :=
           g.amplitude * Ada.Numerics.Elementary_Functions.Cos (phase);
         f      := f + dfreq;
         dphase := 2.0 * Ada.Numerics.Pi * f * dts;
         phase  := phase + dphase;
      end loop;
   end Generate;

   procedure Generate (g : in out ExponentialChirp; w : in out wave.Wave_Type)
   is
      phase : Float;
      use Ada.Numerics;
      k : Float := g.endfreq / g.startfreq;
   begin
      --Put_Line("Generating");
      for x in w.Xs'Range loop
         phase := 2.0 * Pi * g.startfreq * ((k**w.Xs (x) - 1.0) / Log (k));
         w.samples (x) := g.amplitude * Elementary_Functions.Cos (phase);
      end loop;
   end Generate;

   procedure Initialize (g : in out ExponentialChirp; w : wave.Wave_Type) is
   begin
      null;
   end Initialize;

end signal.chirp;
