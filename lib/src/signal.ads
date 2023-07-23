with Wave;
package signal is

   procedure Initialize;
   epsilon : constant Float := 0.000_001;
   type Signal_Type is abstract tagged record
      amplitude : Float;
   end record;

   type NonPeriodic_Signal_Type is abstract new Signal_Type with null record;

   type Periodic_Signal_Type is abstract new Signal_Type with record
      frequency : Float;
      phase     : Float;
   end record;

   type ComplexSignal_TYpe is abstract new Periodic_Signal_Type with
   null record;

end signal;
