with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO;      use Ada.Text_IO;

with signal.chirp;
with wave;

procedure EChirp is
   amplitude : Float   := 1.0;
   startfreq : Float := 220.0 ;
   endfreq   : Float := 440.0 ;
begin
   if Argument_Count < 1 then
      Put_Line
        ("usage: echirp outputfilename [amplitude=1.0 [startfreq=220 endfreq=440]]");
      return;
   end if;
   if Argument_Count > 1 then
      amplitude := Float'Value (Argument (2));
      if Argument_Count > 3 
      then
         startfreq := Float'Value (Argument (3));
         endfreq   := Float'Value (Argument (4));
      end if;
   end if;

   declare
      ch : signal.chirp.ExponentialChirp :=
        (amplitude  => amplitude, startfreq => startfreq, endfreq => endfreq);
      chw : wave.Wave_Type := wave.Create (1_000, 0.0, 1.0);
   begin
      signal.chirp.Initialize (ch, chw);
      signal.chirp.Generate (ch, chw);
      wave.Print (chw, Argument (1));
   end;
end EChirp;
