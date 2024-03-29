pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package gsl_gsl_const_mksa_h is

   GSL_CONST_MKSA_SPEED_OF_LIGHT : constant := (2.99792458e8);  --  /usr/include/gsl/gsl_const_mksa.h:24
   GSL_CONST_MKSA_GRAVITATIONAL_CONSTANT : constant := (6.673e-11);  --  /usr/include/gsl/gsl_const_mksa.h:25
   GSL_CONST_MKSA_PLANCKS_CONSTANT_H : constant := (6.62606896e-34);  --  /usr/include/gsl/gsl_const_mksa.h:26
   GSL_CONST_MKSA_PLANCKS_CONSTANT_HBAR : constant := (1.05457162825e-34);  --  /usr/include/gsl/gsl_const_mksa.h:27
   GSL_CONST_MKSA_ASTRONOMICAL_UNIT : constant := (1.49597870691e11);  --  /usr/include/gsl/gsl_const_mksa.h:28
   GSL_CONST_MKSA_LIGHT_YEAR : constant := (9.46053620707e15);  --  /usr/include/gsl/gsl_const_mksa.h:29
   GSL_CONST_MKSA_PARSEC : constant := (3.08567758135e16);  --  /usr/include/gsl/gsl_const_mksa.h:30
   GSL_CONST_MKSA_GRAV_ACCEL : constant := (9.80665e0);  --  /usr/include/gsl/gsl_const_mksa.h:31
   GSL_CONST_MKSA_ELECTRON_VOLT : constant := (1.602176487e-19);  --  /usr/include/gsl/gsl_const_mksa.h:32
   GSL_CONST_MKSA_MASS_ELECTRON : constant := (9.10938188e-31);  --  /usr/include/gsl/gsl_const_mksa.h:33
   GSL_CONST_MKSA_MASS_MUON : constant := (1.88353109e-28);  --  /usr/include/gsl/gsl_const_mksa.h:34
   GSL_CONST_MKSA_MASS_PROTON : constant := (1.67262158e-27);  --  /usr/include/gsl/gsl_const_mksa.h:35
   GSL_CONST_MKSA_MASS_NEUTRON : constant := (1.67492716e-27);  --  /usr/include/gsl/gsl_const_mksa.h:36
   GSL_CONST_MKSA_RYDBERG : constant := (2.17987196968e-18);  --  /usr/include/gsl/gsl_const_mksa.h:37
   GSL_CONST_MKSA_BOLTZMANN : constant := (1.3806504e-23);  --  /usr/include/gsl/gsl_const_mksa.h:38
   GSL_CONST_MKSA_MOLAR_GAS : constant := (8.314472e0);  --  /usr/include/gsl/gsl_const_mksa.h:39
   GSL_CONST_MKSA_STANDARD_GAS_VOLUME : constant := (2.2710981e-2);  --  /usr/include/gsl/gsl_const_mksa.h:40
   GSL_CONST_MKSA_MINUTE : constant := (6e1);  --  /usr/include/gsl/gsl_const_mksa.h:41
   GSL_CONST_MKSA_HOUR : constant := (3.6e3);  --  /usr/include/gsl/gsl_const_mksa.h:42
   GSL_CONST_MKSA_DAY : constant := (8.64e4);  --  /usr/include/gsl/gsl_const_mksa.h:43
   GSL_CONST_MKSA_WEEK : constant := (6.048e5);  --  /usr/include/gsl/gsl_const_mksa.h:44
   GSL_CONST_MKSA_INCH : constant := (2.54e-2);  --  /usr/include/gsl/gsl_const_mksa.h:45
   GSL_CONST_MKSA_FOOT : constant := (3.048e-1);  --  /usr/include/gsl/gsl_const_mksa.h:46
   GSL_CONST_MKSA_YARD : constant := (9.144e-1);  --  /usr/include/gsl/gsl_const_mksa.h:47
   GSL_CONST_MKSA_MILE : constant := (1.609344e3);  --  /usr/include/gsl/gsl_const_mksa.h:48
   GSL_CONST_MKSA_NAUTICAL_MILE : constant := (1.852e3);  --  /usr/include/gsl/gsl_const_mksa.h:49
   GSL_CONST_MKSA_FATHOM : constant := (1.8288e0);  --  /usr/include/gsl/gsl_const_mksa.h:50
   GSL_CONST_MKSA_MIL : constant := (2.54e-5);  --  /usr/include/gsl/gsl_const_mksa.h:51
   GSL_CONST_MKSA_POINT : constant := (3.52777777778e-4);  --  /usr/include/gsl/gsl_const_mksa.h:52
   GSL_CONST_MKSA_TEXPOINT : constant := (3.51459803515e-4);  --  /usr/include/gsl/gsl_const_mksa.h:53
   GSL_CONST_MKSA_MICRON : constant := (1e-6);  --  /usr/include/gsl/gsl_const_mksa.h:54
   GSL_CONST_MKSA_ANGSTROM : constant := (1e-10);  --  /usr/include/gsl/gsl_const_mksa.h:55
   GSL_CONST_MKSA_HECTARE : constant := (1e4);  --  /usr/include/gsl/gsl_const_mksa.h:56
   GSL_CONST_MKSA_ACRE : constant := (4.04685642241e3);  --  /usr/include/gsl/gsl_const_mksa.h:57
   GSL_CONST_MKSA_BARN : constant := (1e-28);  --  /usr/include/gsl/gsl_const_mksa.h:58
   GSL_CONST_MKSA_LITER : constant := (1e-3);  --  /usr/include/gsl/gsl_const_mksa.h:59
   GSL_CONST_MKSA_US_GALLON : constant := (3.78541178402e-3);  --  /usr/include/gsl/gsl_const_mksa.h:60
   GSL_CONST_MKSA_QUART : constant := (9.46352946004e-4);  --  /usr/include/gsl/gsl_const_mksa.h:61
   GSL_CONST_MKSA_PINT : constant := (4.73176473002e-4);  --  /usr/include/gsl/gsl_const_mksa.h:62
   GSL_CONST_MKSA_CUP : constant := (2.36588236501e-4);  --  /usr/include/gsl/gsl_const_mksa.h:63
   GSL_CONST_MKSA_FLUID_OUNCE : constant := (2.95735295626e-5);  --  /usr/include/gsl/gsl_const_mksa.h:64
   GSL_CONST_MKSA_TABLESPOON : constant := (1.47867647813e-5);  --  /usr/include/gsl/gsl_const_mksa.h:65
   GSL_CONST_MKSA_TEASPOON : constant := (4.92892159375e-6);  --  /usr/include/gsl/gsl_const_mksa.h:66
   GSL_CONST_MKSA_CANADIAN_GALLON : constant := (4.54609e-3);  --  /usr/include/gsl/gsl_const_mksa.h:67
   GSL_CONST_MKSA_UK_GALLON : constant := (4.546092e-3);  --  /usr/include/gsl/gsl_const_mksa.h:68
   GSL_CONST_MKSA_MILES_PER_HOUR : constant := (4.4704e-1);  --  /usr/include/gsl/gsl_const_mksa.h:69
   GSL_CONST_MKSA_KILOMETERS_PER_HOUR : constant := (2.77777777778e-1);  --  /usr/include/gsl/gsl_const_mksa.h:70
   GSL_CONST_MKSA_KNOT : constant := (5.14444444444e-1);  --  /usr/include/gsl/gsl_const_mksa.h:71
   GSL_CONST_MKSA_POUND_MASS : constant := (4.5359237e-1);  --  /usr/include/gsl/gsl_const_mksa.h:72
   GSL_CONST_MKSA_OUNCE_MASS : constant := (2.8349523125e-2);  --  /usr/include/gsl/gsl_const_mksa.h:73
   GSL_CONST_MKSA_TON : constant := (9.0718474e2);  --  /usr/include/gsl/gsl_const_mksa.h:74
   GSL_CONST_MKSA_METRIC_TON : constant := (1e3);  --  /usr/include/gsl/gsl_const_mksa.h:75
   GSL_CONST_MKSA_UK_TON : constant := (1.0160469088e3);  --  /usr/include/gsl/gsl_const_mksa.h:76
   GSL_CONST_MKSA_TROY_OUNCE : constant := (3.1103475e-2);  --  /usr/include/gsl/gsl_const_mksa.h:77
   GSL_CONST_MKSA_CARAT : constant := (2e-4);  --  /usr/include/gsl/gsl_const_mksa.h:78
   GSL_CONST_MKSA_UNIFIED_ATOMIC_MASS : constant := (1.660538782e-27);  --  /usr/include/gsl/gsl_const_mksa.h:79
   GSL_CONST_MKSA_GRAM_FORCE : constant := (9.80665e-3);  --  /usr/include/gsl/gsl_const_mksa.h:80
   GSL_CONST_MKSA_POUND_FORCE : constant := (4.44822161526e0);  --  /usr/include/gsl/gsl_const_mksa.h:81
   GSL_CONST_MKSA_KILOPOUND_FORCE : constant := (4.44822161526e3);  --  /usr/include/gsl/gsl_const_mksa.h:82
   GSL_CONST_MKSA_POUNDAL : constant := (1.38255e-1);  --  /usr/include/gsl/gsl_const_mksa.h:83
   GSL_CONST_MKSA_CALORIE : constant := (4.1868e0);  --  /usr/include/gsl/gsl_const_mksa.h:84
   GSL_CONST_MKSA_BTU : constant := (1.05505585262e3);  --  /usr/include/gsl/gsl_const_mksa.h:85
   GSL_CONST_MKSA_THERM : constant := (1.05506e8);  --  /usr/include/gsl/gsl_const_mksa.h:86
   GSL_CONST_MKSA_HORSEPOWER : constant := (7.457e2);  --  /usr/include/gsl/gsl_const_mksa.h:87
   GSL_CONST_MKSA_BAR : constant := (1e5);  --  /usr/include/gsl/gsl_const_mksa.h:88
   GSL_CONST_MKSA_STD_ATMOSPHERE : constant := (1.01325e5);  --  /usr/include/gsl/gsl_const_mksa.h:89
   GSL_CONST_MKSA_TORR : constant := (1.33322368421e2);  --  /usr/include/gsl/gsl_const_mksa.h:90
   GSL_CONST_MKSA_METER_OF_MERCURY : constant := (1.33322368421e5);  --  /usr/include/gsl/gsl_const_mksa.h:91
   GSL_CONST_MKSA_INCH_OF_MERCURY : constant := (3.38638815789e3);  --  /usr/include/gsl/gsl_const_mksa.h:92
   GSL_CONST_MKSA_INCH_OF_WATER : constant := (2.490889e2);  --  /usr/include/gsl/gsl_const_mksa.h:93
   GSL_CONST_MKSA_PSI : constant := (6.89475729317e3);  --  /usr/include/gsl/gsl_const_mksa.h:94
   GSL_CONST_MKSA_POISE : constant := (1e-1);  --  /usr/include/gsl/gsl_const_mksa.h:95
   GSL_CONST_MKSA_STOKES : constant := (1e-4);  --  /usr/include/gsl/gsl_const_mksa.h:96
   GSL_CONST_MKSA_STILB : constant := (1e4);  --  /usr/include/gsl/gsl_const_mksa.h:97
   GSL_CONST_MKSA_LUMEN : constant := (1e0);  --  /usr/include/gsl/gsl_const_mksa.h:98
   GSL_CONST_MKSA_LUX : constant := (1e0);  --  /usr/include/gsl/gsl_const_mksa.h:99
   GSL_CONST_MKSA_PHOT : constant := (1e4);  --  /usr/include/gsl/gsl_const_mksa.h:100
   GSL_CONST_MKSA_FOOTCANDLE : constant := (1.076e1);  --  /usr/include/gsl/gsl_const_mksa.h:101
   GSL_CONST_MKSA_LAMBERT : constant := (1e4);  --  /usr/include/gsl/gsl_const_mksa.h:102
   GSL_CONST_MKSA_FOOTLAMBERT : constant := (1.07639104e1);  --  /usr/include/gsl/gsl_const_mksa.h:103
   GSL_CONST_MKSA_CURIE : constant := (3.7e10);  --  /usr/include/gsl/gsl_const_mksa.h:104
   GSL_CONST_MKSA_ROENTGEN : constant := (2.58e-4);  --  /usr/include/gsl/gsl_const_mksa.h:105
   GSL_CONST_MKSA_RAD : constant := (1e-2);  --  /usr/include/gsl/gsl_const_mksa.h:106
   GSL_CONST_MKSA_SOLAR_MASS : constant := (1.98892e30);  --  /usr/include/gsl/gsl_const_mksa.h:107
   GSL_CONST_MKSA_BOHR_RADIUS : constant := (5.291772083e-11);  --  /usr/include/gsl/gsl_const_mksa.h:108
   GSL_CONST_MKSA_NEWTON : constant := (1e0);  --  /usr/include/gsl/gsl_const_mksa.h:109
   GSL_CONST_MKSA_DYNE : constant := (1e-5);  --  /usr/include/gsl/gsl_const_mksa.h:110
   GSL_CONST_MKSA_JOULE : constant := (1e0);  --  /usr/include/gsl/gsl_const_mksa.h:111
   GSL_CONST_MKSA_ERG : constant := (1e-7);  --  /usr/include/gsl/gsl_const_mksa.h:112
   GSL_CONST_MKSA_STEFAN_BOLTZMANN_CONSTANT : constant := (5.67040047374e-8);  --  /usr/include/gsl/gsl_const_mksa.h:113
   GSL_CONST_MKSA_THOMSON_CROSS_SECTION : constant := (6.65245893699e-29);  --  /usr/include/gsl/gsl_const_mksa.h:114
   GSL_CONST_MKSA_BOHR_MAGNETON : constant := (9.27400899e-24);  --  /usr/include/gsl/gsl_const_mksa.h:115
   GSL_CONST_MKSA_NUCLEAR_MAGNETON : constant := (5.05078317e-27);  --  /usr/include/gsl/gsl_const_mksa.h:116
   GSL_CONST_MKSA_ELECTRON_MAGNETIC_MOMENT : constant := (9.28476362e-24);  --  /usr/include/gsl/gsl_const_mksa.h:117
   GSL_CONST_MKSA_PROTON_MAGNETIC_MOMENT : constant := (1.410606633e-26);  --  /usr/include/gsl/gsl_const_mksa.h:118
   GSL_CONST_MKSA_FARADAY : constant := (9.64853429775e4);  --  /usr/include/gsl/gsl_const_mksa.h:119
   GSL_CONST_MKSA_ELECTRON_CHARGE : constant := (1.602176487e-19);  --  /usr/include/gsl/gsl_const_mksa.h:120
   GSL_CONST_MKSA_VACUUM_PERMITTIVITY : constant := (8.854187817e-12);  --  /usr/include/gsl/gsl_const_mksa.h:121
   GSL_CONST_MKSA_VACUUM_PERMEABILITY : constant := (1.25663706144e-6);  --  /usr/include/gsl/gsl_const_mksa.h:122
   GSL_CONST_MKSA_DEBYE : constant := (3.33564095198e-30);  --  /usr/include/gsl/gsl_const_mksa.h:123
   GSL_CONST_MKSA_GAUSS : constant := (1e-4);  --  /usr/include/gsl/gsl_const_mksa.h:124

end gsl_gsl_const_mksa_h;
