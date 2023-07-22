with Ada.Numerics.Real_Arrays ; use Ada.Numerics.Real_Arrays ;

package windows is

   type Window_Type is abstract tagged
      record
         factors : access Real_Vector ;
      end record ;
   procedure Generate ( w : in out Window_Type ; length : integer ) is abstract ;
   
   type Hanning_Window is new Window_Type with null record ;
   procedure Generate ( h : in out Hanning_Window ; length : integer ) ;
   
   type Hamming_Window is new Window_Type with null record ;
   procedure Generate ( h : in out Hamming_Window ; length : integer ) ;
   
   procedure Print( w : Window_TYPe'class ) ;
end windows;
