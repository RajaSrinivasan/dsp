with Ada.Numerics; use Ada.Numerics;
with Ada.Command_Line; use Ada.Command_Line ;
with Ada.Text_Io; use Ada.Text_IO;

with signal.sinusoid ;
with wave ;

procedure Sinusoid is
   freq : float := 1.0 ;
   amplitude : float := 1.0;
   phase : float := Pi/2.0 ;

begin
   if Argument_Count < 1
   then
      Put_Line("usage: sinusoid outputfilename [<frequency> [<amplitude> [<phase>]]]");
      return;
   end if;
   if Argument_Count >= 2
   then
      freq := float'Value(Argument(2));
      if Argument_Count >= 3
      then
         amplitude := float'Value(Argument(3));
         if Argument_Count >= 4
         then
            phase := float'Value(Argument(4));
         end if ;
      end if;
   end if; 
   declare
      sin : Signal.Sinusoid.Generator :=
         ( frequency => freq ,
            amplitude => amplitude ,
            phase => phase ) ;
      w : Wave.Wave_Type := Wave.Create(200,0.0,1.0);
   begin
      Wave.Generate( w , sin ) ;
      Wave.Print( w , Argument(1) );
   end ;
end Sinusoid ;