with Wave ;
package signal is

   procedure Initialize ;
   epsilon : constant float := 0.000001 ;
   type Signal_Type is abstract tagged 
      record
         amplitude : float ;
      end record ;   
   
   type NonPeriodic_Signal_Type is abstract new Signal_Type with null record ;

   type Periodic_Signal_Type is abstract new Signal_Type with 
      record
         frequency : float ;
         phase : float ;
      end record ;
   
   type ComplexSignal_TYpe is abstract new Periodic_Signal_Type with null record ;
   
end signal;
