pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package gsl_gsl_machine_h is

   GSL_DBL_EPSILON : constant := 2.2204460492503131e-16;  --  /usr/include/gsl/gsl_machine.h:17
   GSL_SQRT_DBL_EPSILON : constant := 1.4901161193847656e-08;  --  /usr/include/gsl/gsl_machine.h:18
   GSL_ROOT3_DBL_EPSILON : constant := 6.0554544523933429e-06;  --  /usr/include/gsl/gsl_machine.h:19
   GSL_ROOT4_DBL_EPSILON : constant := 1.2207031250000000e-04;  --  /usr/include/gsl/gsl_machine.h:20
   GSL_ROOT5_DBL_EPSILON : constant := 7.4009597974140505e-04;  --  /usr/include/gsl/gsl_machine.h:21
   GSL_ROOT6_DBL_EPSILON : constant := 2.4607833005759251e-03;  --  /usr/include/gsl/gsl_machine.h:22
   GSL_LOG_DBL_EPSILON : constant := (-3.6043653389117154e+01);  --  /usr/include/gsl/gsl_machine.h:23

   GSL_DBL_MIN : constant := 2.2250738585072014e-308;  --  /usr/include/gsl/gsl_machine.h:25
   GSL_SQRT_DBL_MIN : constant := 1.4916681462400413e-154;  --  /usr/include/gsl/gsl_machine.h:26
   GSL_ROOT3_DBL_MIN : constant := 2.8126442852362996e-103;  --  /usr/include/gsl/gsl_machine.h:27
   GSL_ROOT4_DBL_MIN : constant := 1.2213386697554620e-77;  --  /usr/include/gsl/gsl_machine.h:28
   GSL_ROOT5_DBL_MIN : constant := 2.9476022969691763e-62;  --  /usr/include/gsl/gsl_machine.h:29
   GSL_ROOT6_DBL_MIN : constant := 5.3034368905798218e-52;  --  /usr/include/gsl/gsl_machine.h:30
   GSL_LOG_DBL_MIN : constant := (-7.0839641853226408e+02);  --  /usr/include/gsl/gsl_machine.h:31

   GSL_DBL_MAX : constant := 1.7976931348623157e+308;  --  /usr/include/gsl/gsl_machine.h:33
   GSL_SQRT_DBL_MAX : constant := 1.3407807929942596e+154;  --  /usr/include/gsl/gsl_machine.h:34
   GSL_ROOT3_DBL_MAX : constant := 5.6438030941222897e+102;  --  /usr/include/gsl/gsl_machine.h:35
   GSL_ROOT4_DBL_MAX : constant := 1.1579208923731620e+77;  --  /usr/include/gsl/gsl_machine.h:36
   GSL_ROOT5_DBL_MAX : constant := 4.4765466227572707e+61;  --  /usr/include/gsl/gsl_machine.h:37
   GSL_ROOT6_DBL_MAX : constant := 2.3756689782295612e+51;  --  /usr/include/gsl/gsl_machine.h:38
   GSL_LOG_DBL_MAX : constant := 7.0978271289338397e+02;  --  /usr/include/gsl/gsl_machine.h:39

   GSL_FLT_EPSILON : constant := 1.1920928955078125e-07;  --  /usr/include/gsl/gsl_machine.h:41
   GSL_SQRT_FLT_EPSILON : constant := 3.4526698300124393e-04;  --  /usr/include/gsl/gsl_machine.h:42
   GSL_ROOT3_FLT_EPSILON : constant := 4.9215666011518501e-03;  --  /usr/include/gsl/gsl_machine.h:43
   GSL_ROOT4_FLT_EPSILON : constant := 1.8581361171917516e-02;  --  /usr/include/gsl/gsl_machine.h:44
   GSL_ROOT5_FLT_EPSILON : constant := 4.1234622211652937e-02;  --  /usr/include/gsl/gsl_machine.h:45
   GSL_ROOT6_FLT_EPSILON : constant := 7.0153878019335827e-02;  --  /usr/include/gsl/gsl_machine.h:46
   GSL_LOG_FLT_EPSILON : constant := (-1.5942385152878742e+01);  --  /usr/include/gsl/gsl_machine.h:47

   GSL_FLT_MIN : constant := 1.1754943508222875e-38;  --  /usr/include/gsl/gsl_machine.h:49
   GSL_SQRT_FLT_MIN : constant := 1.0842021724855044e-19;  --  /usr/include/gsl/gsl_machine.h:50
   GSL_ROOT3_FLT_MIN : constant := 2.2737367544323241e-13;  --  /usr/include/gsl/gsl_machine.h:51
   GSL_ROOT4_FLT_MIN : constant := 3.2927225399135965e-10;  --  /usr/include/gsl/gsl_machine.h:52
   GSL_ROOT5_FLT_MIN : constant := 2.5944428542140822e-08;  --  /usr/include/gsl/gsl_machine.h:53
   GSL_ROOT6_FLT_MIN : constant := 4.7683715820312542e-07;  --  /usr/include/gsl/gsl_machine.h:54
   GSL_LOG_FLT_MIN : constant := (-8.7336544750553102e+01);  --  /usr/include/gsl/gsl_machine.h:55

   GSL_FLT_MAX : constant := 3.4028234663852886e+38;  --  /usr/include/gsl/gsl_machine.h:57
   GSL_SQRT_FLT_MAX : constant := 1.8446743523953730e+19;  --  /usr/include/gsl/gsl_machine.h:58
   GSL_ROOT3_FLT_MAX : constant := 6.9814635196223242e+12;  --  /usr/include/gsl/gsl_machine.h:59
   GSL_ROOT4_FLT_MAX : constant := 4.2949672319999986e+09;  --  /usr/include/gsl/gsl_machine.h:60
   GSL_ROOT5_FLT_MAX : constant := 5.0859007855960041e+07;  --  /usr/include/gsl/gsl_machine.h:61
   GSL_ROOT6_FLT_MAX : constant := 2.6422459233807749e+06;  --  /usr/include/gsl/gsl_machine.h:62
   GSL_LOG_FLT_MAX : constant := 8.8722839052068352e+01;  --  /usr/include/gsl/gsl_machine.h:63

   GSL_SFLT_EPSILON : constant := 4.8828125000000000e-04;  --  /usr/include/gsl/gsl_machine.h:65
   GSL_SQRT_SFLT_EPSILON : constant := 2.2097086912079612e-02;  --  /usr/include/gsl/gsl_machine.h:66
   GSL_ROOT3_SFLT_EPSILON : constant := 7.8745065618429588e-02;  --  /usr/include/gsl/gsl_machine.h:67
   GSL_ROOT4_SFLT_EPSILON : constant := 1.4865088937534013e-01;  --  /usr/include/gsl/gsl_machine.h:68
   GSL_ROOT5_SFLT_EPSILON : constant := 2.1763764082403100e-01;  --  /usr/include/gsl/gsl_machine.h:69
   GSL_ROOT6_SFLT_EPSILON : constant := 2.8061551207734325e-01;  --  /usr/include/gsl/gsl_machine.h:70
   GSL_LOG_SFLT_EPSILON : constant := (-7.6246189861593985e+00);  --  /usr/include/gsl/gsl_machine.h:71
   --  unsupported macro: GSL_MACH_EPS GSL_DBL_EPSILON

   GSL_SQRT_MACH_EPS : constant := 3.2e-08;  --  /usr/include/gsl/gsl_machine.h:96
   GSL_ROOT3_MACH_EPS : constant := 1.0e-05;  --  /usr/include/gsl/gsl_machine.h:97
   GSL_ROOT4_MACH_EPS : constant := 0.000178;  --  /usr/include/gsl/gsl_machine.h:98
   GSL_ROOT5_MACH_EPS : constant := 0.00100;  --  /usr/include/gsl/gsl_machine.h:99
   GSL_ROOT6_MACH_EPS : constant := 0.00316;  --  /usr/include/gsl/gsl_machine.h:100
   GSL_LOG_MACH_EPS : constant := (-34.54);  --  /usr/include/gsl/gsl_machine.h:101

end gsl_gsl_machine_h;
