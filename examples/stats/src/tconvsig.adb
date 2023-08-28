with Ada.Numerics;     use Ada.Numerics;
with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO;      use Ada.Text_IO;
with Ada.Float_Text_Io; use Ada.Float_Text_Io;

with wave;
with wave.properties ;

procedure tconvsig is
   sigfilename : constant String := Argument(1);
   winfilename : constant String := Argument(2);
   wsig,wwin : Wave.Wave_Type;
   wconv : wave.Wave_Type ;
begin
    Wave.Load(wsig , sigfilename );
    Wave.Load(wwin , winfilename );
    wconv := wave.properties.Convolve(wsig,wwin);
    wave.Print(wconv, sigfilename & "_conv.csv");
end tconvsig ;

