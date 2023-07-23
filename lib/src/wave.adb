with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

with Ada.Numerics.Elementary_Functions;
with systems;

package body wave is
   use Ada.Numerics.Complex_Types;
   use Ada.Numerics.Real_Arrays;
   use Ada.Numerics.Complex_Arrays;
   function max (l : float; r : float) return float is
   begin
      return float'Max (l, r);
   end max;

   function min (l : float; r : float) return float is
   begin
      return float'Min (l, r);
   end min;

   function Create
     (sample_rate : integer; start : float; span : float;
      default     : float := 0.0) return Wave_Type
   is
      result  : Wave_Type := new Wave_RecType;
      delta_t : float     := 1.0 / float (sample_rate);
      count   : integer   := 1 + integer (span * float (sample_rate));
   begin
      result.sample_rate := sample_rate;
      result.start       := start;
      result.deltax      := delta_t;
      result.Xs          := new Real_Vector (1 .. count);
      result.samples     := new Real_Vector (1 .. count);
      result.Xs (1)      := start;
      result.samples (1) := default;
      for r in 1 + result.samples'First .. result.samples'Last loop
         result.Xs (r)      := result.Xs (r - 1) + delta_t;
         result.samples (r) := default;
      end loop;
      return result;
   end Create;
   function Create
     (sample_rate : integer; start : float; span : float;
      values : access Ada.Numerics.Real_Arrays.Real_Vector) return Wave_Type
   is
      result  : Wave_Type := new Wave_RecType;
      delta_t : float     := 1.0 / float (sample_rate);
      count   : integer   := 1 + integer (span * float (sample_rate));

   begin
      -- if Verbose
      -- then
      Put ("Creating wave with ");
      Put (count);
      Put (" samples");
      New_Line;
      Put ("Initial data length ");
      Put (values'Length);
      New_Line;
      -- end if;

      result.start   := start;
      result.deltax  := delta_t;
      result.Xs      := new Real_Vector (1 .. count);
      result.samples := values;
      result.Xs (1)  := start;
      for r in 1 + result.samples'First .. result.samples'Last loop
         result.Xs (r) := result.Xs (r - 1) + delta_t;
      end loop;
      return result;
   end Create;

   function CreateComplex
     (sample_rate : integer; start : float; span : float;
      default : Ada.Numerics.Complex_Types.Complex := (Re => 0.0, Im => 0.0))
      return Wave_Type
   is
      result  : Wave_Type := new Wave_RecType (real => false);
      delta_t : float     := 1.0 / float (sample_rate);
      count   : integer   := 1 + integer (span * float (sample_rate));
   begin
      result.sample_rate := sample_rate;
      result.start       := start;
      result.deltax      := delta_t;
      result.Xs          := new Real_Vector (1 .. count);
      result.csamples    := new Complex_Vector (1 .. count);

      result.Xs (1)       := start;
      result.csamples (1) := default;
      for r in 1 + result.csamples'First .. result.csamples'Last loop
         result.Xs (r)       := result.Xs (r - 1) + delta_t;
         result.csamples (r) := default;
      end loop;
      return result;
   end CreateComplex;

   function Create (like : Wave_Type; length : Integer := 0) return Wave_Type
   is

      result    : wave_type := new Wave_RecType (like.real);
      resultlen : integer;
      bigger    : boolean   := false;
   begin
      result.sample_rate := like.sample_rate;
      result.start       := like.start;
      result.deltax      := like.deltax;
      if length > 0 then
         resultlen := length;
      else
         resultlen := like.Xs'Length;
      end if;
      if resultlen > like.Xs'Length then
         bigger                    := true;
         result.Xs (like.Xs'Range) := like.Xs.all;
         for xp in like.Xs'Last + 1 .. result.Xs'Last loop
            result.Xs (xp) := result.Xs (xp - 1);
         end loop;
      else
         result.Xs.all := like.Xs (result.Xs'Range);
      end if;

      case result.real is
         when true =>
            result.samples := new Real_Vector (1 .. resultlen);
            if bigger then
               result.samples (like.samples'Range) := like.samples.all;
               result.samples (like.samples'Last + 1 .. result.samples'Last) :=
                 (others => 0.0);
            else
               result.samples.all := like.samples (result.samples'Range);
            end if;
         when false =>
            result.csamples := new Complex_Vector (1 .. resultlen);
            if bigger then
               result.csamples (like.csamples'Range) := like.csamples.all;
               result.csamples
                 (like.csamples'Last + 1 .. result.csamples'Last) :=
                 (others => (Re => 0.0, Im => 0.0));
            else
               result.csamples.all := like.csamples (result.csamples'Range);
            end if;
      end case;

      return result;
   end Create;

   procedure Slide (W : in out Wave_Type; s : float) is
   begin
      for samp in w.Xs'Range loop
         case w.real is
            when true =>
               w.samples (samp) := s + w.samples (samp);
            when false =>
               w.csamples (samp) := s + w.csamples (samp);
         end case;
      end loop;
   end Slide;
   procedure Slide (W : in out Wave_Type; c : complex) is
   begin
      case w.real is
         when true =>
            raise Program_Error with "Slide by complex value of real vector";
         when false =>
            for samp in w.Xs'Range loop
               w.csamples (samp) := w.csamples (samp) + c;
            end loop;
      end case;
   end Slide;

   --  procedure Normalize( w : in out Wave_Type ) is
   --     n2 : float := Norm(w,2) ;
   --     s : systems.Scale := system.Scale( factor => 1.0 / n2 ) ;
   --  begin
   --     systems.Transform(s , w ) ;
   --  end Normalize ;
   function Normalize (w : Wave_Type) return Wave_Type is
      n2 : float         := Norm (w, 2);
      s  : systems.Scale := systems.Scale'(factor => 1.0 / n2);
   begin
      return systems.Transform (s, w);
   end Normalize;

   function InnerProduct (x : Wave_Type; y : Wave_Type) return Complex is
      result : Complex := (Re => 0.0, Im => 0.0);
   begin
      if x.sample_rate /= y.Sample_Rate or x.real /= x.real or
        x.Xs'Length /= y.Xs'Length
      then
         raise PRogram_Error with "+ Incompatible Waves";
      end if;
      for idx in x.Xs'Range loop
         case x.real is
            when true =>
               result.Re := result.Re + x.samples (idx) * y.samples (idx);
            when false =>
               result :=
                 result + x.csamples (idx) * Conjugate (y.csamples (idx));
         end case;
      end loop;
      return result;
   end InnerProduct;
   function Angle (x : Wave_Type; y : Wave_Type) return float is
      use Ada.Numerics.Elementary_Functions;
      ip       : Complex;
      npx, npy : float;
   begin
      ip  := InnerProduct (x, y);
      npx := Norm (x, 2);
      npy := Norm (y, 2);
      return ArcCos (ip.Re / (npx * npy));
   end Angle;

   function Orthogonal (x : Wave_Type; y : Wave_Type) return boolean is
   begin
      return Angle (x, y) < epsilon;
   end Orthogonal;

   procedure Generate (w : in out Wave_Type; g : in out Generator'Class) is
   begin
      for samp in w.Xs'Range loop
         w.samples (samp) := Value (g, w.Xs (samp));
      end loop;
   end Generate;
   procedure Initialize (w : in out Wave_Type; wg : in out WGenerator'Class) is
   begin
      Initialize (wg, w);
   end Initialize;

   ------------------------------------------------
   function Combine (Left : Wave_Type; Right : Wave_Type) return Wave_Type is
      result      : Wave_Type;
      sample_rate : integer;
      start       : float;
      finallast   : float;

   begin

      if Left.sample_rate /= Right.Sample_Rate or Left.real /= Right.real then
         raise PRogram_Error with "+ Incompatible Waves";
      end if;

      sample_rate := left.sample_rate;
      start       := min (Left.start, Right.start);

      finallast := max (Left.Xs (Left.Xs'Last), Right.Xs (Right.Xs'Last));
      if left.real then
         result := Create (sample_rate, start, finallast);
      else
         result := CreateComplex (sample_rate, start, finallast);
      end if;
      return result;
   end Combine;

   function "+" (Left : Wave_Type; Right : Wave_Type) return Wave_Type is
      result : Wave_Type;
      fp     : integer;
   begin

      if Left.start > Right.start then
         return "+" (Right, Left);
      end if;

      result := Combine (Left, Right);

      for lx in Left.Xs'Range loop
         case result.real is
            when true =>
               result.samples (lx) := left.samples (lx);
            when false =>
               result.csamples (lx) := left.csamples (lx);
         end case;
      end loop;

      fp := 1;
      while fp <= result.Xs'Length loop
         if abs (result.Xs (fp) - Right.Xs (1)) < epsilon then
            for rp in right.Xs'Range loop
               case result.real is
                  when true =>
                     result.samples (fp + rp - 1) :=
                       result.samples (fp + rp - 1) + right.samples (rp);
                  when false =>
                     result.csamples (fp + rp - 1) :=
                       result.csamples (fp + rp - 1) + right.csamples (rp);
               end case;
            end loop;
            return result;
         end if;
         fp := fp + 1;
      end loop;

      return result;
   end "+";
   function "-" (Left : Wave_TYpe; Right : Wave_TYpe) return Wave_Type is
      result : Wave_Type;
      fp     : integer;
   begin

      if Left.start > Right.start then
         result := "-" (Right, Left);
         for rx in result.Xs'Range loop
            case result.real is
               when true =>
                  result.samples (rx) := -result.samples (rx);
               when false =>
                  result.csamples (rx) := -result.csamples (rx);
            end case;
         end loop;
         return result;
      end if;

      result := Combine (Left, Right);

      for lx in Left.Xs'Range loop
         case result.real is
            when true =>
               result.samples (lx) := left.samples (lx);
            when false =>
               result.csamples (lx) := left.csamples (lx);
         end case;
      end loop;

      fp := 1;
      while fp <= result.Xs'Length loop
         if abs (result.Xs (fp) - Right.Xs (1)) < epsilon then
            for rp in right.Xs'Range loop
               case result.real is
                  when true =>
                     result.samples (fp + rp - 1) :=
                       result.samples (fp + rp - 1) - right.samples (rp);
                  when false =>
                     result.csamples (fp + rp - 1) :=
                       result.csamples (fp + rp - 1) - right.csamples (rp);
               end case;
            end loop;
            return result;
         end if;
         fp := fp + 1;
      end loop;

      return result;
   end "-";

   function "*" (Left : Wave_Type; Right : Wave_Type) return Wave_Type is
      result : Wave_Type;
      fp     : integer;
   begin

      if Left.start > Right.start then
         return "*" (Right, Left);
      end if;

      result := Combine (Left, Right);

      for lx in Left.Xs'Range loop
         case result.real is
            when true =>
               result.samples (lx) := left.samples (lx);
            when false =>
               result.csamples (lx) := left.csamples (lx);
         end case;
      end loop;

      fp := 1;
      while fp <= result.Xs'Length loop
         if abs (result.Xs (fp) - Right.Xs (1)) < epsilon then
            for rp in right.Xs'Range loop
               case result.real is
                  when true =>
                     result.samples (fp + rp - 1) :=
                       result.samples (fp + rp - 1) * right.samples (rp);
                  when false =>
                     result.csamples (fp + rp - 1) :=
                       result.csamples (fp + rp - 1) * right.csamples (rp);
               end case;
            end loop;
            return result;
         end if;
         fp := fp + 1;
      end loop;

      return result;
   end "*";

   function "/" (Left : Wave_TYpe; Right : Wave_TYpe) return Wave_Type is
      result : Wave_Type;
      fp     : integer;
   begin

      if Left.start > Right.start then
         result := "/" (Right, Left);
         for rx in result.Xs'Range loop
            case result.real is
               when true =>
                  result.samples (rx) := 1.0 / result.samples (rx);
               when false =>
                  result.csamples (rx) := 1.0 / result.csamples (rx);
            end case;
         end loop;
         return result;
      end if;

      result := Combine (Left, Right);

      for lx in Left.Xs'Range loop
         case result.real is
            when true =>
               result.samples (lx) := left.samples (lx);
            when false =>
               result.csamples (lx) := left.csamples (lx);
         end case;
      end loop;

      fp := 1;
      while fp <= result.Xs'Length loop
         if abs (result.Xs (fp) - Right.Xs (1)) < epsilon then
            for rp in right.Xs'Range loop
               case result.real is
                  when true =>
                     result.samples (fp + rp - 1) :=
                       result.samples (fp + rp - 1) / right.samples (rp);
                  when false =>
                     result.csamples (fp + rp - 1) :=
                       result.csamples (fp + rp - 1) / right.csamples (rp);
               end case;
            end loop;
            return result;
         end if;
         fp := fp + 1;
      end loop;

      return result;
   end "/";

   function Norm (w : Wave_Type; p : integer := 2) return float is
      use Ada.Numerics.Elementary_Functions;
      result : float := 0.0;
      np     : float := float (p);
      temp   : float;
   begin
      for rx in w.samples'Range loop
         case w.real is
            when true =>
               temp := abs (w.samples (rx));
            when false =>
               temp := Modulus (w.csamples (rx));
         end case;
         result := result + temp**np;
      end loop;
      return result**(1.0 / np);
   end Norm;
   function Energy (w : Wave_Type) return float is
   begin
      return Norm (w, 2);
   end Energy;

   function Max (w : Wave_Type) return float is
      temp : float := float'Safe_Small;
   begin

      for rx in w.Xs'Range loop
         case w.real is
            when true =>
               if temp < w.samples (rx) then
                  temp := w.samples (rx);
               end if;
            when false =>
               if temp < Modulus (w.csamples (rx)) then
                  temp := Modulus (w.csamples (rx));
               end if;
         end case;
      end loop;
      return temp;
   end Max;
   --
   function Min (w : Wave_Type) return float is
      temp : float := float'Safe_Large;
   begin

      for rx in w.Xs'Range loop
         case w.real is
            when true =>
               if temp > w.samples (rx) then
                  temp := w.samples (rx);
               end if;
            when false =>
               if temp > Modulus (w.csamples (rx)) then
                  temp := Modulus (w.csamples (rx));
               end if;
         end case;
      end loop;
      return temp;
   end Min;

   function Apply
     (w : windows.Window_Type'Class; wi : Wave_Type; offset : integer)
      return Wave_Type
   is
      result : Wave_Type;
   begin
      result :=
        Wave.Create
          (wi.sample_rate, wi.Xs (offset + wi.Xs'First),
           (float (w.factors'Length - 1)) * wi.deltax);
      for valp in result.Xs'Range loop
         result.samples (valp) :=
           wi.samples (wi.Samples'First + offset + valp) * w.factors (valp);
      end loop;
      return result;
   end Apply;

   procedure Print
     (w : Wave_Type; filename : String := ""; separator : String := " , ")
   is
      ofile : File_Type;
   begin
      if filename'Length > 0 then
         Create (ofile, Out_File, filename);
         Set_Output (ofile);
      end if;

      for s in w.Xs'Range loop
         Put (w.Xs (s));
         Put (separator);
         case w.real is
            when true =>
               Put (w.samples (s));
            when false =>
               Put (w.csamples (s).Re);
               Put (separator);
               Put (w.csamples (s).Im);
               Put (separator);
         end case;
         New_Line;
      end loop;

      if filename'Length > 0 then
         Close (ofile);
         Set_Output (Standard_Output);
      end if;
   end Print;

end wave;
