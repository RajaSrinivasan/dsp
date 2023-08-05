pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package cpp_11_cmath is

   function acos (uu_x : float) return float  -- /usr/include/c++/11/cmath:87
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4acosf";

   function acos (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:91
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4acose";

   function asin (uu_x : float) return float  -- /usr/include/c++/11/cmath:106
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4asinf";

   function asin (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:110
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4asine";

   function atan (uu_x : float) return float  -- /usr/include/c++/11/cmath:125
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4atanf";

   function atan (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:129
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4atane";

   function atan2 (uu_y : float; uu_x : float) return float  -- /usr/include/c++/11/cmath:144
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5atan2ff";

   function atan2 (uu_y : long_double; uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:148
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5atan2ee";

   function ceil (uu_x : float) return float  -- /usr/include/c++/11/cmath:165
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4ceilf";

   function ceil (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:169
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4ceile";

   function cos (uu_x : float) return float  -- /usr/include/c++/11/cmath:184
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3cosf";

   function cos (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:188
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3cose";

   function cosh (uu_x : float) return float  -- /usr/include/c++/11/cmath:203
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4coshf";

   function cosh (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:207
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4coshe";

   function exp (uu_x : float) return float  -- /usr/include/c++/11/cmath:222
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3expf";

   function exp (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:226
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3expe";

   function fabs (uu_x : float) return float  -- /usr/include/c++/11/cmath:241
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4fabsf";

   function fabs (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:245
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4fabse";

   function floor (uu_x : float) return float  -- /usr/include/c++/11/cmath:260
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5floorf";

   function floor (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:264
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5floore";

   function fmod (uu_x : float; uu_y : float) return float  -- /usr/include/c++/11/cmath:279
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4fmodff";

   function fmod (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/c++/11/cmath:283
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4fmodee";

   function frexp (uu_x : float; uu_exp : access int) return float  -- /usr/include/c++/11/cmath:300
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5frexpfPi";

   function frexp (uu_x : long_double; uu_exp : access int) return long_double  -- /usr/include/c++/11/cmath:304
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5frexpePi";

   function ldexp (uu_x : float; uu_exp : int) return float  -- /usr/include/c++/11/cmath:319
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5ldexpfi";

   function ldexp (uu_x : long_double; uu_exp : int) return long_double  -- /usr/include/c++/11/cmath:323
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5ldexpei";

   function log (uu_x : float) return float  -- /usr/include/c++/11/cmath:338
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3logf";

   function log (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:342
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3loge";

   function log10 (uu_x : float) return float  -- /usr/include/c++/11/cmath:357
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5log10f";

   function log10 (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:361
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5log10e";

   function modf (uu_x : float; uu_iptr : access float) return float  -- /usr/include/c++/11/cmath:376
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4modffPf";

   function modf (uu_x : long_double; uu_iptr : access long_double) return long_double  -- /usr/include/c++/11/cmath:380
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4modfePe";

   function pow (uu_x : float; uu_y : float) return float  -- /usr/include/c++/11/cmath:388
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3powff";

   function pow (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/c++/11/cmath:392
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3powee";

   function sin (uu_x : float) return float  -- /usr/include/c++/11/cmath:425
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3sinf";

   function sin (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:429
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3sine";

   function sinh (uu_x : float) return float  -- /usr/include/c++/11/cmath:444
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4sinhf";

   function sinh (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:448
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4sinhe";

   function sqrt (uu_x : float) return float  -- /usr/include/c++/11/cmath:463
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4sqrtf";

   function sqrt (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:467
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4sqrte";

   function tan (uu_x : float) return float  -- /usr/include/c++/11/cmath:482
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3tanf";

   function tan (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:486
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3tane";

   function tanh (uu_x : float) return float  -- /usr/include/c++/11/cmath:501
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4tanhf";

   function tanh (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:505
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4tanhe";

   function fpclassify (uu_x : float) return int  -- /usr/include/c++/11/cmath:537
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt10fpclassifyf";

   function fpclassify (uu_x : double) return int  -- /usr/include/c++/11/cmath:542
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt10fpclassifyd";

   function fpclassify (uu_x : long_double) return int  -- /usr/include/c++/11/cmath:547
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt10fpclassifye";

   function isfinite (uu_x : float) return Extensions.bool  -- /usr/include/c++/11/cmath:562
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt8isfinitef";

   function isfinite (uu_x : double) return Extensions.bool  -- /usr/include/c++/11/cmath:566
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt8isfinited";

   function isfinite (uu_x : long_double) return Extensions.bool  -- /usr/include/c++/11/cmath:570
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt8isfinitee";

   function isinf (uu_x : float) return Extensions.bool  -- /usr/include/c++/11/cmath:584
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5isinff";

   function isinf (uu_x : double) return Extensions.bool  -- /usr/include/c++/11/cmath:592
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5isinfd";

   function isinf (uu_x : long_double) return Extensions.bool  -- /usr/include/c++/11/cmath:597
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5isinfe";

   function isnan (uu_x : float) return Extensions.bool  -- /usr/include/c++/11/cmath:611
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5isnanf";

   function isnan (uu_x : double) return Extensions.bool  -- /usr/include/c++/11/cmath:619
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5isnand";

   function isnan (uu_x : long_double) return Extensions.bool  -- /usr/include/c++/11/cmath:624
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5isnane";

   function isnormal (uu_x : float) return Extensions.bool  -- /usr/include/c++/11/cmath:638
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt8isnormalf";

   function isnormal (uu_x : double) return Extensions.bool  -- /usr/include/c++/11/cmath:642
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt8isnormald";

   function isnormal (uu_x : long_double) return Extensions.bool  -- /usr/include/c++/11/cmath:646
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt8isnormale";

   function signbit (uu_x : float) return Extensions.bool  -- /usr/include/c++/11/cmath:661
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt7signbitf";

   function signbit (uu_x : double) return Extensions.bool  -- /usr/include/c++/11/cmath:665
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt7signbitd";

   function signbit (uu_x : long_double) return Extensions.bool  -- /usr/include/c++/11/cmath:669
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt7signbite";

   function isgreater (uu_x : float; uu_y : float) return Extensions.bool  -- /usr/include/c++/11/cmath:683
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9isgreaterff";

   function isgreater (uu_x : double; uu_y : double) return Extensions.bool  -- /usr/include/c++/11/cmath:687
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9isgreaterdd";

   function isgreater (uu_x : long_double; uu_y : long_double) return Extensions.bool  -- /usr/include/c++/11/cmath:691
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9isgreateree";

   function isgreaterequal (uu_x : float; uu_y : float) return Extensions.bool  -- /usr/include/c++/11/cmath:709
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt14isgreaterequalff";

   function isgreaterequal (uu_x : double; uu_y : double) return Extensions.bool  -- /usr/include/c++/11/cmath:713
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt14isgreaterequaldd";

   function isgreaterequal (uu_x : long_double; uu_y : long_double) return Extensions.bool  -- /usr/include/c++/11/cmath:717
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt14isgreaterequalee";

   function isless (uu_x : float; uu_y : float) return Extensions.bool  -- /usr/include/c++/11/cmath:735
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt6islessff";

   function isless (uu_x : double; uu_y : double) return Extensions.bool  -- /usr/include/c++/11/cmath:739
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt6islessdd";

   function isless (uu_x : long_double; uu_y : long_double) return Extensions.bool  -- /usr/include/c++/11/cmath:743
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt6islessee";

   function islessequal (uu_x : float; uu_y : float) return Extensions.bool  -- /usr/include/c++/11/cmath:761
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt11islessequalff";

   function islessequal (uu_x : double; uu_y : double) return Extensions.bool  -- /usr/include/c++/11/cmath:765
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt11islessequaldd";

   function islessequal (uu_x : long_double; uu_y : long_double) return Extensions.bool  -- /usr/include/c++/11/cmath:769
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt11islessequalee";

   function islessgreater (uu_x : float; uu_y : float) return Extensions.bool  -- /usr/include/c++/11/cmath:787
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt13islessgreaterff";

   function islessgreater (uu_x : double; uu_y : double) return Extensions.bool  -- /usr/include/c++/11/cmath:791
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt13islessgreaterdd";

   function islessgreater (uu_x : long_double; uu_y : long_double) return Extensions.bool  -- /usr/include/c++/11/cmath:795
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt13islessgreateree";

   function isunordered (uu_x : float; uu_y : float) return Extensions.bool  -- /usr/include/c++/11/cmath:813
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt11isunorderedff";

   function isunordered (uu_x : double; uu_y : double) return Extensions.bool  -- /usr/include/c++/11/cmath:817
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt11isunordereddd";

   function isunordered (uu_x : long_double; uu_y : long_double) return Extensions.bool  -- /usr/include/c++/11/cmath:821
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt11isunorderedee";

   function acosh (uu_x : float) return float  -- /usr/include/c++/11/cmath:1214
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5acoshf";

   function acosh (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:1218
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5acoshe";

   function asinh (uu_x : float) return float  -- /usr/include/c++/11/cmath:1232
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5asinhf";

   function asinh (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:1236
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5asinhe";

   function atanh (uu_x : float) return float  -- /usr/include/c++/11/cmath:1250
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5atanhf";

   function atanh (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:1254
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5atanhe";

   function cbrt (uu_x : float) return float  -- /usr/include/c++/11/cmath:1268
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4cbrtf";

   function cbrt (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:1272
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4cbrte";

   function copysign (uu_x : float; uu_y : float) return float  -- /usr/include/c++/11/cmath:1286
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt8copysignff";

   function copysign (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/c++/11/cmath:1290
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt8copysignee";

   function erf (uu_x : float) return float  -- /usr/include/c++/11/cmath:1306
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3erff";

   function erf (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:1310
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3erfe";

   function erfc (uu_x : float) return float  -- /usr/include/c++/11/cmath:1324
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4erfcf";

   function erfc (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:1328
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4erfce";

   function exp2 (uu_x : float) return float  -- /usr/include/c++/11/cmath:1342
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4exp2f";

   function exp2 (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:1346
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4exp2e";

   function expm1 (uu_x : float) return float  -- /usr/include/c++/11/cmath:1360
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5expm1f";

   function expm1 (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:1364
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5expm1e";

   function fdim (uu_x : float; uu_y : float) return float  -- /usr/include/c++/11/cmath:1378
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4fdimff";

   function fdim (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/c++/11/cmath:1382
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4fdimee";

   function fma
     (uu_x : float;
      uu_y : float;
      uu_z : float) return float  -- /usr/include/c++/11/cmath:1398
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3fmafff";

   function fma
     (uu_x : long_double;
      uu_y : long_double;
      uu_z : long_double) return long_double  -- /usr/include/c++/11/cmath:1402
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt3fmaeee";

   function fmax (uu_x : float; uu_y : float) return float  -- /usr/include/c++/11/cmath:1418
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4fmaxff";

   function fmax (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/c++/11/cmath:1422
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4fmaxee";

   function fmin (uu_x : float; uu_y : float) return float  -- /usr/include/c++/11/cmath:1438
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4fminff";

   function fmin (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/c++/11/cmath:1442
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4fminee";

   function hypot (uu_x : float; uu_y : float) return float  -- /usr/include/c++/11/cmath:1458
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5hypotff";

   function hypot (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/c++/11/cmath:1462
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5hypotee";

   function ilogb (uu_x : float) return int  -- /usr/include/c++/11/cmath:1478
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5ilogbf";

   function ilogb (uu_x : long_double) return int  -- /usr/include/c++/11/cmath:1482
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5ilogbe";

   function lgamma (uu_x : float) return float  -- /usr/include/c++/11/cmath:1497
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt6lgammaf";

   function lgamma (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:1501
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt6lgammae";

   function llrint (uu_x : float) return Long_Long_Integer  -- /usr/include/c++/11/cmath:1515
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt6llrintf";

   function llrint (uu_x : long_double) return Long_Long_Integer  -- /usr/include/c++/11/cmath:1519
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt6llrinte";

   function llround (uu_x : float) return Long_Long_Integer  -- /usr/include/c++/11/cmath:1533
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt7llroundf";

   function llround (uu_x : long_double) return Long_Long_Integer  -- /usr/include/c++/11/cmath:1537
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt7llrounde";

   function log1p (uu_x : float) return float  -- /usr/include/c++/11/cmath:1551
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5log1pf";

   function log1p (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:1555
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5log1pe";

   function log2 (uu_x : float) return float  -- /usr/include/c++/11/cmath:1570
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4log2f";

   function log2 (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:1574
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4log2e";

   function logb (uu_x : float) return float  -- /usr/include/c++/11/cmath:1588
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4logbf";

   function logb (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:1592
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4logbe";

   function lrint (uu_x : float) return long  -- /usr/include/c++/11/cmath:1606
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5lrintf";

   function lrint (uu_x : long_double) return long  -- /usr/include/c++/11/cmath:1610
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5lrinte";

   function lround (uu_x : float) return long  -- /usr/include/c++/11/cmath:1624
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt6lroundf";

   function lround (uu_x : long_double) return long  -- /usr/include/c++/11/cmath:1628
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt6lrounde";

   function nearbyint (uu_x : float) return float  -- /usr/include/c++/11/cmath:1642
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9nearbyintf";

   function nearbyint (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:1646
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9nearbyinte";

   function nextafter (uu_x : float; uu_y : float) return float  -- /usr/include/c++/11/cmath:1660
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9nextafterff";

   function nextafter (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/c++/11/cmath:1664
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9nextafteree";

   function nexttoward (uu_x : float; uu_y : long_double) return float  -- /usr/include/c++/11/cmath:1680
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt10nexttowardfe";

   function nexttoward (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/c++/11/cmath:1684
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt10nexttowardee";

   function remainder (uu_x : float; uu_y : float) return float  -- /usr/include/c++/11/cmath:1698
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9remainderff";

   function remainder (uu_x : long_double; uu_y : long_double) return long_double  -- /usr/include/c++/11/cmath:1702
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt9remainderee";

   function remquo
     (uu_x : float;
      uu_y : float;
      uu_pquo : access int) return float  -- /usr/include/c++/11/cmath:1718
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt6remquoffPi";

   function remquo
     (uu_x : long_double;
      uu_y : long_double;
      uu_pquo : access int) return long_double  -- /usr/include/c++/11/cmath:1722
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt6remquoeePi";

   function rint (uu_x : float) return float  -- /usr/include/c++/11/cmath:1738
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4rintf";

   function rint (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:1742
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt4rinte";

   function round (uu_x : float) return float  -- /usr/include/c++/11/cmath:1756
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5roundf";

   function round (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:1760
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5rounde";

   function scalbln (uu_x : float; uu_ex : long) return float  -- /usr/include/c++/11/cmath:1774
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt7scalblnfl";

   function scalbln (uu_x : long_double; uu_ex : long) return long_double  -- /usr/include/c++/11/cmath:1778
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt7scalblnel";

   function scalbn (uu_x : float; uu_ex : int) return float  -- /usr/include/c++/11/cmath:1792
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt6scalbnfi";

   function scalbn (uu_x : long_double; uu_ex : int) return long_double  -- /usr/include/c++/11/cmath:1796
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt6scalbnei";

   function tgamma (uu_x : float) return float  -- /usr/include/c++/11/cmath:1810
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt6tgammaf";

   function tgamma (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:1814
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt6tgammae";

   function trunc (uu_x : float) return float  -- /usr/include/c++/11/cmath:1828
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5truncf";

   function trunc (uu_x : long_double) return long_double  -- /usr/include/c++/11/cmath:1832
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5trunce";

   function hypot
     (uu_x : float;
      uu_y : float;
      uu_z : float) return float  -- /usr/include/c++/11/cmath:1868
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5hypotfff";

   function hypot
     (uu_x : double;
      uu_y : double;
      uu_z : double) return double  -- /usr/include/c++/11/cmath:1872
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5hypotddd";

   function hypot
     (uu_x : long_double;
      uu_y : long_double;
      uu_z : long_double) return long_double  -- /usr/include/c++/11/cmath:1876
   with Import => True, 
        Convention => CPP, 
        External_Name => "_ZSt5hypoteee";

end cpp_11_cmath;
