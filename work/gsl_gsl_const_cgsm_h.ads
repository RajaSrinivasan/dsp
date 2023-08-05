pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package gsl_gsl_const_cgsm_h is

   GSL_CONST_CGSM_SPEED_OF_LIGHT : constant := (2.99792458e10);  --  /usr/include/gsl/gsl_const_cgsm.h:24
   GSL_CONST_CGSM_GRAVITATIONAL_CONSTANT : constant := (6.673e-8);  --  /usr/include/gsl/gsl_const_cgsm.h:25
   GSL_CONST_CGSM_PLANCKS_CONSTANT_H : constant := (6.62606896e-27);  --  /usr/include/gsl/gsl_const_cgsm.h:26
   GSL_CONST_CGSM_PLANCKS_CONSTANT_HBAR : constant := (1.05457162825e-27);  --  /usr/include/gsl/gsl_const_cgsm.h:27
   GSL_CONST_CGSM_ASTRONOMICAL_UNIT : constant := (1.49597870691e13);  --  /usr/include/gsl/gsl_const_cgsm.h:28
   GSL_CONST_CGSM_LIGHT_YEAR : constant := (9.46053620707e17);  --  /usr/include/gsl/gsl_const_cgsm.h:29
   GSL_CONST_CGSM_PARSEC : constant := (3.08567758135e18);  --  /usr/include/gsl/gsl_const_cgsm.h:30
   GSL_CONST_CGSM_GRAV_ACCEL : constant := (9.80665e2);  --  /usr/include/gsl/gsl_const_cgsm.h:31
   GSL_CONST_CGSM_ELECTRON_VOLT : constant := (1.602176487e-12);  --  /usr/include/gsl/gsl_const_cgsm.h:32
   GSL_CONST_CGSM_MASS_ELECTRON : constant := (9.10938188e-28);  --  /usr/include/gsl/gsl_const_cgsm.h:33
   GSL_CONST_CGSM_MASS_MUON : constant := (1.88353109e-25);  --  /usr/include/gsl/gsl_const_cgsm.h:34
   GSL_CONST_CGSM_MASS_PROTON : constant := (1.67262158e-24);  --  /usr/include/gsl/gsl_const_cgsm.h:35
   GSL_CONST_CGSM_MASS_NEUTRON : constant := (1.67492716e-24);  --  /usr/include/gsl/gsl_const_cgsm.h:36
   GSL_CONST_CGSM_RYDBERG : constant := (2.17987196968e-11);  --  /usr/include/gsl/gsl_const_cgsm.h:37
   GSL_CONST_CGSM_BOLTZMANN : constant := (1.3806504e-16);  --  /usr/include/gsl/gsl_const_cgsm.h:38
   GSL_CONST_CGSM_MOLAR_GAS : constant := (8.314472e7);  --  /usr/include/gsl/gsl_const_cgsm.h:39
   GSL_CONST_CGSM_STANDARD_GAS_VOLUME : constant := (2.2710981e4);  --  /usr/include/gsl/gsl_const_cgsm.h:40
   GSL_CONST_CGSM_MINUTE : constant := (6e1);  --  /usr/include/gsl/gsl_const_cgsm.h:41
   GSL_CONST_CGSM_HOUR : constant := (3.6e3);  --  /usr/include/gsl/gsl_const_cgsm.h:42
   GSL_CONST_CGSM_DAY : constant := (8.64e4);  --  /usr/include/gsl/gsl_const_cgsm.h:43
   GSL_CONST_CGSM_WEEK : constant := (6.048e5);  --  /usr/include/gsl/gsl_const_cgsm.h:44
   GSL_CONST_CGSM_INCH : constant := (2.54e0);  --  /usr/include/gsl/gsl_const_cgsm.h:45
   GSL_CONST_CGSM_FOOT : constant := (3.048e1);  --  /usr/include/gsl/gsl_const_cgsm.h:46
   GSL_CONST_CGSM_YARD : constant := (9.144e1);  --  /usr/include/gsl/gsl_const_cgsm.h:47
   GSL_CONST_CGSM_MILE : constant := (1.609344e5);  --  /usr/include/gsl/gsl_const_cgsm.h:48
   GSL_CONST_CGSM_NAUTICAL_MILE : constant := (1.852e5);  --  /usr/include/gsl/gsl_const_cgsm.h:49
   GSL_CONST_CGSM_FATHOM : constant := (1.8288e2);  --  /usr/include/gsl/gsl_const_cgsm.h:50
   GSL_CONST_CGSM_MIL : constant := (2.54e-3);  --  /usr/include/gsl/gsl_const_cgsm.h:51
   GSL_CONST_CGSM_POINT : constant := (3.52777777778e-2);  --  /usr/include/gsl/gsl_const_cgsm.h:52
   GSL_CONST_CGSM_TEXPOINT : constant := (3.51459803515e-2);  --  /usr/include/gsl/gsl_const_cgsm.h:53
   GSL_CONST_CGSM_MICRON : constant := (1e-4);  --  /usr/include/gsl/gsl_const_cgsm.h:54
   GSL_CONST_CGSM_ANGSTROM : constant := (1e-8);  --  /usr/include/gsl/gsl_const_cgsm.h:55
   GSL_CONST_CGSM_HECTARE : constant := (1e8);  --  /usr/include/gsl/gsl_const_cgsm.h:56
   GSL_CONST_CGSM_ACRE : constant := (4.04685642241e7);  --  /usr/include/gsl/gsl_const_cgsm.h:57
   GSL_CONST_CGSM_BARN : constant := (1e-24);  --  /usr/include/gsl/gsl_const_cgsm.h:58
   GSL_CONST_CGSM_LITER : constant := (1e3);  --  /usr/include/gsl/gsl_const_cgsm.h:59
   GSL_CONST_CGSM_US_GALLON : constant := (3.78541178402e3);  --  /usr/include/gsl/gsl_const_cgsm.h:60
   GSL_CONST_CGSM_QUART : constant := (9.46352946004e2);  --  /usr/include/gsl/gsl_const_cgsm.h:61
   GSL_CONST_CGSM_PINT : constant := (4.73176473002e2);  --  /usr/include/gsl/gsl_const_cgsm.h:62
   GSL_CONST_CGSM_CUP : constant := (2.36588236501e2);  --  /usr/include/gsl/gsl_const_cgsm.h:63
   GSL_CONST_CGSM_FLUID_OUNCE : constant := (2.95735295626e1);  --  /usr/include/gsl/gsl_const_cgsm.h:64
   GSL_CONST_CGSM_TABLESPOON : constant := (1.47867647813e1);  --  /usr/include/gsl/gsl_const_cgsm.h:65
   GSL_CONST_CGSM_TEASPOON : constant := (4.92892159375e0);  --  /usr/include/gsl/gsl_const_cgsm.h:66
   GSL_CONST_CGSM_CANADIAN_GALLON : constant := (4.54609e3);  --  /usr/include/gsl/gsl_const_cgsm.h:67
   GSL_CONST_CGSM_UK_GALLON : constant := (4.546092e3);  --  /usr/include/gsl/gsl_const_cgsm.h:68
   GSL_CONST_CGSM_MILES_PER_HOUR : constant := (4.4704e1);  --  /usr/include/gsl/gsl_const_cgsm.h:69
   GSL_CONST_CGSM_KILOMETERS_PER_HOUR : constant := (2.77777777778e1);  --  /usr/include/gsl/gsl_const_cgsm.h:70
   GSL_CONST_CGSM_KNOT : constant := (5.14444444444e1);  --  /usr/include/gsl/gsl_const_cgsm.h:71
   GSL_CONST_CGSM_POUND_MASS : constant := (4.5359237e2);  --  /usr/include/gsl/gsl_const_cgsm.h:72
   GSL_CONST_CGSM_OUNCE_MASS : constant := (2.8349523125e1);  --  /usr/include/gsl/gsl_const_cgsm.h:73
   GSL_CONST_CGSM_TON : constant := (9.0718474e5);  --  /usr/include/gsl/gsl_const_cgsm.h:74
   GSL_CONST_CGSM_METRIC_TON : constant := (1e6);  --  /usr/include/gsl/gsl_const_cgsm.h:75
   GSL_CONST_CGSM_UK_TON : constant := (1.0160469088e6);  --  /usr/include/gsl/gsl_const_cgsm.h:76
   GSL_CONST_CGSM_TROY_OUNCE : constant := (3.1103475e1);  --  /usr/include/gsl/gsl_const_cgsm.h:77
   GSL_CONST_CGSM_CARAT : constant := (2e-1);  --  /usr/include/gsl/gsl_const_cgsm.h:78
   GSL_CONST_CGSM_UNIFIED_ATOMIC_MASS : constant := (1.660538782e-24);  --  /usr/include/gsl/gsl_const_cgsm.h:79
   GSL_CONST_CGSM_GRAM_FORCE : constant := (9.80665e2);  --  /usr/include/gsl/gsl_const_cgsm.h:80
   GSL_CONST_CGSM_POUND_FORCE : constant := (4.44822161526e5);  --  /usr/include/gsl/gsl_const_cgsm.h:81
   GSL_CONST_CGSM_KILOPOUND_FORCE : constant := (4.44822161526e8);  --  /usr/include/gsl/gsl_const_cgsm.h:82
   GSL_CONST_CGSM_POUNDAL : constant := (1.38255e4);  --  /usr/include/gsl/gsl_const_cgsm.h:83
   GSL_CONST_CGSM_CALORIE : constant := (4.1868e7);  --  /usr/include/gsl/gsl_const_cgsm.h:84
   GSL_CONST_CGSM_BTU : constant := (1.05505585262e10);  --  /usr/include/gsl/gsl_const_cgsm.h:85
   GSL_CONST_CGSM_THERM : constant := (1.05506e15);  --  /usr/include/gsl/gsl_const_cgsm.h:86
   GSL_CONST_CGSM_HORSEPOWER : constant := (7.457e9);  --  /usr/include/gsl/gsl_const_cgsm.h:87
   GSL_CONST_CGSM_BAR : constant := (1e6);  --  /usr/include/gsl/gsl_const_cgsm.h:88
   GSL_CONST_CGSM_STD_ATMOSPHERE : constant := (1.01325e6);  --  /usr/include/gsl/gsl_const_cgsm.h:89
   GSL_CONST_CGSM_TORR : constant := (1.33322368421e3);  --  /usr/include/gsl/gsl_const_cgsm.h:90
   GSL_CONST_CGSM_METER_OF_MERCURY : constant := (1.33322368421e6);  --  /usr/include/gsl/gsl_const_cgsm.h:91
   GSL_CONST_CGSM_INCH_OF_MERCURY : constant := (3.38638815789e4);  --  /usr/include/gsl/gsl_const_cgsm.h:92
   GSL_CONST_CGSM_INCH_OF_WATER : constant := (2.490889e3);  --  /usr/include/gsl/gsl_const_cgsm.h:93
   GSL_CONST_CGSM_PSI : constant := (6.89475729317e4);  --  /usr/include/gsl/gsl_const_cgsm.h:94
   GSL_CONST_CGSM_POISE : constant := (1e0);  --  /usr/include/gsl/gsl_const_cgsm.h:95
   GSL_CONST_CGSM_STOKES : constant := (1e0);  --  /usr/include/gsl/gsl_const_cgsm.h:96
   GSL_CONST_CGSM_STILB : constant := (1e0);  --  /usr/include/gsl/gsl_const_cgsm.h:97
   GSL_CONST_CGSM_LUMEN : constant := (1e0);  --  /usr/include/gsl/gsl_const_cgsm.h:98
   GSL_CONST_CGSM_LUX : constant := (1e-4);  --  /usr/include/gsl/gsl_const_cgsm.h:99
   GSL_CONST_CGSM_PHOT : constant := (1e0);  --  /usr/include/gsl/gsl_const_cgsm.h:100
   GSL_CONST_CGSM_FOOTCANDLE : constant := (1.076e-3);  --  /usr/include/gsl/gsl_const_cgsm.h:101
   GSL_CONST_CGSM_LAMBERT : constant := (1e0);  --  /usr/include/gsl/gsl_const_cgsm.h:102
   GSL_CONST_CGSM_FOOTLAMBERT : constant := (1.07639104e-3);  --  /usr/include/gsl/gsl_const_cgsm.h:103
   GSL_CONST_CGSM_CURIE : constant := (3.7e10);  --  /usr/include/gsl/gsl_const_cgsm.h:104
   GSL_CONST_CGSM_ROENTGEN : constant := (2.58e-8);  --  /usr/include/gsl/gsl_const_cgsm.h:105
   GSL_CONST_CGSM_RAD : constant := (1e2);  --  /usr/include/gsl/gsl_const_cgsm.h:106
   GSL_CONST_CGSM_SOLAR_MASS : constant := (1.98892e33);  --  /usr/include/gsl/gsl_const_cgsm.h:107
   GSL_CONST_CGSM_BOHR_RADIUS : constant := (5.291772083e-9);  --  /usr/include/gsl/gsl_const_cgsm.h:108
   GSL_CONST_CGSM_NEWTON : constant := (1e5);  --  /usr/include/gsl/gsl_const_cgsm.h:109
   GSL_CONST_CGSM_DYNE : constant := (1e0);  --  /usr/include/gsl/gsl_const_cgsm.h:110
   GSL_CONST_CGSM_JOULE : constant := (1e7);  --  /usr/include/gsl/gsl_const_cgsm.h:111
   GSL_CONST_CGSM_ERG : constant := (1e0);  --  /usr/include/gsl/gsl_const_cgsm.h:112
   GSL_CONST_CGSM_STEFAN_BOLTZMANN_CONSTANT : constant := (5.67040047374e-5);  --  /usr/include/gsl/gsl_const_cgsm.h:113
   GSL_CONST_CGSM_THOMSON_CROSS_SECTION : constant := (6.65245893699e-25);  --  /usr/include/gsl/gsl_const_cgsm.h:114
   GSL_CONST_CGSM_BOHR_MAGNETON : constant := (9.27400899e-21);  --  /usr/include/gsl/gsl_const_cgsm.h:115
   GSL_CONST_CGSM_NUCLEAR_MAGNETON : constant := (5.05078317e-24);  --  /usr/include/gsl/gsl_const_cgsm.h:116
   GSL_CONST_CGSM_ELECTRON_MAGNETIC_MOMENT : constant := (9.28476362e-21);  --  /usr/include/gsl/gsl_const_cgsm.h:117
   GSL_CONST_CGSM_PROTON_MAGNETIC_MOMENT : constant := (1.410606633e-23);  --  /usr/include/gsl/gsl_const_cgsm.h:118
   GSL_CONST_CGSM_FARADAY : constant := (9.64853429775e3);  --  /usr/include/gsl/gsl_const_cgsm.h:119
   GSL_CONST_CGSM_ELECTRON_CHARGE : constant := (1.602176487e-20);  --  /usr/include/gsl/gsl_const_cgsm.h:120

end gsl_gsl_const_cgsm_h;
