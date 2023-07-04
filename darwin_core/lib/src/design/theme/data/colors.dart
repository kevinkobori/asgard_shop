import 'package:darwin_core/src/design/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class PaleteColors {
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

  static const good = Color(0xFF41D7C4);
  static const warning = Color(0xFFFFB345);
  static const bluePigment = Color(0xFF272C9A);
  static const chineseBlack = Color(0xFF111111);
  static const chineseSilver = Color(0xFFC3C3C3);
  static const gainsboro = Color(0xFFDDDDDD);
  static const persianBlue = Color(0xFF2D33B9);
  static const raisinBlack = Color(0xFF222222);
  static const asd = Color(0xFF454CFF);
  static const pinkDarwin = Color(0xFFFF1F70);
}

class DarwinColorsData extends Equatable {
  const DarwinColorsData({
    required this.accent,
    required this.accentHighlight,
    required this.accentHighlight2,
    required this.foreground,
    required this.background,
    required this.actionBarBackground,
    required this.actionBarForeground,
    required this.accentOpposite,
    required this.disabledColor,
  });

  factory DarwinColorsData.light() => const DarwinColorsData(
        accent: PaleteColors.pinkDarwin,
        accentOpposite: PaleteColors.white,
        accentHighlight: PaleteColors.persianBlue,
        accentHighlight2: PaleteColors.bluePigment,
        foreground: PaleteColors.black,
        background: PaleteColors.white,
        actionBarBackground: PaleteColors.black,
        actionBarForeground: PaleteColors.white,
        disabledColor: PaleteColors.chineseSilver,
      );

  final Color accent;
  final Color accentHighlight;
  final Color accentHighlight2;
  final Color foreground;
  final Color accentOpposite;
  final Color background;
  final Color actionBarForeground;
  final Color actionBarBackground;
  final Color disabledColor;

  @override
  List<Object?> get props => [
        accent.named('accent'),
        accentHighlight.named('accentHighlight'),
        accentHighlight2.named('accentHighlight2'),
        foreground.named('foreground'),
        accentOpposite.named('accentOpposite'),
        background.named('background'),
        actionBarForeground.named('actionBarForeground'),
        actionBarBackground.named('actionBarBackground'),
        disabledColor.named('disabledColor'),
      ];
}
