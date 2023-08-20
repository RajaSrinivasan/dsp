package wave.properties is

   function Max (w : Wave_Type) return Float;           -- 1-Norm
   function Min (w : Wave_Type) return Float;
   function Norm (w : Wave_Type; p : Integer := 2) return Float;
   function Energy (w : Wave_Type) return Float;       -- 2-Norm

    function Mean( w : wave_type ) return Float;
    function sd( w : wave_type ) return Float ;
    function sd( w : wave_type ; mean : Float) return float ;


   function InnerProduct (x : Wave_Type; y : Wave_Type) return Complex;
   function Dot (x : Wave_Type; y : Wave_Type) return Complex renames
                         InnerProduct;

    function Angle (x : Wave_Type; y : Wave_Type) return Float;
    function Orthogonal (x : Wave_Type; y : Wave_Type) return Boolean;

    function Correlation( x : wave_type ; y : wave_type ) return Float ;
    function Covariance( x : wave_type ; y : wave_type ) return Float ;
    function Autocorrelation( x : wave_type ) return Wave_Type ;
    
end wave.properties ;
