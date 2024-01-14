with System;
with Interfaces.C.Strings; use Interfaces.C.Strings;
with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;
with Ada.Long_Integer_Text_Io; use Ada.Long_Integer_Text_Io;
with GNAT.Random_Numbers;

package body signal.noise is

   gen : GNAT.Random_Numbers.Generator;
   gslgen : access constant gsl.rng.gsl_rng_type;
   gslrng : access gsl.rng.gsl_rng;

   function Value (g : in out UncorrelatedNoise_Type; arg : Float) return Float
   is
      rf : Float;
   begin
      rf := GNAT.Random_Numbers.Random (gen) - 0.5;
      return rf * g.amplitude;
   end Value;

   function Value (g : in out GaussianNoise_Type; arg : Float) return Float is
      rf : Float;
   begin
      rf := GNAT.Random_Numbers.Random_Gaussian (gen);
      return rf * g.amplitude;
   end Value;

   function Value (g : in out BrownianNoise_Type; arg : Float) return Float is
      rf : Float;
   begin
      rf       := GNAT.Random_Numbers.Random (gen) - 0.5;
      g.cumsum := g.cumsum + rf;
      return g.cumsum;
   end Value;

   function Value
     (g : in out GSLNoise_Type; arg : Float) return Float is
     result : Float ;
   begin
      result := Float( gsl.rng.uniform(gslrng) ) ;
      return result;
   end Value ;

   procedure Show is
   begin
      Put("Name : "); Put( Value(gsl.rng.name(gslrng))); Put( " ");
      Put("Seed : "); Put( Long_Integer(gsl.rng.default_seed) ); Put( " ");
      Put("Max  : "); Put( Long_Integer(gsl.rng.max(gslrng))) ; Put(" ");
      Put("Min  : "); Put( Integer(gsl.rng.min(gslrng))) ; Put(" ");
      New_Line;
   end Show ;

begin
   GNAT.Random_Numbers.Reset (gen);
   gslgen := gsl.rng.env_setup;
   gslrng := gsl.rng.alloc(gslgen);
end signal.noise;
