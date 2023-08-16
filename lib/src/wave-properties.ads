package wave.properties is

   function Max (w : Wave_Type) return Float;           -- 1-Norm
   function Min (w : Wave_Type) return Float;
   function Norm (w : Wave_Type; p : Integer := 2) return Float;
   function Energy (w : Wave_Type) return Float;       -- 2-Norm

   function InnerProduct (x : Wave_Type; y : Wave_Type) return Complex;
   function Dot (x : Wave_Type; y : Wave_Type) return Complex renames
                         InnerProduct;

   function Angle (x : Wave_Type; y : Wave_Type) return Float;
   function Orthogonal (x : Wave_Type; y : Wave_Type) return Boolean;

end wave.properties ;
