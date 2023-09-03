package Spectrum.fft is
   function Analyze (w : wave.Wave_Type) return Freq_Type;
   function Synthesize (f : Freq_Type) return wave.Wave_Type;
end Spectrum.fft ;