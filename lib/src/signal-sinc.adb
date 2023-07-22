with Ada.Numerics.Elementary_Functions;
package body signal.sinc is
   package Numlib renames Ada.Numerics.Elementary_Functions ;
   
   function Value( g : in out Generator ; arg : float ) return float is
      localarg : float ;
   begin
      localarg := arg + g.phase ;
      if abs(localarg) < epsilon
      then
         return localarg ;
      end if ;
      return Numlib.Sin(localarg) / localarg ;
   end Value ;
   
end signal.sinc;
