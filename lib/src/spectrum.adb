
with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_IO ;
with Ada.Float_Text_IO ; use Ada.Float_Text_IO ;

with Interfaces.C ; use Interfaces.C ;
with Ada.Numerics.Elementary_Functions ;
with Ada.Numerics.Complex_Types ;

with gsl.fft ;
package body spectrum is

   function Analyze( w : Wave.Wave_Type ) return Freq_TYpe is
      use Ada.Numerics.Complex_Types ;
      result : Freq_TYpe ;
      wt : gsl.fft.float_Wavetable ;
      ws : gsl.fft.float_Workspace ;
      --hcwt : gsl.fft.float_halfcomplex_wavetable ;
      freal : Ada.Numerics.Real_Arrays.Real_Vector ( w.Xs'range );
      status : int ;
      
   begin
      result := new FreqRecord_Type ;
      result.sample_rate := w.sample_rate ;
      freal := w.samples.all ;
      
      wt := gsl.fft.real_wavetable_float_alloc(w.Xs'Length) ;
      ws := gsl.fft.real_workspace_float_alloc(w.Xs'Length) ;
      status := gsl.fft.real_float_transform(freal(1)'Address,1,freal'Length,wt,ws);
      if status /= 0
      then
         Put("Error in transform"); Put(gsl.StrError(status)); New_Line ;
      end if ;
      result.cmplx := new Ada.Numerics.Complex_Arrays.Complex_Vector( w.Xs'first .. w.Xs'last/2 ) ;
      for i in w.Xs'first .. w.Xs'last/2
      loop
         result.cmplx(i) := Compose_From_Cartesian( freal(i*2-1) , freal(i*2) );
      end loop ;
      
      gsl.fft.real_wavetable_float_free(wt) ;
      gsl.fft.real_workspace_float_free(ws) ;
      return result ;
   end Analyze ;
   
   function Synthesize( f : Freq_Type ) return Wave.Wave_Type is
      use Ada.Numerics.Complex_Types;
      result : Wave.Wave_Type ;
      status : int ;
      hcwt : gsl.fft.float_halfcomplex_wavetable ;
      ws : gsl.fft.float_Workspace ;
      
   begin
      result := Wave.Create(f.sample_rate,0.0, float(f.cmplx'Length) * 2.0 / float(f.sample_rate) );
      for td in 1..result.samples'last/2-1
      loop
         result.samples(td*2-1) := Re( f.cmplx(td) ) ;
         result.samples(td*2) := Im( f.cmplx(td) ) ;
      end loop ;
      
      hcwt := gsl.fft.halfcomplex_wavetable_float_alloc(result.Xs'Length) ;
      ws := gsl.fft.real_workspace_float_alloc(result.Xs'Length) ;
      status := gsl.fft.halfcomplex_float_inverse( result.samples(1)'Address,1, result.samples'Length, hcwt,ws);

      gsl.fft.real_workspace_float_free(ws) ;
      gsl.fft.halfcomplex_wavetable_float_free(hcwt) ;
      
      return result ;
   end Synthesize ;

   
   procedure Print( f : Freq_Type ; filename : string := "" ) is
      use Ada.Numerics.Complex_Types ;
      
      ofile : File_TYpe ;
   begin
      if filename'length > 0
      then
         Create(ofile,Out_File,filename);
         Set_Output(ofile) ;
      end if ;
      for freq in 1..f.cmplx'Length
      loop
         Put( freq ) ; Put(" , ");
         
         Put( Re(f.cmplx(freq) )) ; Put (" , ");
         put( Im(f.cmplx(freq) )) ; Put( " , ");
         
         Put( Modulus(f.cmplx(freq) )) ; Put(" , ");
         Put( Argument(f.cmplx(freq) )) ;
         New_Line ;
      end loop ;
      if filename'length > 0
      then
         Close(ofile);
         Set_Output(Standard_Output);
      end if ;
      
   end Print ;
   
end spectrum;

