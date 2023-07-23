with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;
package body signal.square is

   function Value (g : in out Generator; arg : float) return float is
      width   : float := 1.0 / (float (g.frequency) * 2.0);
      waveidx : integer;
   begin
      waveidx := integer (float'Floor ((arg - g.phase) / width));
      if waveidx mod 2 = 0 then
         return -g.amplitude;
      else
         return g.amplitude;
      end if;
   end Value;

end signal.square;
