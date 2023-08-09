with Ada.Command_Line; use Ada.Command_Line;

with wave; use wave;
with spectrum;

procedure Freqd is
   inpfilename : constant String := Argument(1);
   w,wo : Wave.Wave_Type;
   s  : spectrum.Freq_Type;
   simpfrac : float := 0.01 ;
begin
   if Argument_Count > 1
   then
      simpfrac := Float'Value(Argument(2));
   end if;
   Wave.Load(w , inpfilename );
   s := spectrum.Analyze (w);
   spectrum.Simplify(s,simpfrac);
   spectrum.Print (s, Argument (1) & ".csv");
   wo := spectrum.Synthesize (s);
   wave.Print (wo, Argument (1) & "_re.csv");
end Freqd;
