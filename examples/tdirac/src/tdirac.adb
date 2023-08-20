with Ada.Numerics;     use Ada.Numerics;
with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO;      use Ada.Text_IO;

with signal.dirac ;
with wave;

procedure tdirac is
   freq      : Float := 10.0;
   amplitude : Float := 1.0;
   phase     : Float := Pi / 2.0;

begin
   if Argument_Count < 1 then
      Put_Line
        ("usage: tdirac outputfilename [<frequency> [<amplitude> [<phase>]]]");
      return;
   end if;
   if Argument_Count >= 2 then
      freq := Float'Value (Argument (2));
      if Argument_Count >= 3 then
         amplitude := Float'Value (Argument (3));
         if Argument_Count >= 4 then
            phase := Float'Value (Argument (4));
         end if;
      end if;
   end if;
   declare
      s : signal.dirac.Generator :=
        (frequency => freq, amplitude => amplitude, phase => phase);
      w : wave.Wave_Type := wave.Create (200, 0.0, 1.0);
   begin
      wave.Generate (w, s);
      wave.Print (w, Argument (1));
   end;
end tdirac;
