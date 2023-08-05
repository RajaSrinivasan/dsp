pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package gsl_gsl_const_cgs_h is

   GSL_CONST_CGS_SPEED_OF_LIGHT : constant := (2.99792458e10);  --  /usr/include/gsl/gsl_const_cgs.h:24
   GSL_CONST_CGS_GRAVITATIONAL_CONSTANT : constant := (6.673e-8);  --  /usr/include/gsl/gsl_const_cgs.h:25
   GSL_CONST_CGS_PLANCKS_CONSTANT_H : constant := (6.62606896e-27);  --  /usr/include/gsl/gsl_const_cgs.h:26
   GSL_CONST_CGS_PLANCKS_CONSTANT_HBAR : constant := (1.05457162825e-27);  --  /usr/include/gsl/gsl_const_cgs.h:27
   GSL_CONST_CGS_ASTRONOMICAL_UNIT : constant := (1.49597870691e13);  --  /usr/include/gsl/gsl_const_cgs.h:28
   GSL_CONST_CGS_LIGHT_YEAR : constant := (9.46053620707e17);  --  /usr/include/gsl/gsl_const_cgs.h:29
   GSL_CONST_CGS_PARSEC : constant := (3.08567758135e18);  --  /usr/include/gsl/gsl_const_cgs.h:30
   GSL_CONST_CGS_GRAV_ACCEL : constant := (9.80665e2);  --  /usr/include/gsl/gsl_const_cgs.h:31
   GSL_CONST_CGS_ELECTRON_VOLT : constant := (1.602176487e-12);  --  /usr/include/gsl/gsl_const_cgs.h:32
   GSL_CONST_CGS_MASS_ELECTRON : constant := (9.10938188e-28);  --  /usr/include/gsl/gsl_const_cgs.h:33
   GSL_CONST_CGS_MASS_MUON : constant := (1.88353109e-25);  --  /usr/include/gsl/gsl_const_cgs.h:34
   GSL_CONST_CGS_MASS_PROTON : constant := (1.67262158e-24);  --  /usr/include/gsl/gsl_const_cgs.h:35
   GSL_CONST_CGS_MASS_NEUTRON : constant := (1.67492716e-24);  --  /usr/include/gsl/gsl_const_cgs.h:36
   GSL_CONST_CGS_RYDBERG : constant := (2.17987196968e-11);  --  /usr/include/gsl/gsl_const_cgs.h:37
   GSL_CONST_CGS_BOLTZMANN : constant := (1.3806504e-16);  --  /usr/include/gsl/gsl_const_cgs.h:38
   GSL_CONST_CGS_MOLAR_GAS : constant := (8.314472e7);  --  /usr/include/gsl/gsl_const_cgs.h:39
   GSL_CONST_CGS_STANDARD_GAS_VOLUME : constant := (2.2710981e4);  --  /usr/include/gsl/gsl_const_cgs.h:40
   GSL_CONST_CGS_MINUTE : constant := (6e1);  --  /usr/include/gsl/gsl_const_cgs.h:41
   GSL_CONST_CGS_HOUR : constant := (3.6e3);  --  /usr/include/gsl/gsl_const_cgs.h:42
   GSL_CONST_CGS_DAY : constant := (8.64e4);  --  /usr/include/gsl/gsl_const_cgs.h:43
   GSL_CONST_CGS_WEEK : constant := (6.048e5);  --  /usr/include/gsl/gsl_const_cgs.h:44
   GSL_CONST_CGS_INCH : constant := (2.54e0);  --  /usr/include/gsl/gsl_const_cgs.h:45
   GSL_CONST_CGS_FOOT : constant := (3.048e1);  --  /usr/include/gsl/gsl_const_cgs.h:46
   GSL_CONST_CGS_YARD : constant := (9.144e1);  --  /usr/include/gsl/gsl_const_cgs.h:47
   GSL_CONST_CGS_MILE : constant := (1.609344e5);  --  /usr/include/gsl/gsl_const_cgs.h:48
   GSL_CONST_CGS_NAUTICAL_MILE : constant := (1.852e5);  --  /usr/include/gsl/gsl_const_cgs.h:49
   GSL_CONST_CGS_FATHOM : constant := (1.8288e2);  --  /usr/include/gsl/gsl_const_cgs.h:50
   GSL_CONST_CGS_MIL : constant := (2.54e-3);  --  /usr/include/gsl/gsl_const_cgs.h:51
   GSL_CONST_CGS_POINT : constant := (3.52777777778e-2);  --  /usr/include/gsl/gsl_const_cgs.h:52
   GSL_CONST_CGS_TEXPOINT : constant := (3.51459803515e-2);  --  /usr/include/gsl/gsl_const_cgs.h:53
   GSL_CONST_CGS_MICRON : constant := (1e-4);  --  /usr/include/gsl/gsl_const_cgs.h:54
   GSL_CONST_CGS_ANGSTROM : constant := (1e-8);  --  /usr/include/gsl/gsl_const_cgs.h:55
   GSL_CONST_CGS_HECTARE : constant := (1e8);  --  /usr/include/gsl/gsl_const_cgs.h:56
   GSL_CONST_CGS_ACRE : constant := (4.04685642241e7);  --  /usr/include/gsl/gsl_const_cgs.h:57
   GSL_CONST_CGS_BARN : constant := (1e-24);  --  /usr/include/gsl/gsl_const_cgs.h:58
   GSL_CONST_CGS_LITER : constant := (1e3);  --  /usr/include/gsl/gsl_const_cgs.h:59
   GSL_CONST_CGS_US_GALLON : constant := (3.78541178402e3);  --  /usr/include/gsl/gsl_const_cgs.h:60
   GSL_CONST_CGS_QUART : constant := (9.46352946004e2);  --  /usr/include/gsl/gsl_const_cgs.h:61
   GSL_CONST_CGS_PINT : constant := (4.73176473002e2);  --  /usr/include/gsl/gsl_const_cgs.h:62
   GSL_CONST_CGS_CUP : constant := (2.36588236501e2);  --  /usr/include/gsl/gsl_const_cgs.h:63
   GSL_CONST_CGS_FLUID_OUNCE : constant := (2.95735295626e1);  --  /usr/include/gsl/gsl_const_cgs.h:64
   GSL_CONST_CGS_TABLESPOON : constant := (1.47867647813e1);  --  /usr/include/gsl/gsl_const_cgs.h:65
   GSL_CONST_CGS_TEASPOON : constant := (4.92892159375e0);  --  /usr/include/gsl/gsl_const_cgs.h:66
   GSL_CONST_CGS_CANADIAN_GALLON : constant := (4.54609e3);  --  /usr/include/gsl/gsl_const_cgs.h:67
   GSL_CONST_CGS_UK_GALLON : constant := (4.546092e3);  --  /usr/include/gsl/gsl_const_cgs.h:68
   GSL_CONST_CGS_MILES_PER_HOUR : constant := (4.4704e1);  --  /usr/include/gsl/gsl_const_cgs.h:69
   GSL_CONST_CGS_KILOMETERS_PER_HOUR : constant := (2.77777777778e1);  --  /usr/include/gsl/gsl_const_cgs.h:70
   GSL_CONST_CGS_KNOT : constant := (5.14444444444e1);  --  /usr/include/gsl/gsl_const_cgs.h:71
   GSL_CONST_CGS_POUND_MASS : constant := (4.5359237e2);  --  /usr/include/gsl/gsl_const_cgs.h:72
   GSL_CONST_CGS_OUNCE_MASS : constant := (2.8349523125e1);  --  /usr/include/gsl/gsl_const_cgs.h:73
   GSL_CONST_CGS_TON : constant := (9.0718474e5);  --  /usr/include/gsl/gsl_const_cgs.h:74
   GSL_CONST_CGS_METRIC_TON : constant := (1e6);  --  /usr/include/gsl/gsl_const_cgs.h:75
   GSL_CONST_CGS_UK_TON : constant := (1.0160469088e6);  --  /usr/include/gsl/gsl_const_cgs.h:76
   GSL_CONST_CGS_TROY_OUNCE : constant := (3.1103475e1);  --  /usr/include/gsl/gsl_const_cgs.h:77
   GSL_CONST_CGS_CARAT : constant := (2e-1);  --  /usr/include/gsl/gsl_const_cgs.h:78
   GSL_CONST_CGS_UNIFIED_ATOMIC_MASS : constant := (1.660538782e-24);  --  /usr/include/gsl/gsl_const_cgs.h:79
   GSL_CONST_CGS_GRAM_FORCE : constant := (9.80665e2);  --  /usr/include/gsl/gsl_const_cgs.h:80
   GSL_CONST_CGS_POUND_FORCE : constant := (4.44822161526e5);  --  /usr/include/gsl/gsl_const_cgs.h:81
   GSL_CONST_CGS_KILOPOUND_FORCE : constant := (4.44822161526e8);  --  /usr/include/gsl/gsl_const_cgs.h:82
   GSL_CONST_CGS_POUNDAL : constant := (1.38255e4);  --  /usr/include/gsl/gsl_const_cgs.h:83
   GSL_CONST_CGS_CALORIE : constant := (4.1868e7);  --  /usr/include/gsl/gsl_const_cgs.h:84
   GSL_CONST_CGS_BTU : constant := (1.05505585262e10);  --  /usr/include/gsl/gsl_const_cgs.h:85
   GSL_CONST_CGS_THERM : constant := (1.05506e15);  --  /usr/include/gsl/gsl_const_cgs.h:86
   GSL_CONST_CGS_HORSEPOWER : constant := (7.457e9);  --  /usr/include/gsl/gsl_const_cgs.h:87
   GSL_CONST_CGS_BAR : constant := (1e6);  --  /usr/include/gsl/gsl_const_cgs.h:88
   GSL_CONST_CGS_STD_ATMOSPHERE : constant := (1.01325e6);  --  /usr/include/gsl/gsl_const_cgs.h:89
   GSL_CONST_CGS_TORR : constant := (1.33322368421e3);  --  /usr/include/gsl/gsl_const_cgs.h:90
   GSL_CONST_CGS_METER_OF_MERCURY : constant := (1.33322368421e6);  --  /usr/include/gsl/gsl_const_cgs.h:91
   GSL_CONST_CGS_INCH_OF_MERCURY : constant := (3.38638815789e4);  --  /usr/include/gsl/gsl_const_cgs.h:92
   GSL_CONST_CGS_INCH_OF_WATER : constant := (2.490889e3);  --  /usr/include/gsl/gsl_const_cgs.h:93
   GSL_CONST_CGS_PSI : constant := (6.89475729317e4);  --  /usr/include/gsl/gsl_const_cgs.h:94
   GSL_CONST_CGS_POISE : constant := (1e0);  --  /usr/include/gsl/gsl_const_cgs.h:95
   GSL_CONST_CGS_STOKES : constant := (1e0);  --  /usr/include/gsl/gsl_const_cgs.h:96
   GSL_CONST_CGS_STILB : constant := (1e0);  --  /usr/include/gsl/gsl_const_cgs.h:97
   GSL_CONST_CGS_LUMEN : constant := (1e0);  --  /usr/include/gsl/gsl_const_cgs.h:98
   GSL_CONST_CGS_LUX : constant := (1e-4);  --  /usr/include/gsl/gsl_const_cgs.h:99
   GSL_CONST_CGS_PHOT : constant := (1e0);  --  /usr/include/gsl/gsl_const_cgs.h:100
   GSL_CONST_CGS_FOOTCANDLE : constant := (1.076e-3);  --  /usr/include/gsl/gsl_const_cgs.h:101
   GSL_CONST_CGS_LAMBERT : constant := (1e0);  --  /usr/include/gsl/gsl_const_cgs.h:102
   GSL_CONST_CGS_FOOTLAMBERT : constant := (1.07639104e-3);  --  /usr/include/gsl/gsl_const_cgs.h:103
   GSL_CONST_CGS_CURIE : constant := (3.7e10);  --  /usr/include/gsl/gsl_const_cgs.h:104
   GSL_CONST_CGS_ROENTGEN : constant := (2.58e-7);  --  /usr/include/gsl/gsl_const_cgs.h:105
   GSL_CONST_CGS_RAD : constant := (1e2);  --  /usr/include/gsl/gsl_const_cgs.h:106
   GSL_CONST_CGS_SOLAR_MASS : constant := (1.98892e33);  --  /usr/include/gsl/gsl_const_cgs.h:107
   GSL_CONST_CGS_BOHR_RADIUS : constant := (5.291772083e-9);  --  /usr/include/gsl/gsl_const_cgs.h:108
   GSL_CONST_CGS_NEWTON : constant := (1e5);  --  /usr/include/gsl/gsl_const_cgs.h:109
   GSL_CONST_CGS_DYNE : constant := (1e0);  --  /usr/include/gsl/gsl_const_cgs.h:110
   GSL_CONST_CGS_JOULE : constant := (1e7);  --  /usr/include/gsl/gsl_const_cgs.h:111
   GSL_CONST_CGS_ERG : constant := (1e0);  --  /usr/include/gsl/gsl_const_cgs.h:112
   GSL_CONST_CGS_STEFAN_BOLTZMANN_CONSTANT : constant := (5.67040047374e-5);  --  /usr/include/gsl/gsl_const_cgs.h:113
   GSL_CONST_CGS_THOMSON_CROSS_SECTION : constant := (6.65245893699e-25);  --  /usr/include/gsl/gsl_const_cgs.h:114

end gsl_gsl_const_cgs_h;
