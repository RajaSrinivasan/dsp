with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;
package body signal.square is

   function Value (g : in out Generator; arg : Float) return Float is
      width   : Float := 1.0 / (Float (g.frequency) * 2.0);
      waveidx : Integer;
   begin
      waveidx := Integer (Float'Floor ((arg - g.phase) / width));
      if waveidx mod 2 = 0 then
         return -g.amplitude;
      else
         return g.amplitude;
      end if;
   end Value;

end signal.square;
