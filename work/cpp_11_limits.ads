pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package cpp_11_limits is

   subtype float_round_style is int;
   round_indeterminate : constant float_round_style := -1;
   round_toward_zero : constant float_round_style := 0;
   round_to_nearest : constant float_round_style := 1;
   round_toward_infinity : constant float_round_style := 2;
   round_toward_neg_infinity : constant float_round_style := 3;  -- /usr/include/c++/11/limits:167

   subtype float_denorm_style is int;
   denorm_indeterminate : constant float_denorm_style := -1;
   denorm_absent : constant float_denorm_style := 0;
   denorm_present : constant float_denorm_style := 1;  -- /usr/include/c++/11/limits:182

   package Class_uu_numeric_limits_base is
      type uu_numeric_limits_base is record
         null;
      end record
      with Convention => C_Pass_By_Copy;

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:206
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:211
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:214
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:219
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:223
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:226
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:231
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:235
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:239
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:243
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:248
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:252
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:255
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:259
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:263
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:266
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:270
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:274
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:279
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:288
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:291
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:294
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:299
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt21__numeric_limits_base11round_styleE";
   end;
   use Class_uu_numeric_limits_base;
   package numeric_limits_long_double is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return long_double  -- /usr/include/c++/11/limits:1823
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE3minEv";

      function max return long_double  -- /usr/include/c++/11/limits:1826
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE3maxEv";

      function lowest return long_double  -- /usr/include/c++/11/limits:1830
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE6lowestEv";

      function epsilon return long_double  -- /usr/include/c++/11/limits:1845
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE7epsilonEv";

      function round_error return long_double  -- /usr/include/c++/11/limits:1848
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE11round_errorEv";

      function infinity return long_double  -- /usr/include/c++/11/limits:1864
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE8infinityEv";

      function quiet_NaN return long_double  -- /usr/include/c++/11/limits:1867
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE9quiet_NaNEv";

      function signaling_NaN return long_double  -- /usr/include/c++/11/limits:1870
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE13signaling_NaNEv";

      function denorm_min return long_double  -- /usr/include/c++/11/limits:1873
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1820
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:1833
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:1834
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:1836
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1839
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1840
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1841
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:1842
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:1850
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1851
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:1852
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1853
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1855
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1856
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1857
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:1858
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1860
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1875
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1877
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1878
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1880
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1881
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:1883
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIeE11round_styleE";

   end;
   use numeric_limits_long_double;

   package numeric_limits_double is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return double  -- /usr/include/c++/11/limits:1748
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE3minEv";

      function max return double  -- /usr/include/c++/11/limits:1751
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE3maxEv";

      function lowest return double  -- /usr/include/c++/11/limits:1755
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE6lowestEv";

      function epsilon return double  -- /usr/include/c++/11/limits:1770
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE7epsilonEv";

      function round_error return double  -- /usr/include/c++/11/limits:1773
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE11round_errorEv";

      function infinity return double  -- /usr/include/c++/11/limits:1789
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE8infinityEv";

      function quiet_NaN return double  -- /usr/include/c++/11/limits:1792
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE9quiet_NaNEv";

      function signaling_NaN return double  -- /usr/include/c++/11/limits:1795
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE13signaling_NaNEv";

      function denorm_min return double  -- /usr/include/c++/11/limits:1798
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1745
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:1758
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:1759
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:1761
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1764
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1765
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1766
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:1767
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:1775
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1776
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:1777
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1778
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1780
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1781
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1782
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:1783
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1785
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1800
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1802
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1803
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1805
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1806
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:1808
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIdE11round_styleE";

   end;
   use numeric_limits_double;

   package numeric_limits_float is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return float  -- /usr/include/c++/11/limits:1673
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE3minEv";

      function max return float  -- /usr/include/c++/11/limits:1676
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE3maxEv";

      function lowest return float  -- /usr/include/c++/11/limits:1680
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE6lowestEv";

      function epsilon return float  -- /usr/include/c++/11/limits:1695
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE7epsilonEv";

      function round_error return float  -- /usr/include/c++/11/limits:1698
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE11round_errorEv";

      function infinity return float  -- /usr/include/c++/11/limits:1714
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE8infinityEv";

      function quiet_NaN return float  -- /usr/include/c++/11/limits:1717
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE9quiet_NaNEv";

      function signaling_NaN return float  -- /usr/include/c++/11/limits:1720
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE13signaling_NaNEv";

      function denorm_min return float  -- /usr/include/c++/11/limits:1723
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1670
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:1683
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:1684
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:1686
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1689
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1690
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1691
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:1692
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:1700
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1701
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:1702
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1703
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1705
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1706
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1707
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:1708
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1710
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1725
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1727
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1728
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1730
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1731
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:1733
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIfE11round_styleE";

   end;
   use numeric_limits_float;

   package numeric_limits_uu_int128_unsigned is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return uu_int128_unsigned  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE3minEv";

      function max return uu_int128_unsigned  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE3maxEv";

      function lowest return uu_int128_unsigned  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE6lowestEv";

      function epsilon return uu_int128_unsigned  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE7epsilonEv";

      function round_error return uu_int128_unsigned  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE11round_errorEv";

      function infinity return uu_int128_unsigned  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE8infinityEv";

      function quiet_NaN return uu_int128_unsigned  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE9quiet_NaNEv";

      function signaling_NaN return uu_int128_unsigned  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE13signaling_NaNEv";

      function denorm_min return uu_int128_unsigned  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE14is_specializedE";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE12max_digits10E";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE8digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIoE11round_styleE";

   end;
   use numeric_limits_uu_int128_unsigned;

   package numeric_limits_Extensions.Signed_128 is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return Extensions.Signed_128  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE3minEv";

      function max return Extensions.Signed_128  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE3maxEv";

      function epsilon return Extensions.Signed_128  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE7epsilonEv";

      function round_error return Extensions.Signed_128  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE11round_errorEv";

      function lowest return Extensions.Signed_128  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE6lowestEv";

      function infinity return Extensions.Signed_128  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE8infinityEv";

      function quiet_NaN return Extensions.Signed_128  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE9quiet_NaNEv";

      function signaling_NaN return Extensions.Signed_128  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE13signaling_NaNEv";

      function denorm_min return Extensions.Signed_128  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE8digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE5radixE";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE12max_digits10E";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:1635
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsInE11round_styleE";

   end;
   use numeric_limits_Extensions.Signed_128;

   package numeric_limits_unsigned_long_long is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return Extensions.unsigned_long_long  -- /usr/include/c++/11/limits:1414
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE3minEv";

      function max return Extensions.unsigned_long_long  -- /usr/include/c++/11/limits:1417
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE3maxEv";

      function lowest return Extensions.unsigned_long_long  -- /usr/include/c++/11/limits:1421
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE6lowestEv";

      function epsilon return Extensions.unsigned_long_long  -- /usr/include/c++/11/limits:1437
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE7epsilonEv";

      function round_error return Extensions.unsigned_long_long  -- /usr/include/c++/11/limits:1440
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE11round_errorEv";

      function infinity return Extensions.unsigned_long_long  -- /usr/include/c++/11/limits:1455
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE8infinityEv";

      function quiet_NaN return Extensions.unsigned_long_long  -- /usr/include/c++/11/limits:1459
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE9quiet_NaNEv";

      function signaling_NaN return Extensions.unsigned_long_long  -- /usr/include/c++/11/limits:1463
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE13signaling_NaNEv";

      function denorm_min return Extensions.unsigned_long_long  -- /usr/include/c++/11/limits:1467
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1411
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:1424
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:1426
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:1429
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1431
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1432
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1433
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:1434
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:1442
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1443
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:1444
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1445
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1447
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1448
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1449
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:1450
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1452
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1470
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1471
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1472
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1474
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1475
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:1476
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIyE11round_styleE";

   end;
   use numeric_limits_unsigned_long_long;

   package numeric_limits_Long_Long_Integer is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return Long_Long_Integer  -- /usr/include/c++/11/limits:1344
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE3minEv";

      function max return Long_Long_Integer  -- /usr/include/c++/11/limits:1347
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE3maxEv";

      function lowest return Long_Long_Integer  -- /usr/include/c++/11/limits:1351
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE6lowestEv";

      function epsilon return Long_Long_Integer  -- /usr/include/c++/11/limits:1367
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE7epsilonEv";

      function round_error return Long_Long_Integer  -- /usr/include/c++/11/limits:1370
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE11round_errorEv";

      function infinity return Long_Long_Integer  -- /usr/include/c++/11/limits:1385
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE8infinityEv";

      function quiet_NaN return Long_Long_Integer  -- /usr/include/c++/11/limits:1388
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE9quiet_NaNEv";

      function signaling_NaN return Long_Long_Integer  -- /usr/include/c++/11/limits:1391
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE13signaling_NaNEv";

      function denorm_min return Long_Long_Integer  -- /usr/include/c++/11/limits:1395
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1341
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:1354
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:1356
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:1359
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1361
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1362
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1363
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:1364
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:1372
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1373
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:1374
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1375
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1377
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1378
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1379
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:1380
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1382
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1397
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1398
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1399
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1401
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1402
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:1403
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIxE11round_styleE";

   end;
   use numeric_limits_Long_Long_Integer;

   package numeric_limits_unsigned_long is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return unsigned_long  -- /usr/include/c++/11/limits:1271
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE3minEv";

      function max return unsigned_long  -- /usr/include/c++/11/limits:1274
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE3maxEv";

      function lowest return unsigned_long  -- /usr/include/c++/11/limits:1278
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE6lowestEv";

      function epsilon return unsigned_long  -- /usr/include/c++/11/limits:1294
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE7epsilonEv";

      function round_error return unsigned_long  -- /usr/include/c++/11/limits:1297
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE11round_errorEv";

      function infinity return unsigned_long  -- /usr/include/c++/11/limits:1312
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE8infinityEv";

      function quiet_NaN return unsigned_long  -- /usr/include/c++/11/limits:1316
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE9quiet_NaNEv";

      function signaling_NaN return unsigned_long  -- /usr/include/c++/11/limits:1320
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE13signaling_NaNEv";

      function denorm_min return unsigned_long  -- /usr/include/c++/11/limits:1324
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1268
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:1281
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:1283
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:1286
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1288
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1289
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1290
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:1291
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:1299
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1300
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:1301
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1302
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1304
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1305
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1306
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:1307
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1309
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1327
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1328
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1329
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1331
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1332
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:1333
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsImE11round_styleE";

   end;
   use numeric_limits_unsigned_long;

   package numeric_limits_long is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return long  -- /usr/include/c++/11/limits:1204
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE3minEv";

      function max return long  -- /usr/include/c++/11/limits:1207
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE3maxEv";

      function lowest return long  -- /usr/include/c++/11/limits:1211
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE6lowestEv";

      function epsilon return long  -- /usr/include/c++/11/limits:1225
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE7epsilonEv";

      function round_error return long  -- /usr/include/c++/11/limits:1228
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE11round_errorEv";

      function infinity return long  -- /usr/include/c++/11/limits:1243
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE8infinityEv";

      function quiet_NaN return long  -- /usr/include/c++/11/limits:1246
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE9quiet_NaNEv";

      function signaling_NaN return long  -- /usr/include/c++/11/limits:1249
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE13signaling_NaNEv";

      function denorm_min return long  -- /usr/include/c++/11/limits:1252
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1201
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:1214
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:1215
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:1217
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1219
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1220
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1221
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:1222
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:1230
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1231
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:1232
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1233
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1235
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1236
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1237
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:1238
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1240
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1254
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1255
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1256
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1258
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1259
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:1260
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIlE11round_styleE";

   end;
   use numeric_limits_long;

   package numeric_limits_unsigned is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return unsigned  -- /usr/include/c++/11/limits:1132
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE3minEv";

      function max return unsigned  -- /usr/include/c++/11/limits:1135
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE3maxEv";

      function lowest return unsigned  -- /usr/include/c++/11/limits:1139
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE6lowestEv";

      function epsilon return unsigned  -- /usr/include/c++/11/limits:1155
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE7epsilonEv";

      function round_error return unsigned  -- /usr/include/c++/11/limits:1158
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE11round_errorEv";

      function infinity return unsigned  -- /usr/include/c++/11/limits:1173
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE8infinityEv";

      function quiet_NaN return unsigned  -- /usr/include/c++/11/limits:1176
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE9quiet_NaNEv";

      function signaling_NaN return unsigned  -- /usr/include/c++/11/limits:1180
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE13signaling_NaNEv";

      function denorm_min return unsigned  -- /usr/include/c++/11/limits:1184
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1129
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:1142
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:1144
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:1147
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1149
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1150
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1151
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:1152
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:1160
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1161
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:1162
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1163
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1165
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1166
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1167
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:1168
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1170
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1187
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1188
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1189
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1191
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1192
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:1193
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIjE11round_styleE";

   end;
   use numeric_limits_unsigned;

   package numeric_limits_int is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return int  -- /usr/include/c++/11/limits:1065
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE3minEv";

      function max return int  -- /usr/include/c++/11/limits:1068
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE3maxEv";

      function lowest return int  -- /usr/include/c++/11/limits:1072
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE6lowestEv";

      function epsilon return int  -- /usr/include/c++/11/limits:1086
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE7epsilonEv";

      function round_error return int  -- /usr/include/c++/11/limits:1089
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE11round_errorEv";

      function infinity return int  -- /usr/include/c++/11/limits:1104
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE8infinityEv";

      function quiet_NaN return int  -- /usr/include/c++/11/limits:1107
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE9quiet_NaNEv";

      function signaling_NaN return int  -- /usr/include/c++/11/limits:1110
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE13signaling_NaNEv";

      function denorm_min return int  -- /usr/include/c++/11/limits:1113
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1062
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:1075
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:1076
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:1078
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1080
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1081
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1082
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:1083
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:1091
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1092
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:1093
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1094
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1096
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1097
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1098
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:1099
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1101
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1115
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1116
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1117
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1119
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1120
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:1121
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIiE11round_styleE";

   end;
   use numeric_limits_int;

   package numeric_limits_unsigned_short is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return unsigned_short  -- /usr/include/c++/11/limits:992
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE3minEv";

      function max return unsigned_short  -- /usr/include/c++/11/limits:995
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE3maxEv";

      function lowest return unsigned_short  -- /usr/include/c++/11/limits:999
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE6lowestEv";

      function epsilon return unsigned_short  -- /usr/include/c++/11/limits:1015
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE7epsilonEv";

      function round_error return unsigned_short  -- /usr/include/c++/11/limits:1018
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE11round_errorEv";

      function infinity return unsigned_short  -- /usr/include/c++/11/limits:1033
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE8infinityEv";

      function quiet_NaN return unsigned_short  -- /usr/include/c++/11/limits:1037
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE9quiet_NaNEv";

      function signaling_NaN return unsigned_short  -- /usr/include/c++/11/limits:1041
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE13signaling_NaNEv";

      function denorm_min return unsigned_short  -- /usr/include/c++/11/limits:1045
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:989
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:1002
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:1004
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:1007
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1009
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1010
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1011
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:1012
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:1020
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1021
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:1022
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:1023
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1025
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1026
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1027
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:1028
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1030
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1048
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1049
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1050
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1052
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:1053
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:1054
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsItE11round_styleE";

   end;
   use numeric_limits_unsigned_short;

   package numeric_limits_short is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return short  -- /usr/include/c++/11/limits:925
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE3minEv";

      function max return short  -- /usr/include/c++/11/limits:928
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE3maxEv";

      function lowest return short  -- /usr/include/c++/11/limits:932
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE6lowestEv";

      function epsilon return short  -- /usr/include/c++/11/limits:946
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE7epsilonEv";

      function round_error return short  -- /usr/include/c++/11/limits:949
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE11round_errorEv";

      function infinity return short  -- /usr/include/c++/11/limits:964
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE8infinityEv";

      function quiet_NaN return short  -- /usr/include/c++/11/limits:967
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE9quiet_NaNEv";

      function signaling_NaN return short  -- /usr/include/c++/11/limits:970
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE13signaling_NaNEv";

      function denorm_min return short  -- /usr/include/c++/11/limits:973
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:922
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:935
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:936
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:938
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:940
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:941
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:942
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:943
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:951
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:952
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:953
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:954
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:956
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:957
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:958
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:959
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:961
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:975
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:976
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:977
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:979
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:980
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:981
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIsE11round_styleE";

   end;
   use numeric_limits_short;

   package numeric_limits_char32_t is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return char32_t  -- /usr/include/c++/11/limits:863
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE3minEv";

      function max return char32_t  -- /usr/include/c++/11/limits:866
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE3maxEv";

      function lowest return char32_t  -- /usr/include/c++/11/limits:869
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE6lowestEv";

      function epsilon return char32_t  -- /usr/include/c++/11/limits:880
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE7epsilonEv";

      function round_error return char32_t  -- /usr/include/c++/11/limits:883
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE11round_errorEv";

      function infinity return char32_t  -- /usr/include/c++/11/limits:897
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE8infinityEv";

      function quiet_NaN return char32_t  -- /usr/include/c++/11/limits:900
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE9quiet_NaNEv";

      function signaling_NaN return char32_t  -- /usr/include/c++/11/limits:903
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE13signaling_NaNEv";

      function denorm_min return char32_t  -- /usr/include/c++/11/limits:906
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:860
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:871
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:872
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:873
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:874
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:875
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:876
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:877
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:885
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:886
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:887
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:888
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:890
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:891
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:892
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:893
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:894
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:908
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:909
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:910
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:912
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:913
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:914
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDiE11round_styleE";

   end;
   use numeric_limits_char32_t;

   package numeric_limits_char16_t is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return char16_t  -- /usr/include/c++/11/limits:802
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE3minEv";

      function max return char16_t  -- /usr/include/c++/11/limits:805
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE3maxEv";

      function lowest return char16_t  -- /usr/include/c++/11/limits:808
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE6lowestEv";

      function epsilon return char16_t  -- /usr/include/c++/11/limits:819
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE7epsilonEv";

      function round_error return char16_t  -- /usr/include/c++/11/limits:822
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE11round_errorEv";

      function infinity return char16_t  -- /usr/include/c++/11/limits:836
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE8infinityEv";

      function quiet_NaN return char16_t  -- /usr/include/c++/11/limits:839
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE9quiet_NaNEv";

      function signaling_NaN return char16_t  -- /usr/include/c++/11/limits:842
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE13signaling_NaNEv";

      function denorm_min return char16_t  -- /usr/include/c++/11/limits:845
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:799
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:810
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:811
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:812
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:813
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:814
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:815
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:816
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:824
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:825
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:826
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:827
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:829
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:830
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:831
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:832
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:833
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:847
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:848
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:849
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:851
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:852
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:853
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIDsE11round_styleE";

   end;
   use numeric_limits_char16_t;

   package numeric_limits_wchar_t is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return wchar_t  -- /usr/include/c++/11/limits:668
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE3minEv";

      function max return wchar_t  -- /usr/include/c++/11/limits:671
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE3maxEv";

      function lowest return wchar_t  -- /usr/include/c++/11/limits:675
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE6lowestEv";

      function epsilon return wchar_t  -- /usr/include/c++/11/limits:690
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE7epsilonEv";

      function round_error return wchar_t  -- /usr/include/c++/11/limits:693
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE11round_errorEv";

      function infinity return wchar_t  -- /usr/include/c++/11/limits:708
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE8infinityEv";

      function quiet_NaN return wchar_t  -- /usr/include/c++/11/limits:711
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE9quiet_NaNEv";

      function signaling_NaN return wchar_t  -- /usr/include/c++/11/limits:714
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE13signaling_NaNEv";

      function denorm_min return wchar_t  -- /usr/include/c++/11/limits:717
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:665
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:678
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:679
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:682
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:684
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:685
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:686
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:687
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:695
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:696
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:697
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:698
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:700
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:701
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:702
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:703
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:705
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:719
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:720
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:721
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:723
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:724
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:725
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIwE11round_styleE";

   end;
   use numeric_limits_wchar_t;

   package numeric_limits_unsigned_char is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return unsigned_char  -- /usr/include/c++/11/limits:595
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE3minEv";

      function max return unsigned_char  -- /usr/include/c++/11/limits:598
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE3maxEv";

      function lowest return unsigned_char  -- /usr/include/c++/11/limits:602
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE6lowestEv";

      function epsilon return unsigned_char  -- /usr/include/c++/11/limits:618
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE7epsilonEv";

      function round_error return unsigned_char  -- /usr/include/c++/11/limits:621
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE11round_errorEv";

      function infinity return unsigned_char  -- /usr/include/c++/11/limits:636
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE8infinityEv";

      function quiet_NaN return unsigned_char  -- /usr/include/c++/11/limits:640
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE9quiet_NaNEv";

      function signaling_NaN return unsigned_char  -- /usr/include/c++/11/limits:644
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE13signaling_NaNEv";

      function denorm_min return unsigned_char  -- /usr/include/c++/11/limits:648
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:592
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:605
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:607
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:610
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:612
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:613
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:614
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:615
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:623
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:624
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:625
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:626
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:628
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:629
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:630
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:631
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:633
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:651
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:652
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:653
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:655
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:656
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:657
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIhE11round_styleE";

   end;
   use numeric_limits_unsigned_char;

   package numeric_limits_signed_char is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return signed_char  -- /usr/include/c++/11/limits:525
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE3minEv";

      function max return signed_char  -- /usr/include/c++/11/limits:528
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE3maxEv";

      function lowest return signed_char  -- /usr/include/c++/11/limits:532
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE6lowestEv";

      function epsilon return signed_char  -- /usr/include/c++/11/limits:547
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE7epsilonEv";

      function round_error return signed_char  -- /usr/include/c++/11/limits:550
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE11round_errorEv";

      function infinity return signed_char  -- /usr/include/c++/11/limits:565
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE8infinityEv";

      function quiet_NaN return signed_char  -- /usr/include/c++/11/limits:568
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE9quiet_NaNEv";

      function signaling_NaN return signed_char  -- /usr/include/c++/11/limits:571
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE13signaling_NaNEv";

      function denorm_min return signed_char  -- /usr/include/c++/11/limits:575
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:522
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:535
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:536
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:539
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:541
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:542
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:543
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:544
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:552
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:553
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:554
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:555
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:557
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:558
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:559
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:560
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:562
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:578
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:579
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:580
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:582
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:583
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:584
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIaE11round_styleE";

   end;
   use numeric_limits_signed_char;

   package numeric_limits_char is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return char  -- /usr/include/c++/11/limits:458
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE3minEv";

      function max return char  -- /usr/include/c++/11/limits:461
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE3maxEv";

      function lowest return char  -- /usr/include/c++/11/limits:465
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE6lowestEv";

      function epsilon return char  -- /usr/include/c++/11/limits:479
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE7epsilonEv";

      function round_error return char  -- /usr/include/c++/11/limits:482
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE11round_errorEv";

      function infinity return char  -- /usr/include/c++/11/limits:497
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE8infinityEv";

      function quiet_NaN return char  -- /usr/include/c++/11/limits:500
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE9quiet_NaNEv";

      function signaling_NaN return char  -- /usr/include/c++/11/limits:503
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE13signaling_NaNEv";

      function denorm_min return char  -- /usr/include/c++/11/limits:506
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:455
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:468
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:469
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:471
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:473
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:474
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:475
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:476
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:484
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:485
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:486
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:487
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:489
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:490
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:491
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:492
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:494
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:508
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:509
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:510
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:512
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:513
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:514
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIcE11round_styleE";

   end;
   use numeric_limits_char;

   package numeric_limits_bool is
      type numeric_limits is limited record
         null;
      end record
      with Import => True,
           Convention => CPP;

      function min return Extensions.bool  -- /usr/include/c++/11/limits:389
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE3minEv";

      function max return Extensions.bool  -- /usr/include/c++/11/limits:392
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE3maxEv";

      function lowest return Extensions.bool  -- /usr/include/c++/11/limits:396
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE6lowestEv";

      function epsilon return Extensions.bool  -- /usr/include/c++/11/limits:409
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE7epsilonEv";

      function round_error return Extensions.bool  -- /usr/include/c++/11/limits:412
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE11round_errorEv";

      function infinity return Extensions.bool  -- /usr/include/c++/11/limits:427
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE8infinityEv";

      function quiet_NaN return Extensions.bool  -- /usr/include/c++/11/limits:430
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE9quiet_NaNEv";

      function signaling_NaN return Extensions.bool  -- /usr/include/c++/11/limits:433
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE13signaling_NaNEv";

      function denorm_min return Extensions.bool  -- /usr/include/c++/11/limits:436
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE10denorm_minEv";

      is_specialized : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:386
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE14is_specializedE";

      c_digits : aliased constant int  -- /usr/include/c++/11/limits:398
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE6digitsE";

      digits10 : aliased constant int  -- /usr/include/c++/11/limits:399
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE8digits10E";

      max_digits10 : aliased constant int  -- /usr/include/c++/11/limits:401
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE12max_digits10E";

      is_signed : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:403
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE9is_signedE";

      is_integer : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:404
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE10is_integerE";

      is_exact : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:405
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE8is_exactE";

      radix : aliased constant int  -- /usr/include/c++/11/limits:406
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE5radixE";

      min_exponent : aliased constant int  -- /usr/include/c++/11/limits:414
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE12min_exponentE";

      min_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:415
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE14min_exponent10E";

      max_exponent : aliased constant int  -- /usr/include/c++/11/limits:416
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE12max_exponentE";

      max_exponent10 : aliased constant int  -- /usr/include/c++/11/limits:417
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE14max_exponent10E";

      has_infinity : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:419
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE12has_infinityE";

      has_quiet_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:420
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE13has_quiet_NaNE";

      has_signaling_NaN : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:421
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE17has_signaling_NaNE";

      has_denorm : aliased constant float_denorm_style  -- /usr/include/c++/11/limits:422
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE10has_denormE";

      has_denorm_loss : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:424
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE15has_denorm_lossE";

      is_iec559 : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:438
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE9is_iec559E";

      is_bounded : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:439
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE10is_boundedE";

      is_modulo : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:440
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE9is_moduloE";

      traps : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:445
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE5trapsE";

      tinyness_before : aliased constant Extensions.bool  -- /usr/include/c++/11/limits:446
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE15tinyness_beforeE";

      round_style : aliased constant float_round_style  -- /usr/include/c++/11/limits:447
      with Import => True, 
           Convention => CPP, 
           External_Name => "_ZNSt14numeric_limitsIbE11round_styleE";

   end;
   use numeric_limits_bool;



end cpp_11_limits;
