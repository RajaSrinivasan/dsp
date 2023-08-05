pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package errno_h is

   --  unsupported macro: errno (*__errno_location ())
   --  skipped func __errno_location

   program_invocation_name : Interfaces.C.Strings.chars_ptr  -- /usr/include/errno.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "program_invocation_name";

   program_invocation_short_name : Interfaces.C.Strings.chars_ptr  -- /usr/include/errno.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "program_invocation_short_name";

end errno_h;
