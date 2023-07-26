with wave; use wave;
package systems is

   type Identity is new wave.System with null record;
   function Transform (i : Identity; w : Wave_Type) return Wave_Type;
   procedure Transform (i : Identity; w : in out Wave_Type);

   type Scale is new wave.System with record
      factor : Float;
   end record;
   function Transform (s : Scale; w : Wave_Type) return Wave_Type;
   procedure Transform (s : Scale; w : in out Wave_Type);

   type Offset is new wave.System with record
      by : Float;
   end record;
   function Transform (o : Offset; w : Wave_Type) return Wave_Type;
   procedure Transform (o : Offset; w : in out Wave_Type);

   type Power is new wave.System with record
      p : Float;
   end record;
   function Transform (p : Power; w : Wave_Type) return Wave_Type;
   procedure Transform (p : Power; w : in out Wave_Type);
   Square : Power := (p => 2.0);

   type Shift is new wave.System with record
      slots : Integer;
   end record;
   function Transform (s : Shift; w : Wave_Type) return Wave_Type;
   procedure Transform (s : Shift; w : in out Wave_Type);

   type Slide is new wave.System with record
      offset : Float;
   end record;
   function Transform (s : Slide; w : Wave_Type) return Wave_Type;
   procedure Transform (s : Slide; w : in out Wave_Type);

   type Decimate is new wave.System with record
      factor : Integer;
   end record;
   function Transform (d : Decimate; w : Wave_Type) return Wave_Type;
   procedure Transform (d : Decimate; w : in out Wave_Type) is null;

   type PowerTime is new wave.System with record
      p : Integer;
   end record;
   function Transform (p : PowerTime; w : Wave_Type) return Wave_Type;
   procedure Transform (p : PowerTime; w : in out Wave_Type) is null;
   SquareTime : PowerTime := (p => 2);

   -- Finite Impulse Response Filter
   -- with unity coefficients
   type MovingAverage is new wave.System with record
      levels : Integer;
   end record;
   function Transform (m : MovingAverage; w : Wave_Type) return Wave_Type;
   procedure Transform (m : MovingAverage; w : in out Wave_Type);

   -- Infinite Impulse Response Filter
   -- One level feedback
   type RecursiveAverage is new wave.System with record
      fbweight : Float;
   end record;
   function Transform (r : RecursiveAverage; w : Wave_Type) return Wave_Type;
   procedure Transform (r : RecursiveAverage; w : in out Wave_Type);

end systems;
