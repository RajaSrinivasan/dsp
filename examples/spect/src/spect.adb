with Ada.Command_Line; use Ada.Command_Line;

with Ada.Numerics ;
with Ada.Command_Line ;

with Signal.Sinusoid ;
with Signal.Square ;
with signal.Noise ;
with signal.sinc ;
with signal.chirp ;
with signal.test ;

with Wave ; use Wave ;
with spectrum ;
with windows ;

procedure Spect is
   sin : Signal.Sinusoid.Generator :=
        ( frequency => 4.0 ,
          amplitude => 2.0 ,
          phase => Ada.Numerics.Pi/2.0 ) ;
      w : Wave.Wave_Type := Wave.Create(200,0.0,0.5);
      s : Spectrum.Freq_Type ;
      wo : Wave.Wave_Type ;
   begin
      Wave.Generate( w , sin ) ;
      s := Spectrum.Analyze(w) ;
      Spectrum.Print(s,Argument(1) & ".csv");
      wo := Spectrum.Synthesize(s) ;
      Wave.Print(wo,Argument(1) & "_re.csv");
   end Spect ;

