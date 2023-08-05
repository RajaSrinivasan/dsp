pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package math_h is

   --  unsupported macro: HUGE_VAL (__builtin_huge_val ())
   --  unsupported macro: HUGE_VALF (__builtin_huge_valf ())
   --  unsupported macro: HUGE_VALL (__builtin_huge_vall ())
   --  unsupported macro: HUGE_VAL_F32 (__builtin_huge_valf32 ())
   --  unsupported macro: HUGE_VAL_F64 (__builtin_huge_valf64 ())
   --  unsupported macro: HUGE_VAL_F128 (__builtin_huge_valf128 ())
   --  unsupported macro: HUGE_VAL_F32X (__builtin_huge_valf32x ())
   --  unsupported macro: HUGE_VAL_F64X (__builtin_huge_valf64x ())
   --  unsupported macro: INFINITY (__builtin_inff ())
   --  unsupported macro: NAN (__builtin_nanf (""))
   --  unsupported macro: SNANF (__builtin_nansf (""))
   --  unsupported macro: SNAN (__builtin_nans (""))
   --  unsupported macro: SNANL (__builtin_nansl (""))
   --  unsupported macro: SNANF32 (__builtin_nansf32 (""))
   --  unsupported macro: SNANF64 (__builtin_nansf64 (""))
   --  unsupported macro: SNANF128 (__builtin_nansf128 (""))
   --  unsupported macro: SNANF32X (__builtin_nansf32x (""))
   --  unsupported macro: SNANF64X (__builtin_nansf64x (""))
   FP_ILOGB0 : constant := (-2147483647);  --  /usr/include/math.h:209

   FP_ILOGBNAN : constant := 2147483647;  --  /usr/include/math.h:214
   --  unsupported macro: FP_LLOGB0 (-__FP_LONG_MAX)
   --  unsupported macro: FP_LLOGBNAN __FP_LONG_MAX

   FP_INT_UPWARD : constant := 0;  --  /usr/include/math.h:254

   FP_INT_DOWNWARD : constant := 1;  --  /usr/include/math.h:257

   FP_INT_TOWARDZERO : constant := 2;  --  /usr/include/math.h:260

   FP_INT_TONEARESTFROMZERO : constant := 3;  --  /usr/include/math.h:263

   FP_INT_TONEAREST : constant := 4;  --  /usr/include/math.h:266

   FP_NAN : constant := 0;  --  /usr/include/math.h:937

   FP_INFINITE : constant := 1;  --  /usr/include/math.h:940

   FP_ZERO : constant := 2;  --  /usr/include/math.h:943

   FP_SUBNORMAL : constant := 3;  --  /usr/include/math.h:946

   FP_NORMAL : constant := 4;  --  /usr/include/math.h:949

   MATH_ERRNO : constant := 1;  --  /usr/include/math.h:1035
   MATH_ERREXCEPT : constant := 2;  --  /usr/include/math.h:1036
   --  unsupported macro: math_errhandling (MATH_ERRNO | MATH_ERREXCEPT)
   --  arg-macro: function issubnormal (x)
   --    return fpclassify (x) = FP_SUBNORMAL;

   MAXFLOAT : constant := 3.40282347e+38;  --  /usr/include/math.h:1140

   M_E : constant := 2.7182818284590452354;  --  /usr/include/math.h:1146
   M_LOG2E : constant := 1.4426950408889634074;  --  /usr/include/math.h:1147
   M_LOG10E : constant := 0.43429448190325182765;  --  /usr/include/math.h:1148
   M_LN2 : constant := 0.69314718055994530942;  --  /usr/include/math.h:1149
   M_LN10 : constant := 2.30258509299404568402;  --  /usr/include/math.h:1150
   M_PI : constant := 3.14159265358979323846;  --  /usr/include/math.h:1151
   M_PI_2 : constant := 1.57079632679489661923;  --  /usr/include/math.h:1152
   M_PI_4 : constant := 0.78539816339744830962;  --  /usr/include/math.h:1153
   M_1_PI : constant := 0.31830988618379067154;  --  /usr/include/math.h:1154
   M_2_PI : constant := 0.63661977236758134308;  --  /usr/include/math.h:1155
   M_2_SQRTPI : constant := 1.12837916709551257390;  --  /usr/include/math.h:1156
   M_SQRT2 : constant := 1.41421356237309504880;  --  /usr/include/math.h:1157
   M_SQRT1_2 : constant := 0.70710678118654752440;  --  /usr/include/math.h:1158

   M_Ef : constant := 2.7182818284590452354;  --  /usr/include/math.h:1163
   M_LOG2Ef : constant := 1.4426950408889634074;  --  /usr/include/math.h:1164
   M_LOG10Ef : constant := 0.43429448190325182765;  --  /usr/include/math.h:1165
   M_LN2f : constant := 0.69314718055994530942;  --  /usr/include/math.h:1166
   M_LN10f : constant := 2.30258509299404568402;  --  /usr/include/math.h:1167
   M_PIf : constant := 3.14159265358979323846;  --  /usr/include/math.h:1168
   M_PI_2f : constant := 1.57079632679489661923;  --  /usr/include/math.h:1169
   M_PI_4f : constant := 0.78539816339744830962;  --  /usr/include/math.h:1170
   M_1_PIf : constant := 0.31830988618379067154;  --  /usr/include/math.h:1171
   M_2_PIf : constant := 0.63661977236758134308;  --  /usr/include/math.h:1172
   M_2_SQRTPIf : constant := 1.12837916709551257390;  --  /usr/include/math.h:1173
   M_SQRT2f : constant := 1.41421356237309504880;  --  /usr/include/math.h:1174
   M_SQRT1_2f : constant := 0.70710678118654752440;  --  /usr/include/math.h:1175

   M_El : constant := 2.718281828459045235360287471352662498;  --  /usr/include/math.h:1182
   M_LOG2El : constant := 1.442695040888963407359924681001892137;  --  /usr/include/math.h:1183
   M_LOG10El : constant := 0.434294481903251827651128918916605082;  --  /usr/include/math.h:1184
   M_LN2l : constant := 0.693147180559945309417232121458176568;  --  /usr/include/math.h:1185
   M_LN10l : constant := 2.302585092994045684017991454684364208;  --  /usr/include/math.h:1186
   M_PIl : constant := 3.141592653589793238462643383279502884;  --  /usr/include/math.h:1187
   M_PI_2l : constant := 1.570796326794896619231321691639751442;  --  /usr/include/math.h:1188
   M_PI_4l : constant := 0.785398163397448309615660845819875721;  --  /usr/include/math.h:1189
   M_1_PIl : constant := 0.318309886183790671537767526745028724;  --  /usr/include/math.h:1190
   M_2_PIl : constant := 0.636619772367581343075535053490057448;  --  /usr/include/math.h:1191
   M_2_SQRTPIl : constant := 1.128379167095512573896158903121545172;  --  /usr/include/math.h:1192
   M_SQRT2l : constant := 1.414213562373095048801688724209698079;  --  /usr/include/math.h:1193
   M_SQRT1_2l : constant := 0.707106781186547524400844362104849039;  --  /usr/include/math.h:1194
   --  unsupported macro: M_Ef32 __f32 (2.718281828459045235360287471352662498)
   --  unsupported macro: M_LOG2Ef32 __f32 (1.442695040888963407359924681001892137)
   --  unsupported macro: M_LOG10Ef32 __f32 (0.434294481903251827651128918916605082)
   --  unsupported macro: M_LN2f32 __f32 (0.693147180559945309417232121458176568)
   --  unsupported macro: M_LN10f32 __f32 (2.302585092994045684017991454684364208)
   --  unsupported macro: M_PIf32 __f32 (3.141592653589793238462643383279502884)
   --  unsupported macro: M_PI_2f32 __f32 (1.570796326794896619231321691639751442)
   --  unsupported macro: M_PI_4f32 __f32 (0.785398163397448309615660845819875721)
   --  unsupported macro: M_1_PIf32 __f32 (0.318309886183790671537767526745028724)
   --  unsupported macro: M_2_PIf32 __f32 (0.636619772367581343075535053490057448)
   --  unsupported macro: M_2_SQRTPIf32 __f32 (1.128379167095512573896158903121545172)
   --  unsupported macro: M_SQRT2f32 __f32 (1.414213562373095048801688724209698079)
   --  unsupported macro: M_SQRT1_2f32 __f32 (0.707106781186547524400844362104849039)
   --  unsupported macro: M_Ef64 __f64 (2.718281828459045235360287471352662498)
   --  unsupported macro: M_LOG2Ef64 __f64 (1.442695040888963407359924681001892137)
   --  unsupported macro: M_LOG10Ef64 __f64 (0.434294481903251827651128918916605082)
   --  unsupported macro: M_LN2f64 __f64 (0.693147180559945309417232121458176568)
   --  unsupported macro: M_LN10f64 __f64 (2.302585092994045684017991454684364208)
   --  unsupported macro: M_PIf64 __f64 (3.141592653589793238462643383279502884)
   --  unsupported macro: M_PI_2f64 __f64 (1.570796326794896619231321691639751442)
   --  unsupported macro: M_PI_4f64 __f64 (0.785398163397448309615660845819875721)
   --  unsupported macro: M_1_PIf64 __f64 (0.318309886183790671537767526745028724)
   --  unsupported macro: M_2_PIf64 __f64 (0.636619772367581343075535053490057448)
   --  unsupported macro: M_2_SQRTPIf64 __f64 (1.128379167095512573896158903121545172)
   --  unsupported macro: M_SQRT2f64 __f64 (1.414213562373095048801688724209698079)
   --  unsupported macro: M_SQRT1_2f64 __f64 (0.707106781186547524400844362104849039)
   --  unsupported macro: M_Ef128 __f128 (2.718281828459045235360287471352662498)
   --  unsupported macro: M_LOG2Ef128 __f128 (1.442695040888963407359924681001892137)
   --  unsupported macro: M_LOG10Ef128 __f128 (0.434294481903251827651128918916605082)
   --  unsupported macro: M_LN2f128 __f128 (0.693147180559945309417232121458176568)
   --  unsupported macro: M_LN10f128 __f128 (2.302585092994045684017991454684364208)
   --  unsupported macro: M_PIf128 __f128 (3.141592653589793238462643383279502884)
   --  unsupported macro: M_PI_2f128 __f128 (1.570796326794896619231321691639751442)
   --  unsupported macro: M_PI_4f128 __f128 (0.785398163397448309615660845819875721)
   --  unsupported macro: M_1_PIf128 __f128 (0.318309886183790671537767526745028724)
   --  unsupported macro: M_2_PIf128 __f128 (0.636619772367581343075535053490057448)
   --  unsupported macro: M_2_SQRTPIf128 __f128 (1.128379167095512573896158903121545172)
   --  unsupported macro: M_SQRT2f128 __f128 (1.414213562373095048801688724209698079)
   --  unsupported macro: M_SQRT1_2f128 __f128 (0.707106781186547524400844362104849039)
   --  unsupported macro: M_Ef32x __f32x (2.718281828459045235360287471352662498)
   --  unsupported macro: M_LOG2Ef32x __f32x (1.442695040888963407359924681001892137)
   --  unsupported macro: M_LOG10Ef32x __f32x (0.434294481903251827651128918916605082)
   --  unsupported macro: M_LN2f32x __f32x (0.693147180559945309417232121458176568)
   --  unsupported macro: M_LN10f32x __f32x (2.302585092994045684017991454684364208)
   --  unsupported macro: M_PIf32x __f32x (3.141592653589793238462643383279502884)
   --  unsupported macro: M_PI_2f32x __f32x (1.570796326794896619231321691639751442)
   --  unsupported macro: M_PI_4f32x __f32x (0.785398163397448309615660845819875721)
   --  unsupported macro: M_1_PIf32x __f32x (0.318309886183790671537767526745028724)
   --  unsupported macro: M_2_PIf32x __f32x (0.636619772367581343075535053490057448)
   --  unsupported macro: M_2_SQRTPIf32x __f32x (1.128379167095512573896158903121545172)
   --  unsupported macro: M_SQRT2f32x __f32x (1.414213562373095048801688724209698079)
   --  unsupported macro: M_SQRT1_2f32x __f32x (0.707106781186547524400844362104849039)
   --  unsupported macro: M_Ef64x __f64x (2.718281828459045235360287471352662498)
   --  unsupported macro: M_LOG2Ef64x __f64x (1.442695040888963407359924681001892137)
   --  unsupported macro: M_LOG10Ef64x __f64x (0.434294481903251827651128918916605082)
   --  unsupported macro: M_LN2f64x __f64x (0.693147180559945309417232121458176568)
   --  unsupported macro: M_LN10f64x __f64x (2.302585092994045684017991454684364208)
   --  unsupported macro: M_PIf64x __f64x (3.141592653589793238462643383279502884)
   --  unsupported macro: M_PI_2f64x __f64x (1.570796326794896619231321691639751442)
   --  unsupported macro: M_PI_4f64x __f64x (0.785398163397448309615660845819875721)
   --  unsupported macro: M_1_PIf64x __f64x (0.318309886183790671537767526745028724)
   --  unsupported macro: M_2_PIf64x __f64x (0.636619772367581343075535053490057448)
   --  unsupported macro: M_2_SQRTPIf64x __f64x (1.128379167095512573896158903121545172)
   --  unsupported macro: M_SQRT2f64x __f64x (1.414213562373095048801688724209698079)
   --  unsupported macro: M_SQRT1_2f64x __f64x (0.707106781186547524400844362104849039)

   subtype float_t is float;  -- /usr/include/math.h:163

   subtype double_t is double;  -- /usr/include/math.h:164

   signgam : aliased int  -- /usr/include/math.h:854
   with Import => True, 
        Convention => C, 
        External_Name => "signgam";

   function issignaling (uu_val : float) return int  -- /usr/include/math.h:1067
   with Import => True, 
        Convention => CPP, 
        External_Name => "_Z11issignalingf";

   function issignaling (uu_val : double) return int  -- /usr/include/math.h:1068
   with Import => True, 
        Convention => CPP, 
        External_Name => "_Z11issignalingd";

   function issignaling (uu_val : long_double) return int  -- /usr/include/math.h:1070
   with Import => True, 
        Convention => CPP, 
        External_Name => "_Z11issignalinge";

   package uu_iseqsig_type_long_double is
      type uu_iseqsig_type is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      --  skipped func __call

   end;
   use uu_iseqsig_type_long_double;

   package uu_iseqsig_type_double is
      type uu_iseqsig_type is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      --  skipped func __call

   end;
   use uu_iseqsig_type_double;

   package uu_iseqsig_type_float is
      type uu_iseqsig_type is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      --  skipped func __call

   end;
   use uu_iseqsig_type_float;



end math_h;
