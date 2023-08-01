with Interfaces.C; use Interfaces.C ;
with Interfaces.C.Strings ; use Interfaces.C.Strings ;
package gsl is

   function StrError( errno : int ) return string ;

end gsl;
