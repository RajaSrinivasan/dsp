package body gsl is

   function gsl_strerror (gsl_errno : int) return Interfaces.C.Strings.chars_ptr  -- ../gsl/gsl_errno.h:83
   with Import => True, 
        Convention => C, 
     External_Name => "gsl_strerror";

   
   function StrError( errno : int ) return string is
   begin
      return Value( gsl_strerror(errno) ) ;
   end StrError ;
   
end gsl;
