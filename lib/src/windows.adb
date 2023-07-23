with Ada.Float_Text_IO;   use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;

with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;
package body windows is
   procedure Generate (h : in out Hanning_Window; length : Integer) is
      shift : Integer := length / 2;
   begin
      h.factors := new Real_Vector (1 .. length);
      for n in h.factors'Range loop
         h.factors (n) :=
           0.5 +
           0.5 *
             Cos (2.0 * Ada.Numerics.Pi * Float (n - shift) / Float (length));
      end loop;
   end Generate;

   procedure Generate (h : in out Hamming_Window; length : Integer) is
      shift : Integer := length / 2;
   begin
      h.factors := new Real_Vector (1 .. length);
      for n in h.factors'Range loop
         h.factors (n) :=
           0.54 +
           0.46 *
             Cos (2.0 * Ada.Numerics.Pi * Float (n - shift) / Float (length));
      end loop;
   end Generate;
   procedure Print (w : Window_Type'Class) is
   begin
      for wf in w.factors'Range loop
         Put (wf);
         Put (" ");
         Put (w.factors (wf));
         New_Line;
      end loop;
   end Print;

end windows;
