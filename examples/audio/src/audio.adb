with Ada.Numerics;     use Ada.Numerics;
with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO;      use Ada.Text_IO;
with Interfaces.C.Strings; use Interfaces.C.Strings;
--with Interfaces.C; use Interfaces.C;

with wave;

with sndfile;

procedure Audio is
   soundfilename : constant String := Argument(1) ;
   soundfile : sndfile.File_Type ;
   info : sndfile.SF_INFO;
   sndwave : wave.Wave_Type;
   fragment : sndfile.AudioFragment_Type;
   xptr : Integer := 1;
   wptr : Integer := 1;
begin
   Put_Line( Interfaces.C.Strings.Value(sndfile.Version) );
   soundfile := sndfile.Open(soundfilename);
   info := sndfile.Info(soundfile);
   sndwave := wave.Create(Integer(info.samplerate), 
                          0.0 , 
                          Float(info.frames) * 1.0 / Float(info.samplerate)) ;
   --for x in 1..sndwave.Xs'Length
   xptr := sndwave.Xs'First ;
   loop
      begin
         fragment := sndfile.Read(soundfile,sndwave.Xs(xptr),1.0);
      exception
         when others => exit;
      end ;
      for frsample in fragment.ch1'Range
      loop
         sndwave.samples(xptr) := fragment.ch1(frsample);
         xptr := xptr + 1;
      end loop;
      if xptr > sndwave.Xs'Length
      then
         exit;
      end if;
   end loop ;
   sndfile.Close(soundfile);
   wave.Print(sndwave,soundfilename & ".csv" );
end Audio;
