with Ada.Numerics;     use Ada.Numerics;
with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO;      use Ada.Text_IO;
with Ada.Float_Text_Io; use Ada.Float_Text_Io;
with signal.sinusoid;
with wave;
with wave.properties ;

procedure Stats is
   freq      : Float := 1.0;
   amplitude : Float := 1.0;
   phase     : Float := Pi / 2.0;
   pdiff     : Float := Pi ;
begin
   --if Argument_Count < 1 then
   --   Put_Line
   --     ("usage: stats outputfilename [<frequency> [<amplitude> [<phase> [<pdiff>]]]]");
   --   return;
   --end if;
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
      sin2 : signal.sinusoid.Generator :=
        (frequency => freq, amplitude => amplitude, phase => phase + pdiff );
      w2 : wave.Wave_Type := wave.Create (200, 0.0, 1.0);
   begin
      wave.Generate (w1, sin1);
      wave.Generate (w2,sin2);
      declare
         cor : Float := wave.properties.Correlation(w1,w2);
         cov : Float := wave.properties.Covariance(w1,w2);
      begin
         Put("Correlation "); Put(cor); New_Line;
         Put("Covariance ");  Put(cov); New_Line;
      end;
   end;
end Stats ;

