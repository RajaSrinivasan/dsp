with Ada.Numerics.Elementary_Functions;
with Ada.Numerics.Complex_Elementary_Functions;
with Ada.Numerics.Complex_Types;
with Ada.Numerics.Real_Arrays;    use Ada.Numerics.Real_Arrays;
with Ada.Numerics.Complex_Arrays; use Ada.Numerics.Complex_Arrays;

package body systems is

   function Allocate (w : Wave_Type; length : Integer := 0) return Wave_Type is
      result : Wave_Type := new Wave_RecType (w.real);
   begin
      result.sample_rate := w.sample_rate;
      result.start       := w.start;
      result.deltax      := w.deltax;
      if length > 0 then
         if length <= w.Xs'Length then
            result.Xs := new Real_Vector (1 .. length);
         else
            raise Program_Error with "Allocate incompatible length";
         end if;
      else
         result.Xs := new Real_Vector (w.Xs'Range);
      end if;
      result.Xs.all := w.Xs (result.Xs'Range);
      return result;
   end Allocate;

   function Transform (i : Identity; w : Wave_Type) return Wave_Type is
      result : Wave_Type := Allocate (w);
   begin
      case result.real is
         when True =>
            result.samples     := new Real_Vector (w.samples'Range);
            result.samples.all := w.samples.all;
         when False =>
            result.csamples     := new Complex_Vector (w.csamples'Range);
            result.csamples.all := w.csamples.all;
      end case;
      return result;
   end Transform;
   procedure Transform (i : Identity; w : in out Wave_Type) is
   begin
      null;
   end Transform;

   function Transform (s : Scale; w : Wave_Type) return Wave_Type is
      use Ada.Numerics.Complex_Types;
      it     : Identity;
      result : Wave_Type := Transform (it, w);
   begin
      Transform (s, result);
      return result;
   end Transform;
   procedure Transform (s : Scale; w : in out Wave_Type) is
      use Ada.Numerics.Complex_Types;
   begin
      for valp in w.Xs'Range loop
         case w.real is
            when True =>
               w.samples (valp) := w.samples (valp) * s.factor;
            when False =>
               w.csamples (valp) := w.csamples (valp) * s.factor;
         end case;
      end loop;
   end Transform;

   function Transform (o : Offset; w : Wave_Type) return Wave_Type is
      use Ada.Numerics.Complex_Types;
      it     : Identity;
      result : Wave_Type := Transform (it, w);
   begin
      Transform (o, result);
      return result;
   end Transform;
   procedure Transform (o : Offset; w : in out Wave_Type) is
      use Ada.Numerics.Complex_Types;
   begin
      for valp in w.Xs'Range loop
         case w.real is
            when True =>
               w.samples (valp) := w.samples (valp) + o.by;
            when False =>
               w.csamples (valp) := w.csamples (valp) + o.by;
         end case;
      end loop;
   end Transform;
   function Transform (p : Power; w : Wave_Type) return Wave_Type is
      it     : Identity;
      result : Wave_Type := Transform (it, w);
   begin
      Transform (p, result);
      return result;
   end Transform;
   procedure Transform (p : Power; w : in out Wave_Type) is
      use Ada.Numerics.Complex_Elementary_Functions;
      use Ada.Numerics.Elementary_Functions;
   begin
      for valp in w.Xs'Range loop
         case w.real is
            when True =>
               w.samples (valp) := w.samples (valp)**p.p;
            when False =>
               w.csamples (valp) := w.csamples (valp)**p.p;
         end case;
      end loop;
   end Transform;

   function Transform (s : Shift; w : Wave_Type) return Wave_Type is
      it     : Identity;
      result : Wave_Type := Transform (it, w);
   begin
      Transform (s, result);
      return result;
   end Transform;

   procedure Transform (s : Shift; w : in out Wave_Type) is
      fptr : Integer ;
   begin
      for valp in w.Xs'Range loop
         fptr := valp + s.slots ;
         if fptr > w.Xs'Length
         then
            fptr := w.Xs'First;
         end if;
         case w.real is
            when True =>
               w.samples (valp) := w.samples (fptr);
            when False =>
               w.csamples (valp) := w.csamples (fptr);
         end case;
      end loop;
   end Transform;

   function Transform (s : Slide; w : Wave_Type) return Wave_Type is
      use Ada.Numerics.Complex_Types;
      it     : Identity;
      result : Wave_Type := Transform (it, w);
   begin
      Transform (s, result);
      return result;
   end Transform;

   procedure Transform (s : Slide; w : in out Wave_Type) is
      use Ada.Numerics.Complex_Types;
   begin
      for valp in w.Xs'Range loop
         case w.real is
            when True =>
               w.samples (valp) := w.samples (valp) + s.offset;
            when False =>
               w.csamples (valp) := w.csamples (valp) + s.offset;
         end case;
      end loop;
   end Transform;

   function Transform (d : Decimate; w : Wave_Type) return Wave_Type is
      result : Wave_Type := Allocate (w, w.Xs'Length / d.factor);
   begin
      for valp in result.Xs'Range loop
         case result.real is
            when True =>
               result.samples (valp) := w.samples (valp * d.factor);
            when False =>
               result.csamples (valp) := w.csamples (valp * d.factor);
         end case;
      end loop;
      return result;
   end Transform;

   function Transform (p : PowerTime; w : Wave_Type) return Wave_Type is
      use Ada.Numerics.Elementary_Functions;
      use Ada.Numerics.Complex_Elementary_Functions;
      resultlen : Integer;
   begin
      resultlen :=
        Integer
          (Float'Floor
             (10.0**(Log (Float (w.Xs'Length), 10.0) / Float (p.p))));
      declare
         result : Wave_Type := Allocate (w, resultlen);
      begin
         for valp in result.Xs'Range loop
            case result.real is
               when True =>
                  result.samples (valp) := w.samples (valp**p.p);
               when False =>
                  result.csamples (valp) := w.csamples (valp**p.p);
            end case;
         end loop;
         return result;
      end;
   end Transform;

   function Transform (m : MovingAverage; w : Wave_Type) return Wave_Type is
      it     : Identity;
      result : Wave_Type := Transform (it, w);
   begin
      Transform (m, result);
      return result;
   end Transform;
   procedure Transform (m : MovingAverage; w : in out Wave_Type) is
      use Ada.Numerics.Complex_Types;
      cumsum     : Float   := 0.0;
      cumcompsum : Complex := (Re => 0.0, Im => 0.0);
      nidx       : Integer;
   begin
      for valp in w.Xs'Range loop
         cumsum     := 0.0;
         cumcompsum := (Re => 0.0, Im => 0.0);
         for n in 1 .. m.levels loop
            nidx := valp - n;
            if nidx < 0 then
               nidx := nidx + w.Xs'Length;
            end if;
            case w.real is
               when True =>
                  cumsum := cumsum + w.samples (nidx);
               when False =>
                  cumcompsum := cumcompsum + w.csamples (nidx);
            end case;
         end loop;
         case w.real is
            when True =>
               w.samples (valp) := cumsum / Float (m.levels);
            when False =>
               w.csamples (valp) := cumcompsum / Float (m.levels);
         end case;
      end loop;
   end Transform;

   function Transform (r : RecursiveAverage; w : Wave_Type) return Wave_Type is
      it     : Identity;
      result : Wave_Type := Transform (it, w);
   begin
      Transform (r, result);
      return result;
   end Transform;
   procedure Transform (r : RecursiveAverage; w : in out Wave_Type) is
      use Ada.Numerics.Complex_Types;
      idx : Integer;
   begin
      for valp in w.Xs'Range loop
         idx := valp - 1;
         if valp = 1 then
            idx := w.Xs'Length;
         end if;
         case w.real is
            when True =>
               w.samples (valp) :=
                 w.samples (valp) + r.fbweight * w.samples (idx);
            when False =>
               w.csamples (valp) :=
                 w.csamples (valp) + w.csamples (idx) * r.fbweight;
         end case;
      end loop;
   end Transform;

end systems;
