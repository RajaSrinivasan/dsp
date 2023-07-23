package body signal.test is

   function Value (g : in out Delta_Type; arg : float) return float is
   begin
      if abs (arg) < epsilon then
         return g.amplitude;
      else
         return 0.0;
      end if;
   end Value;

   function Value (g : in out Step_Type; arg : float) return float is
   begin
      if arg > 0.0 then
         return g.amplitude;
      else
         return 0.0;
      end if;
   end Value;

   function Value (g : in out Pulse_Type; arg : float) return float is
   begin
      if arg > 0.0 and arg <= g.width then
         return g.amplitude;
      else
         return 0.0;
      end if;
   end Value;

end signal.test;
