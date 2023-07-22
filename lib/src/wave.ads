with Ada.NUmerics.Complex_Types ; use Ada.Numerics.Complex_Types ;
with Ada.Numerics.Real_Arrays ;
with Ada.Numerics.Complex_Arrays ;

with windows ;

package wave is
   epsilon : constant float := 0.0001 ;
   function max( l : float ; r : float ) return float ;
   pragma Inline(max);
   function min( l : float ; r : float ) return float ;
   pragma Inline(min);
   
   type Wave_RecType ( real : boolean := true ) is limited
      record
         sample_rate : integer ;
         start : float ;
         deltax : float ;
         Xs : access Ada.Numerics.Real_Arrays.Real_Vector ;
         case real is
         when true =>
            samples : access Ada.Numerics.Real_Arrays.Real_Vector ;
         when false =>
            csamples : access Ada.Numerics.Complex_Arrays.Complex_Vector ;
         end case ;
      end record ;
   
   type Wave_Type is access Wave_RecType ;


   function Create( sample_rate : integer ;
                    start : float ;
                    span : float ;
                    default : float := 0.0 ) return Wave_Type ;
   
   function Create( sample_rate : integer ;
                    start : float ;
                    span : float ;
                    values : access Ada.Numerics.Real_Arrays.Real_Vector )
                   return Wave_Type ;
   
   function CreateComplex( sample_rate : integer ;
                    start : float ;
                    span : float ;
                    default : Ada.Numerics.Complex_Types.Complex := ( Re => 0.0, Im => 0.0) ) return Wave_Type ;

   function Create( like : Wave_Type ;
                    length : Integer := 0 ) return Wave_Type ;
   
   function "+" (Left : Wave_Type; Right : Wave_Type) return Wave_Type ;
   function "-" (Left : Wave_TYpe; Right : Wave_TYpe) return Wave_Type ;
   function "*" (Left : Wave_TYpe; Right : Wave_TYpe) return Wave_TYpe ;
   function "/" (Left : Wave_TYpe; Right : Wave_Type) return Wave_Type ;
   
   -- Strength of the vector p-Norm
   function Norm( w : Wave_Type ; p : integer := 2 ) return float ;
   function Energy( w : Wave_Type ) return float ;       -- 2-Norm
   function Max(w : Wave_Type ) return float ;           -- 1-Norm
   function Min(w : Wave_Type ) return float ;
   
   -- procedure Normalize( w : in out Wave_Type );
   function Normalize( w : Wave_Type ) return Wave_Type ;
   function InnerProduct( x : Wave_Type ; y : Wave_Type ) return Complex ;
   function Dot( x : Wave_Type ; y : Wave_Type ) return Complex
                renames InnerProduct ;
   function Angle( x : Wave_Type ; y : Wave_Type ) return float ;
   function Orthogonal( x : Wave_Type ; y : Wave_Type ) return boolean ;
   
   type Generator is Interface ;
   function Value( g : in out Generator ; arg : float ) return float is abstract ;
   
   type WGenerator is Interface ;
   procedure Initialize( wg : in out WGenerator ; w : Wave_Type ) is abstract ; 
   
   procedure Generate( w : in out Wave_Type ; g : in out Generator'class ) ;
   procedure Initialize( w : in out Wave_Type ; wg : in out WGenerator'class ) ;
               
   ------------------------------------
   type System is Interface ;
   function Transform( s : System ; w : Wave_Type ) return Wave_Type is abstract ;
   procedure Transform( s : System ; w : in out Wave_Type ) is abstract;
   ------------------------------------   
   
   function Apply( w : windows.Window_Type'Class ; wi : Wave_Type ; offset : integer ) return Wave_Type ;

   procedure Print( w : Wave_Type ; filename : string := "" ; separator : String := " , ");
   
end wave;
