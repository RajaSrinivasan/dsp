with Ada.Command_Line; use Ada.Command_Line;

with Ada.Numerics;
with Ada.Command_Line;

with signal.sinusoid;
with signal.square;
with signal.noise;
with signal.sinc;
with signal.chirp;
with signal.test;

with wave; use wave;
with spectrum;
with spectrum.fft;
with windows;

procedure Spect is
   sin : signal.sinusoid.Generator :=
     (frequency => 4.0, amplitude => 2.0, phase => Ada.Numerics.Pi / 2.0);
   w  : wave.Wave_Type := wave.Create (200, 0.0, 1.0);
   s  : spectrum.Freq_Type;
   wo : wave.Wave_Type;
begin
   wave.Generate (w, sin);
   s := spectrum.fft.Analyze (w);
   spectrum.Print (s, Argument (1) & ".csv");
   wo := spectrum.fft.Synthesize (s);
   wave.Print (wo, Argument (1) & "_re.csv");
end Spect;
