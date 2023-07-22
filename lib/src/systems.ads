with Wave ; use Wave ;
package systems is

   
   type Identity is new wave.System with null record ;
   function Transform( i : Identity ; w : Wave_Type ) return Wave_Type ;
   procedure Transform( i : Identity ; w : in out Wave_TYpe ) ;
   
   type Scale is new Wave.System with 
      record
         factor : float ;
      end record ;
   function Transform( s : Scale ; w : Wave_Type ) return Wave_Type ;
   procedure Transform( s : Scale ; w : in out Wave_TYpe ) ;
   
   type Offset is new Wave.System with
      record
         by : float ;
      end record ;
   function Transform( o : Offset ; w : Wave_Type ) return Wave_Type ;
   procedure Transform( o : Offset ; w : in out Wave_TYpe ) ;
   
   type Power is new Wave.System with
      record
         p : float ;
      end record ;
   function Transform( p : Power ; w : Wave_Type ) return Wave_Type ;
   procedure Transform( p : Power ; w : in out Wave_TYpe ) ;
   Square : Power := ( p => 2.0 ) ;
   
   type Shift is new Wave.System with
      record
         slots : integer ;
      end record ;
   function Transform( s : Shift ; w : Wave_Type ) return Wave_Type ;
   procedure Transform( s : Shift ; w : in out Wave_TYpe ) ;
   
   type Slide is new Wave.System with
      record
         offset : float ;
      end record ;
   function Transform( s : Slide ; w : Wave_Type ) return Wave_Type ;
   procedure Transform( s : Slide ; w : in out Wave_TYpe ) ;
   
   type Decimate is new Wave.System with
      record
         factor : integer ;
      end record ;
   function Transform( d : Decimate ; w : Wave_Type ) return Wave_Type ;
   procedure Transform(d : Decimate ; w : in out Wave_TYpe ) is null;
   
   type PowerTime is new Wave.System with
      record
         p : integer ;
      end record ;
   function Transform( p : PowerTime ; w : Wave_Type ) return Wave_Type ;
   procedure Transform(p : PowerTime ; w : in out Wave_TYpe ) is null ;
   SquareTime : PowerTime := ( p => 2 ) ;
   
   -- Finite Impulse Response Filter 
   -- with unity coefficients
   type MovingAverage is new Wave.System with
      record
         levels : integer ;
      end record ;
   function Transform( m : MovingAverage ; w : Wave_Type ) return Wave_Type ;
   procedure Transform( m : MovingAverage ; w : in out Wave_TYpe ) ;
   
   -- Infinite Impulse Response Filter
   -- One level feedback 
   type RecursiveAverage is new wave.System with
      record
         fbweight : float ;
      end record ;
   function Transform( r : RecursiveAverage ; w : Wave_Type ) return Wave_Type ;
   procedure Transform( r : RecursiveAverage ; w : in out Wave_TYpe );
   
   
end systems;
