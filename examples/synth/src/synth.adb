with Ada.Numerics;     use Ada.Numerics;
with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO;      use Ada.Text_IO;

with wave;

procedure Synth is
   freq      : Float := 200.0;
   start : Float := 0.0;
   dur       : Float := 1.0 ;
begin
   if Argument_Count < 1 then
      Put_Line
        ("usage: synth input [<frequency> [start [duration]]]]");
      return;
   end if;
   if Argument_Count >= 2 then
      freq := Float'Value (Argument (2));
      if Argument_Count >= 3 then
         start := Float'Value (Argument (3));
         if Argument_Count >= 4 then
            dur := Float'Value (Argument (4));
         end if;
      end if;
   end if;

   declare
      w : wave.Wave_Type;
   begin
      w := wave.Synthesize ( Integer(freq) , start , dur , filename => Argument(1) );
      wave.Print (w, Argument (1) & "_synth.csv");
   end;
end Synth ;

