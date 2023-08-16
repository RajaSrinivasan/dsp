with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

with Ada.Numerics.Elementary_Functions;
with GNAT.awk ;
with GNAT.current_exception;

with systems;
with wave.properties;
package body wave is
   use Ada.Numerics.Complex_Types;
   use Ada.Numerics.Real_Arrays;
   use Ada.Numerics.Complex_Arrays;
   function max (l : Float; r : Float) return Float is
   begin
      return Float'Max (l, r);
   end max;

   function min (l : Float; r : Float) return Float is
   begin
      return Float'Min (l, r);
   end min;

   function Create
     (sample_rate : Integer; start : Float; span : Float;
      default     : Float := 0.0) return Wave_Type
   is
      result  : Wave_Type := new Wave_RecType;
      delta_t : Float     := 1.0 / Float (sample_rate);
      count   : Integer   := 1 + Integer (span * Float (sample_rate));
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
     (sample_rate : Integer; start : Float; span : Float;
      values : access Ada.Numerics.Real_Arrays.Real_Vector) return Wave_Type
   is
      result  : Wave_Type := new Wave_RecType;
      delta_t : Float     := 1.0 / Float (sample_rate);
      count   : Integer   := 1 + Integer (span * Float (sample_rate));

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
     (sample_rate : Integer; start : Float; span : Float;
      default : Ada.Numerics.Complex_Types.Complex := (Re => 0.0, Im => 0.0))
      return Wave_Type
   is
      result  : Wave_Type := new Wave_RecType (real => False);
      delta_t : Float     := 1.0 / Float (sample_rate);
      count   : Integer   := 1 + Integer (span * Float (sample_rate));
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

      result    : Wave_Type := new Wave_RecType (like.real);
      resultlen : Integer;
      bigger    : Boolean   := False;
   begin
      result.sample_rate := like.sample_rate;
      result.start       := like.start;
      result.deltax      := like.deltax;
      if length > 0 then
         resultlen := length;
      else
         resultlen := like.Xs'Length;
      end if;
      result.Xs := new Real_Vector(1..resultlen);

      if resultlen > like.Xs'Length then
         bigger                    := True;
         result.Xs (like.Xs'Range) := like.Xs.all;
         for xp in like.Xs'Last + 1 .. result.Xs'Last loop
            result.Xs (xp) := result.Xs (xp - 1);
         end loop;
      else
         result.Xs.all := like.Xs (result.Xs'Range);
      end if;

      case result.real is
         when True =>
            result.samples := new Real_Vector (1 .. resultlen);
            if bigger then
               result.samples (like.samples'Range) := like.samples.all;
               result.samples (like.samples'Last + 1 .. result.samples'Last) :=
                 (others => 0.0);
            else
               result.samples.all := like.samples (result.samples'Range);
            end if;
         when False =>
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

   function Append(w : Wave_Type; from : Wave_Type) return Wave_Type is
      result : Wave_Type ;
   begin
      result := Create( like => w , length => w.Xs'Length + from.Xs'Length );
      for x in w.Xs'Length + 1 .. result.Xs'Last
      loop
         result.Xs(x) := result.Xs(x-1) + result.deltax ;
         case result.real is
            when true => result.samples(x) := from.samples(x-w.Xs'Length);
            when false => result.csamples(x) := from.csamples(x-w.Xs'Length);
         end case ;
      end loop ;
      return result;
   end Append ;

   function Segment (w : Wave_Type; startx : float ; span : float ) return Wave_Type is
      result : Wave_Type := new Wave_RecType (w.real);
      count : Integer ;
      fromidx : Integer ;
   begin
      if span > w.deltax * Float(w.Xs'Length)
      then
         raise Program_Error with "Segment has to be smaller than the source" ;
      end if ;
      if startx + span > w.Xs(w.Xs'Last)
      then
         raise Program_Error with "Segment has to be within the source";
      end if;
      result.sample_rate := w.sample_rate;
      result.deltax := w.deltax ;
      count := Integer(span / result.deltax) + 1 ;
      result.Xs := new Real_Vector (1 .. count);
      case result.real is
         when true => 
               result.samples     := new Real_Vector (1 .. count);
         when false =>
               result.csamples    := new Complex_Vector (1 .. count);
      end case;
      fromidx := Integer(startx - w.Xs(1)/w.deltax);
      for x in result.Xs'Range
      loop
         fromidx := fromidx + 1;
         if fromidx > w.Xs'Length
         then
            fromidx := w.Xs'First ;
         end if ;
         result.Xs(x) := w.Xs(fromidx) ;
         case result.real is
            when true =>
               result.samples(x) := w.samples(fromidx);
            when false =>
               result.csamples(x) := w.csamples(fromidx);
         end case;
      end loop ;
      return result ;
   end Segment ;

   procedure Slide (W : in out Wave_Type; s : Float) is
   begin
      for samp in W.Xs'Range loop
         case W.real is
            when True =>
               W.samples (samp) := s + W.samples (samp);
            when False =>
               W.csamples (samp) := s + W.csamples (samp);
         end case;
      end loop;
   end Slide;
   procedure Slide (W : in out Wave_Type; c : Complex) is
   begin
      case W.real is
         when True =>
            raise Program_Error with "Slide by complex value of real vector";
         when False =>
            for samp in W.Xs'Range loop
               W.csamples (samp) := W.csamples (samp) + c;
            end loop;
      end case;
   end Slide;

   function Normalize (w : Wave_Type) return Wave_Type is
      n2 : Float         := wave.Properties.Norm (w, 2);
      s  : systems.Scale := systems.Scale'(factor => 1.0 / n2);
   begin
      return systems.Transform (s, w);
   end Normalize;

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

   function Combine (Left : Wave_Type; Right : Wave_Type) return Wave_Type is
      result      : Wave_Type;
      sample_rate : Integer;
      start       : Float;
      finallast   : Float;

   begin

      if Left.sample_rate /= Right.sample_rate or Left.real /= Right.real then
         raise Program_Error with "+ Incompatible Waves";
      end if;

      sample_rate := Left.sample_rate;
      start       := min (Left.start, Right.start);

      finallast := max (Left.Xs (Left.Xs'Last), Right.Xs (Right.Xs'Last));
      if Left.real then
         result := Create (sample_rate, start, finallast);
      else
         result := CreateComplex (sample_rate, start, finallast);
      end if;
      return result;
   end Combine;

   function "+" (Left : Wave_Type; Right : Wave_Type) return Wave_Type is
      result : Wave_Type;
      fp     : Integer;
   begin

      if Left.start > Right.start then
         return "+" (Right, Left);
      end if;

      result := Combine (Left, Right);

      for lx in Left.Xs'Range loop
         case result.real is
            when True =>
               result.samples (lx) := Left.samples (lx);
            when False =>
               result.csamples (lx) := Left.csamples (lx);
         end case;
      end loop;

      fp := 1;
      while fp <= result.Xs'Length loop
         if abs (result.Xs (fp) - Right.Xs (1)) < epsilon then
            for rp in Right.Xs'Range loop
               case result.real is
                  when True =>
                     result.samples (fp + rp - 1) :=
                       result.samples (fp + rp - 1) + Right.samples (rp);
                  when False =>
                     result.csamples (fp + rp - 1) :=
                       result.csamples (fp + rp - 1) + Right.csamples (rp);
               end case;
            end loop;
            return result;
         end if;
         fp := fp + 1;
      end loop;

      return result;
   end "+";
   function "-" (Left : Wave_Type; Right : Wave_Type) return Wave_Type is
      result : Wave_Type;
      fp     : Integer;
   begin

      if Left.start > Right.start then
         result := "-" (Right, Left);
         for rx in result.Xs'Range loop
            case result.real is
               when True =>
                  result.samples (rx) := -result.samples (rx);
               when False =>
                  result.csamples (rx) := -result.csamples (rx);
            end case;
         end loop;
         return result;
      end if;

      result := Combine (Left, Right);

      for lx in Left.Xs'Range loop
         case result.real is
            when True =>
               result.samples (lx) := Left.samples (lx);
            when False =>
               result.csamples (lx) := Left.csamples (lx);
         end case;
      end loop;

      fp := 1;
      while fp <= result.Xs'Length loop
         if abs (result.Xs (fp) - Right.Xs (1)) < epsilon then
            for rp in Right.Xs'Range loop
               case result.real is
                  when True =>
                     result.samples (fp + rp - 1) :=
                       result.samples (fp + rp - 1) - Right.samples (rp);
                  when False =>
                     result.csamples (fp + rp - 1) :=
                       result.csamples (fp + rp - 1) - Right.csamples (rp);
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
      fp     : Integer;
   begin

      if Left.start > Right.start then
         return "*" (Right, Left);
      end if;

      result := Combine (Left, Right);

      for lx in Left.Xs'Range loop
         case result.real is
            when True =>
               result.samples (lx) := Left.samples (lx);
            when False =>
               result.csamples (lx) := Left.csamples (lx);
         end case;
      end loop;

      fp := 1;
      while fp <= result.Xs'Length loop
         if abs (result.Xs (fp) - Right.Xs (1)) < epsilon then
            for rp in Right.Xs'Range loop
               case result.real is
                  when True =>
                     result.samples (fp + rp - 1) :=
                       result.samples (fp + rp - 1) * Right.samples (rp);
                  when False =>
                     result.csamples (fp + rp - 1) :=
                       result.csamples (fp + rp - 1) * Right.csamples (rp);
               end case;
            end loop;
            return result;
         end if;
         fp := fp + 1;
      end loop;

      return result;
   end "*";

   function "/" (Left : Wave_Type; Right : Wave_Type) return Wave_Type is
      result : Wave_Type;
      fp     : Integer;
   begin

      if Left.start > Right.start then
         result := "/" (Right, Left);
         for rx in result.Xs'Range loop
            case result.real is
               when True =>
                  result.samples (rx) := 1.0 / result.samples (rx);
               when False =>
                  result.csamples (rx) := 1.0 / result.csamples (rx);
            end case;
         end loop;
         return result;
      end if;

      result := Combine (Left, Right);

      for lx in Left.Xs'Range loop
         case result.real is
            when True =>
               result.samples (lx) := Left.samples (lx);
            when False =>
               result.csamples (lx) := Left.csamples (lx);
         end case;
      end loop;

      fp := 1;
      while fp <= result.Xs'Length loop
         if abs (result.Xs (fp) - Right.Xs (1)) < epsilon then
            for rp in Right.Xs'Range loop
               case result.real is
                  when True =>
                     result.samples (fp + rp - 1) :=
                       result.samples (fp + rp - 1) / Right.samples (rp);
                  when False =>
                     result.csamples (fp + rp - 1) :=
                       result.csamples (fp + rp - 1) / Right.csamples (rp);
               end case;
            end loop;
            return result;
         end if;
         fp := fp + 1;
      end loop;

      return result;
   end "/";

   function Apply
     (w : windows.Window_Type'Class; wi : Wave_Type; offset : Integer)
      return Wave_Type
   is
      result : Wave_Type;
   begin
      result :=
        wave.Create
          (wi.sample_rate, wi.Xs (offset + wi.Xs'First),
           (Float (w.factors'Length - 1)) * wi.deltax);
      for valp in result.Xs'Range loop
         result.samples (valp) :=
           wi.samples (wi.samples'First + offset + valp) * w.factors (valp);
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
            when True =>
               Put (w.samples (s));
            when False =>
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

   procedure Load
     (w : out Wave_Type; filename : String ; real : boolean := true ; separator : String := ",") is
      use type GNAT.awk.Count;
      sigcount : Integer := 0;
      result : constant Wave_Type := new Wave_RecType(real) ;
   begin
      GNAT.awk.Set_Field_Separators(separator);
      begin
         Put_Line(filename);
         GNAT.awk.Open(filename => filename);
      exception
         when others => Put("Exception opening "); Put_Line(filename);
      end ;
      while not GNAT.awk.End_Of_Data
      loop
         GNAT.awk.Get_Line;
         sigcount := sigcount + 1;
         case real is
            when true => 
                  if GNAT.awk.Number_Of_Fields /= 2
                  then
                     Put(Integer(GNAT.awk.Number_Of_Fields)); Put_Line("Not a file of real data");
                  end if ;
            when false =>
                  if GNAT.awk.Number_Of_Fields /= 3
                  then
                     Put_Line("Not a file of complex data");
                  end if ;
         end case;
      end loop ;
      GNAT.awk.Close(GNAT.awk.Current_Session.all);
      
      result.Xs := new Real_Vector (1 .. sigcount);
      case real is
         when true => 
            result.samples     := new Real_Vector (1 .. sigcount);
         when false => null;
      end case ;
      sigcount := 0;
      GNAT.awk.Open(filename => filename);
      while not GNAT.awk.End_Of_Data
      loop
         GNAT.awk.Get_Line;
         sigcount := sigcount + 1;
         result.Xs(sigcount) := Float'Value( GNAT.awk.Field(1));
         case real is
            when true => 
                  result.samples(sigcount) := float'Value(GNAT.awk.Field(2));
            when false =>
                  null;
         end case;
      end loop ;
      GNAT.awk.Close(GNAT.awk.Current_Session.all);

      result.sample_rate := Integer(1.0 / (result.Xs(2) - result.Xs(1))) ;
      w := result;
   exception
      when others => 
            Put_Line(GNAT.current_exception.Exception_Information);
            raise;
   end Load ;

end wave;
