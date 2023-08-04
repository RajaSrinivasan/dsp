with Ada.Command_Line; use Ada.Command_Line;

with Ada.Numerics;
with Ada.Command_Line;

with signal.square;
with signal.noise;

with wave; use wave;
with spectrum;
with windows;

procedure SpectSq is
   sq : signal.Square.Generator :=
     (frequency => 2.0 , amplitude => 2.0 , phase => 0.0);
   w  : wave.Wave_Type := wave.Create (20, 0.0, 1.0);
   s  : spectrum.Freq_Type;
   wo : wave.Wave_Type;
begin
   wave.Generate (w, sq);
   wave.Print(w,Argument(1) & "_orig.csv");
   s := spectrum.Analyze (w);
   spectrum.Print (s, Argument (1) & ".csv");
   wo := spectrum.Synthesize (s);
   wave.Print (wo, Argument (1) & "_re.csv");
end SpectSq ;
