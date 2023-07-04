import 'package:flutter/material.dart';

class _PaleteColors {
  static final dotsIndicatorGreyColor = Colors.grey.shade200;
  static const grey = Colors.grey;
  static const white = Color(0xFFffffff);
  static const black = Color(0xFF191919);
  static const shadowColor = Color(0x1919190A);
  static const dividerLightGrey = Color(0xFFF4F4F4);
  static const textColorGrey = Color(0xFF707075);
  static const disableColor = Color(0xFFC7C7CD);
  static const disableCard = Color(0xFFEAEAEA);
  static const dividerColor = Color(0xFFEAEAEA);
  static const appBarColor = Color(0XFFF5F5F5);
  static const separatorColor = Color(0XFFD9D9DC);
  static const darkGrey = Color(0XFF707075);
  static const appPinkCard = Color(0XFFFE1F6F);
  static const dotsAddressColor = Color(0XFF86868B);
  static const dotColorGreen = Color(0XFF4DDCCA);
  static const dotColorYelow = Color(0XFFFEBC43);
  static const primarySwatch = Color(0xFFC23166);
  static const primaryDotShadow = Color(0xFFd80f58);
  static const MaterialColor primaryColor =
      MaterialColor(_primarycolorPrimaryValue, <int, Color>{
    50: Color(0xFFFFE4EE),
    100: Color(0xFFFFBCD4),
    200: Color(0xFFFF8FB8),
    300: Color(0xFFFF629B),
    400: Color(0xFFFF4185),
    500: Color(_primarycolorPrimaryValue),
    600: Color(0xFFFF1B68),
    700: Color(0xFFFF175D),
    800: Color(0xFFFF1253),
    900: Color(0xFFFF0A41),
  });
  static const int _primarycolorPrimaryValue = 0xFFFF1F70;
}

class DarwinColorsData {
  final Color dotsIndicatorGreyColor;
  final Color grey;
  final Color white;
  final Color black;
  final Color shadowColor;
  final Color dividerLightGrey;
  final Color textColorGrey;
  final Color disableColor;
  final Color disableCard;
  final Color dividerColor;
  final Color appBarColor;
  final Color separatorColor;
  final Color darkGrey;
  final Color appPinkCard;
  final Color dotsAddressColor;
  final Color dotColorGreen;
  final Color dotColorYelow;
  final Color primarySwatch;
  final Color primaryDotShadow;
  final MaterialColor primaryColor;

  const DarwinColorsData({
    required this.dotsIndicatorGreyColor,
    required this.grey,
    required this.white,
    required this.black,
    required this.shadowColor,
    required this.dividerLightGrey,
    required this.textColorGrey,
    required this.disableColor,
    required this.disableCard,
    required this.dividerColor,
    required this.appBarColor,
    required this.separatorColor,
    required this.darkGrey,
    required this.appPinkCard,
    required this.dotsAddressColor,
    required this.dotColorGreen,
    required this.dotColorYelow,
    required this.primarySwatch,
    required this.primaryDotShadow,
    required this.primaryColor,
  });

  factory DarwinColorsData.light() => DarwinColorsData(
        dotsIndicatorGreyColor: _PaleteColors.dotsIndicatorGreyColor,
        grey: _PaleteColors.grey,
        white: _PaleteColors.white,
        black: _PaleteColors.black,
        shadowColor: _PaleteColors.shadowColor,
        dividerLightGrey: _PaleteColors.dividerLightGrey,
        textColorGrey: _PaleteColors.textColorGrey,
        disableColor: _PaleteColors.disableColor,
        disableCard: _PaleteColors.disableCard,
        dividerColor: _PaleteColors.dividerColor,
        appBarColor: _PaleteColors.appBarColor,
        separatorColor: _PaleteColors.separatorColor,
        darkGrey: _PaleteColors.darkGrey,
        appPinkCard: _PaleteColors.appPinkCard,
        dotsAddressColor: _PaleteColors.dotsAddressColor,
        dotColorGreen: _PaleteColors.dotColorGreen,
        dotColorYelow: _PaleteColors.dotColorYelow,
        primarySwatch: _PaleteColors.primarySwatch,
        primaryDotShadow: _PaleteColors.primaryDotShadow,
        primaryColor: _PaleteColors.primaryColor,
      );
}
