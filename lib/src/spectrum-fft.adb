with Interfaces.C; use Interfaces.C;
with Ada.Numerics.Complex_Types;

with gsl.errno ; use gsl.errno ;
with gsl.vector_double ;
with gsl.fft.real ;
with gsl.fft.halfcomplex ;
package body spectrum.fft is
   function Analyze (w : wave.Wave_Type) return Freq_Type is
      use Ada.Numerics.Complex_Types;
      result : Freq_Type;
      wt     : access gsl.fft.real.gsl_fft_real_wavetable ;
      ws     : access gsl.fft.real.gsl_fft_real_workspace ;
      --freal  : Ada.Numerics.Real_Arrays.Real_Vector (w.Xs'Range);
      frealgsl : access gsl.vector_double.gsl_vector ;
      status : int;

   begin
      result             := new FreqRecord_Type;
      result.sample_rate := w.sample_rate;

      -- freal              := w.samples.all;
      frealgsl := gsl.vector_double.To_C( w.samples.all );
      wt     := gsl.fft.real.wavetable_alloc (w.Xs'Length);
      ws     := gsl.fft.real.workspace_alloc (w.Xs'Length);
      status :=
        gsl.fft.real.transform
          (frealgsl.data, 1, w.Xs'Length , wt, ws);
      if status /= 0 then
        raise Program_Error with "Error in Analyze transform " & gsl.errno.StrError (status);
      end if;
      result.cmplx :=
        new Ada.Numerics.Complex_Arrays.Complex_Vector
          (w.Xs'First .. w.Xs'Last / 2);
      for i in w.Xs'First .. w.Xs'Last / 2 loop
         result.cmplx (i) :=
           Compose_From_Cartesian (float(gsl.vector_double.get(frealgsl,size_t(i*2-1))) , 
                                   float(gsl.vector_double.get(frealgsl,size_t(i * 2))));
      end loop;

      gsl.fft.real.wavetable_free (wt);
      gsl.fft.real.workspace_free (ws);
      return result;
   end Analyze;

   function Synthesize (f : Freq_Type) return wave.Wave_Type is
      use Ada.Numerics.Complex_Types;
      result : wave.Wave_Type;
      status : int;
      hcwt   : access gsl.fft.halfcomplex.gsl_fft_halfcomplex_wavetable ;
      ws     : access gsl.fft.real.gsl_fft_real_workspace ;
      inverted : access gsl.vector_double.gsl_vector ;

   begin
      result :=
        wave.Create
          (f.sample_rate, 0.0,
           Float (f.cmplx'Length) * 2.0 / Float (f.sample_rate));
      for td in 1 .. result.samples'Last / 2 - 1 loop
         result.samples (td * 2 - 1) := Re (f.cmplx (td));
         result.samples (td * 2)     := Im (f.cmplx (td));
      end loop;

      hcwt   := gsl.fft.halfcomplex.wavetable_alloc (result.Xs'Length);
      ws     := gsl.fft.real.workspace_alloc (result.Xs'Length);
      inverted := gsl.vector_double.To_C( result.samples.all );
      declare
        inverteda : gsl.double_array(1..result.Xs'Length);
      begin
        gsl.vector_double.Set( inverted , inverteda );
        status :=
          gsl.fft.halfcomplex.inverse
            (inverteda, 1 , result.samples'Length , hcwt, ws);
        gsl.vector_double.Set( inverteda , inverted );
      end ;
      if status /= 0 then
        raise Program_Error with "Error in Synthesize transform " & 
                                    gsl.errno.StrError (status) ;
      end if;
      gsl.fft.real.workspace_free (ws);
      gsl.fft.halfcomplex.wavetable_free (hcwt);
      result.samples.all := gsl.vector_double.To_Ada(inverted) ;
      return result;
   end Synthesize;

end spectrum.fft;