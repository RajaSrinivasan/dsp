with Ada.Numerics;     use Ada.Numerics;
with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO;      use Ada.Text_IO;
with Ada.Float_Text_Io; use Ada.Float_Text_Io;

with signal.sinusoid;
with signal.noise ;
with signal.chirp ;

with wave;
with wave.properties ;

procedure tcorr is
   freq      : Float := 1.0;
   amplitude : Float := 1.0;
   phase     : Float := Pi / 2.0;
   pdiff     : Float := Pi ;
begin
   if Argument_Count >= 2 then 
      freq := Float'Value (Argument (2));
      if Argument_Count >= 3 then
         amplitude := Float'Value (Argument (3));
         if Argument_Count >= 4 then
            phase := Float'Value (Argument (4));
            if Argument_Count >= 5 then
               pdiff := Float'Value (Argument (5));
            end if;
         end if;
      end if;
   end if;
   declare
      sin1 : signal.sinusoid.Generator :=
        (frequency => freq, amplitude => amplitude, phase => phase);
      w1 : wave.Wave_Type := wave.Create (200, 0.0, 1.0);
      w2 : wave.Wave_Type;
    begin
      wave.Generate (w1, sin1);
      w2 := wave.properties.Autocorrelation(w1);
      wave.Print(w2,Argument(1) & "_sine.csv");
   end;
    declare
      bnoise : signal.noise.BrownianNoise_Type;
      bw : wave.Wave_Type;
      w1 : wave.Wave_Type := wave.Create (200, 0.0, 1.0);
    begin
        wave.generate(w1,bnoise);
        bw := wave.properties.Autocorrelation(w1);
        wave.Print(bw,Argument(1) & "_bnoise.csv");
    end ;

    declare
      ch : signal.chirp.LinearChirp :=
        (amplitude => amplitude,
         startfreq => 220.0 , endfreq => 440.0 );
      chw : Wave.Wave_Type := Wave.Create (1000, 0.0, 1.0);
      chc : Wave.Wave_Type ;
    begin
      signal.chirp.Initialize (ch, chw);
      signal.chirp.Generate (ch, chw);
      chc := wave.properties.Autocorrelation(chw);
      Wave.Print (chc, Argument (1) & "_chirp.csv");
   end;

end tcorr ;

