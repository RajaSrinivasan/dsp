with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;
with Ada.Text_Io; use Ada.Text_Io;
with Ada.Float_Text_Io; use Ada.Float_Text_IO ;
package body signal.triangle is

   function Value (g : in out Generator; arg : Float) return Float is
        period : float := 1.0 / (Float (g.frequency) );
        wavidx : Float ;
        wavsubidx : Integer ;
        offset : Float ;
        v1, v2 : float ;
   begin
        wavidx := Float'Floor (arg / period);
        offset := arg - wavidx * period ;
        v1 := ( offset / period ) * 4.0 * g.amplitude ;
        v2 := - v1 ;
        wavsubidx := Integer( Float'Floor(4.0 * offset / period) );
        case wavsubidx is
            when 0 => return v1  ;
            when 1 => return v2 + 2.0 * g.amplitude ;
            when 2 => return v2 + 2.0 * g.amplitude ; --return  - (arg - wavidx * period)/g.amplitude ;
            when 3 => return v1 - 4.0 * g.amplitude ; --return (g.amplitude * 4.0 * offset / period) - g.amplitude  ; --return (arg - wavidx * period)/g.amplitude - g.amplitude;
            when others => return 0.0;
        end case;
   end Value;
end signal.triangle;
