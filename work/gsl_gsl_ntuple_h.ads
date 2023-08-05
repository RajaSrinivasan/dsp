pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with aarch64_linux_gnu_bits_types_FILE_h;
with System;
with stddef_h;
with Interfaces.C.Strings;
limited with gsl_gsl_histogram_h;

package gsl_gsl_ntuple_h is

   --  skipped anonymous struct anon_anon_22

   type gsl_ntuple is record
      the_file : access aarch64_linux_gnu_bits_types_FILE_h.FILE;  -- /usr/include/gsl/gsl_ntuple.h:44
      ntuple_data : System.Address;  -- /usr/include/gsl/gsl_ntuple.h:45
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_ntuple.h:46
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_ntuple.h:47

   --  skipped anonymous struct anon_anon_23

   type gsl_ntuple_select_fn is record
      c_function : access function (arg1 : System.Address; arg2 : System.Address) return int;  -- /usr/include/gsl/gsl_ntuple.h:50
      params : System.Address;  -- /usr/include/gsl/gsl_ntuple.h:51
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_ntuple.h:52

   --  skipped anonymous struct anon_anon_24

   type gsl_ntuple_value_fn is record
      c_function : access function (arg1 : System.Address; arg2 : System.Address) return double;  -- /usr/include/gsl/gsl_ntuple.h:55
      params : System.Address;  -- /usr/include/gsl/gsl_ntuple.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_ntuple.h:57

   function gsl_ntuple_open
     (filename : Interfaces.C.Strings.chars_ptr;
      ntuple_data : System.Address;
      size : stddef_h.size_t) return access gsl_ntuple  -- /usr/include/gsl/gsl_ntuple.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ntuple_open";

   function gsl_ntuple_create
     (filename : Interfaces.C.Strings.chars_ptr;
      ntuple_data : System.Address;
      size : stddef_h.size_t) return access gsl_ntuple  -- /usr/include/gsl/gsl_ntuple.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ntuple_create";

   function gsl_ntuple_write (ntuple : access gsl_ntuple) return int  -- /usr/include/gsl/gsl_ntuple.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ntuple_write";

   function gsl_ntuple_read (ntuple : access gsl_ntuple) return int  -- /usr/include/gsl/gsl_ntuple.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ntuple_read";

   function gsl_ntuple_bookdata (ntuple : access gsl_ntuple) return int  -- /usr/include/gsl/gsl_ntuple.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ntuple_bookdata";

   function gsl_ntuple_project
     (h : access gsl_gsl_histogram_h.gsl_histogram;
      ntuple : access gsl_ntuple;
      value_func : access gsl_ntuple_value_fn;
      select_func : access gsl_ntuple_select_fn) return int  -- /usr/include/gsl/gsl_ntuple.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ntuple_project";

   function gsl_ntuple_close (ntuple : access gsl_ntuple) return int  -- /usr/include/gsl/gsl_ntuple.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_ntuple_close";

end gsl_gsl_ntuple_h;
