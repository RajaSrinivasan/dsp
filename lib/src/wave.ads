with Ada.Numerics.Complex_Types; use Ada.Numerics.Complex_Types;
with Ada.Numerics.Real_Arrays;
with Ada.Numerics.Complex_Arrays;

with windows;

package wave is
   Verbose : boolean := false;
   epsilon : constant Float := 0.000_1;
   function max (l : Float; r : Float) return Float;
   pragma Inline (max);
   function min (l : Float; r : Float) return Float;
   pragma Inline (min);

   type Wave_RecType (real : Boolean := True) is limited record
      sample_rate : Integer;
      start       : Float;
      deltax      : Float;
      Xs          : access Ada.Numerics.Real_Arrays.Real_Vector;
      case real is
         when True =>
            samples : aliased access Ada.Numerics.Real_Arrays.Real_Vector;
         when False =>
            csamples : access Ada.Numerics.Complex_Arrays.Complex_Vector;
      end case;
   end record;

   type Wave_Type is access Wave_RecType;

   function Create
     (sample_rate : Integer; start : Float; span : Float;
      default     : Float := 0.0) return Wave_Type;

   function Create
     (sample_rate : Integer; start : Float; span : Float;
      values : access Ada.Numerics.Real_Arrays.Real_Vector) return Wave_Type;

   function CreateComplex
     (sample_rate : Integer; start : Float; span : Float;
      default : Ada.Numerics.Complex_Types.Complex := (Re => 0.0, Im => 0.0))
      return Wave_Type;

   function Synthesize
      (sample_rate : Integer; start : Float; span : Float; filename : String) 
      return Wave_Type ;

   function Create (like : Wave_Type; length : Integer := 0) return Wave_Type;
   function Segment (w : Wave_Type; startx : float ; span : float ) return Wave_Type;
   function Append(w : Wave_Type; from : Wave_Type) return Wave_Type ;

   function "+" (Left : Wave_Type; Right : Wave_Type) return Wave_Type;
   function "-" (Left : Wave_Type; Right : Wave_Type) return Wave_Type;
   function "*" (Left : Wave_Type; Right : Wave_Type) return Wave_Type;
   function "/" (Left : Wave_Type; Right : Wave_Type) return Wave_Type;

   type Generator is interface;
   function Value (g : in out Generator; arg : Float) return Float is abstract;

   type WGenerator is interface;
   procedure Initialize (wg : in out WGenerator; w : Wave_Type) is abstract;

   procedure Generate (w : in out Wave_Type; g : in out Generator'Class);
   procedure Initialize (w : in out Wave_Type; wg : in out WGenerator'Class);

   type NPGenerator is interface;
   procedure Generate
     (w : in out Wave_Type; g : in out NPGenerator'Class) is abstract;

   ------------------------------------
   type System is interface;
   function Transform (s : System; w : Wave_Type) return Wave_Type is abstract;
   procedure Transform (s : System; w : in out Wave_Type) is abstract;
   ------------------------------------

   function Normalize (w : Wave_Type) return Wave_Type;

   function Apply
     (w : windows.Window_Type'Class; wi : Wave_Type; offset : Integer)
      return Wave_Type;

   procedure Print
     (w : Wave_Type; filename : String := ""; separator : String := " , ");
   procedure Load
     (w : out Wave_Type; filename : String ; real : boolean := true ; separator : String := ",");

end wave;
