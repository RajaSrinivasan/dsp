with Ada.Numerics.Elementary_Functions;

package body signal.sinusoid is
   package numlib renames Ada.Numerics.Elementary_Functions;

   function Value (g : in out Generator; arg : Float) return Float is
   begin
      return
        g.amplitude *
        numlib.Sin
          (2.0 * Ada.Numerics.Pi * Float (g.frequency) * arg + g.phase);

   end Value;

end signal.sinusoid;
