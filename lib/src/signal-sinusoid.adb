with Ada.Numerics.Elementary_Functions;

package body signal.sinusoid is
   package numlib renames Ada.Numerics.Elementary_Functions;

   function Value (g : in out Generator; arg : float) return float is
   begin
      return
        g.Amplitude *
        numlib.Sin
          (2.0 * ada.Numerics.pi * float (g.frequency) * arg + g.phase);

   end Value;

end signal.sinusoid;
