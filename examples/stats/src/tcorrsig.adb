with Ada.Numerics;     use Ada.Numerics;
with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO;      use Ada.Text_IO;
with Ada.Float_Text_Io; use Ada.Float_Text_Io;

with wave;
with wave.properties ;

procedure tcorrsig is
   inpfilename : constant String := Argument(1);
   w,wo : Wave.Wave_Type;
begin
    Wave.Load(w , inpfilename );
    wo := wave.properties.Autocorrelation(w);
    wave.Print(wo,inpfilename & "_acorr.csv");
end tcorrsig ;

