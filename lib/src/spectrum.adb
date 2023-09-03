with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;

with Interfaces.C; use Interfaces.C;
with Ada.Numerics.Elementary_Functions;
with Ada.Numerics.Complex_Types;


with gsl.fft;
package body spectrum is

   procedure Simplify(f : in out Freq_Type ; frac : float := 0.5) is
      keep : Integer := Integer(frac * Float(f.cmplx'Length)) ;
      use Ada.Numerics.Complex_Types;
   begin
      for i in keep+1 .. f.cmplx'Last
      loop
         f.cmplx(i) := Compose_From_Cartesian (0.0, 0.0); 
      end loop ;
   end Simplify;



   procedure Print (f : Freq_Type; filename : String := "") is
      use Ada.Numerics.Complex_Types;

      ofile : File_Type;
   begin
      if filename'Length > 0 then
         Create (ofile, Out_File, filename);
         Set_Output (ofile);
      end if;
      for freq in 1 .. f.cmplx'Length loop
         Put (freq);
         Put (" , ");

         Put (Re (f.cmplx (freq)));
         Put (" , ");
         Put (Im (f.cmplx (freq)));
         Put (" , ");

         Put (Modulus (f.cmplx (freq)));
         Put (" , ");
         Put (Argument (f.cmplx (freq)));
         New_Line;
      end loop;
      if filename'Length > 0 then
         Close (ofile);
         Set_Output (Standard_Output);
      end if;

   end Print;

end spectrum;
