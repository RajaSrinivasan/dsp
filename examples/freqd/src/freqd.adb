with Ada.Command_Line; use Ada.Command_Line;

with Ada.Numerics;
with Ada.Command_Line;

with wave; use wave;
with spectrum;
with windows;
procedure Freqd is
   inpfilename : String := Argument(1);
   w : Wave.Wave_Type;
begin
   Wave.Load(w , inpfilename );
   Wave.Print(w,inpfilename & ".csv" );
end Freqd;
