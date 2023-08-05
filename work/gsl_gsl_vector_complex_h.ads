pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package gsl_gsl_vector_complex_h is

   --  arg-macro: function GSL_VECTOR_REAL (z, i)
   --    return (z).data(2*(i)*(z).stride);
   --  arg-macro: function GSL_VECTOR_IMAG (z, i)
   --    return (z).data(2*(i)*(z).stride + 1);
   --  arg-macro: function GSL_VECTOR_COMPLEX (zv, i)
   --    return *GSL_COMPLEX_AT((zv),(i));
   --  arg-macro: function GSL_COMPLEX_AT (zv, i)
   --    return (gsl_complex*)and((zv).data(2*(i)*(zv).stride));
   --  arg-macro: function GSL_COMPLEX_FLOAT_AT (zv, i)
   --    return (gsl_complex_float*)and((zv).data(2*(i)*(zv).stride));
   --  arg-macro: function GSL_COMPLEX_LONG_DOUBLE_AT (zv, i)
   --    return (gsl_complex_long_double*)and((zv).data(2*(i)*(zv).stride));
end gsl_gsl_vector_complex_h;
