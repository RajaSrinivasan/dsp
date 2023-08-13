with Ada.Numerics;     use Ada.Numerics;
with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO;      use Ada.Text_IO;
with Interfaces.C.Strings; use Interfaces.C.Strings;
--with Interfaces.C; use Interfaces.C;

with wave;

with sndfile;

procedure Audio is
begin
   Put_Line( Interfaces.C.Strings.Value(sndfile.Version) );
end Audio;
