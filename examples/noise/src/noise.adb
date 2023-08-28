with Ada.Command_Line; use Ada.Command_Line;
with wave;
with signal.noise ;
procedure noise is
   srn : signal.noise.GSLNoise_Type := (amplitude => 1.0) ;
   w : wave.Wave_Type := wave.Create (200, 0.0, 1.0);
   w2 : wave.Wave_Type;

begin
   Wave.Generate(w,srn);
   Wave.Print(w,Argument(1));
   w2 := Wave.Normalize(w);
   Wave.Print(w2,Argument(1) & "_norm.csv");
end noise ;
