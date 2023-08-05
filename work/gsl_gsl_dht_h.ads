pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;

package gsl_gsl_dht_h is

   type gsl_dht_struct is record
      size : aliased stddef_h.size_t;  -- /usr/include/gsl/gsl_dht.h:41
      nu : aliased double;  -- /usr/include/gsl/gsl_dht.h:42
      xmax : aliased double;  -- /usr/include/gsl/gsl_dht.h:43
      kmax : aliased double;  -- /usr/include/gsl/gsl_dht.h:44
      j : access double;  -- /usr/include/gsl/gsl_dht.h:45
      Jjj : access double;  -- /usr/include/gsl/gsl_dht.h:46
      J2 : access double;  -- /usr/include/gsl/gsl_dht.h:47
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/gsl/gsl_dht.h:40

   subtype gsl_dht is gsl_dht_struct;  -- /usr/include/gsl/gsl_dht.h:49

   function gsl_dht_alloc (size : stddef_h.size_t) return access gsl_dht  -- /usr/include/gsl/gsl_dht.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_alloc";

   function gsl_dht_new
     (size : stddef_h.size_t;
      nu : double;
      xmax : double) return access gsl_dht  -- /usr/include/gsl/gsl_dht.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_new";

   function gsl_dht_init
     (t : access gsl_dht;
      nu : double;
      xmax : double) return int  -- /usr/include/gsl/gsl_dht.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_init";

   function gsl_dht_x_sample (t : access constant gsl_dht; n : int) return double  -- /usr/include/gsl/gsl_dht.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_x_sample";

   function gsl_dht_k_sample (t : access constant gsl_dht; n : int) return double  -- /usr/include/gsl/gsl_dht.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_k_sample";

   procedure gsl_dht_free (t : access gsl_dht)  -- /usr/include/gsl/gsl_dht.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_free";

   function gsl_dht_apply
     (t : access constant gsl_dht;
      f_in : access double;
      f_out : access double) return int  -- /usr/include/gsl/gsl_dht.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "gsl_dht_apply";

end gsl_gsl_dht_h;
