with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_io; use Ada.Text_IO;

with signal.chirp ;
with wave ;

procedure Chirp is
   chirpiness : float := 0.1;
   amplitude : float := 1.0;
   startfreq : Integer := 220 ;
   endfreq : Integer := 440 ;
begin
   if Argument_Count < 1
   then
      Put_Line("usage: chirp outputfilename [chirpiness=0.1 [amplitude=1.0 [startfreq=220 endfreq=220]]]");
      return;
   end if;
   if Argument_Count > 1
   then
      chirpiness := float'Value(Argument(2));
      if Argument_Count > 2
      then
         amplitude := float'Value(Argument(3));
         if Argument_Count > 4
         then
            startfreq := Integer'Value(Argument(4));
            endfreq := Integer'Value(Argument(5));
         end if;
      end if ;
   end if;
   declare
      ch : signal.chirp.LinearChirp := (amplitude => amplitude ,
                                        chirpiness => chirpiness ,
                                        startfreq => startfreq ,
                                        endfreq => endfreq ) ;
      chw : Wave.Wave_Type := Wave.Create(10000, 0.0 , 1.0);
   begin
      signal.chirp.Initialize(ch,chw);
      wave.Generate(chw,ch);
      Wave.Print(chw,Argument(1));
   end ;
end Chirp;
