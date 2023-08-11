with Ada.Numerics;     use Ada.Numerics;
with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO;      use Ada.Text_IO;

with signal.square;
with signal.triangle;
with signal.sinusoid;

with wave;

procedure Arith is
   sqfreq         : Float           := 4.0;
   trfreq         : Float           := 4.0;
   sinfreq        : Float           := 4.0;
   amplitude      : Float           := 1.0;
   phase          : Float           := 0.0;
begin
   declare
      gwsq : signal.square.Generator :=
        (frequency => sqfreq, amplitude => amplitude, phase => phase);
      wsq  : wave.Wave_Type            := wave.Create (200, 0.0, 0.25);
      gwtr : signal.triangle.Generator :=
        (frequency => trfreq, amplitude => amplitude, phase => phase);
      wtr    : wave.Wave_Type            := wave.Create (200, 0.25, 0.25);
      gwsin1 : signal.sinusoid.Generator :=
        (frequency => sinfreq, amplitude => amplitude, phase => phase);
      wsin1  : wave.Wave_Type            := wave.Create (200, 0.5, 0.25);
      gwsin2 : signal.sinusoid.Generator :=
        (frequency => sinfreq * 2.0, amplitude => amplitude, phase => phase);
      wsin2 : wave.Wave_Type := wave.Create (200, 0.75, 0.25);

      wfinal : wave.Wave_Type;
   begin
      wave.Generate (wsq, gwsq);
      wave.Print (wsq, Argument (1) & "_sq.csv");
      wave.Generate (wtr, gwtr);
      wave.Print (wtr, Argument (1) & "_tr.csv");
      wave.Generate (wsin1, gwsin1);
      wave.Print (wsin1, Argument (1) & "_sin1.csv");
      wave.Generate (wsin2, gwsin2);
      wave.Print (wsin2, Argument (1) & "_sin2.csv");
      wfinal := wave.Append( wsin1 , wsq  );
      wfinal := wave.Append( wfinal , wtr );
      wfinal := wave.Append( wfinal , wsin2);
      wave.Print(wfinal,Argument(1) & "_combined.csv");
   end;
end Arith;
