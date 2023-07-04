import 'package:asgard_core/src/design/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

/// https://www.color-name.com/
class PaleteColors {
  static const Color black = Color(0xFF000000);
  static const Color bluePigment = Color(0xFF272C9A);
  static const Color chineseBlack = Color(0xFF111111);
  static const Color chineseSilver = Color(0xFFC3C3C3);
  static const Color gainsboro = Color(0xFFDDDDDD);
  static const Color persianBlue = Color(0xFF2D33B9);
  static const Color raisinBlack = Color(0xFF222222);
  static const Color asd = Color(0xFF454CFF);
  static const Color white = Color(0xFFffffff);
  static const Color teslaRed = Color(0xFFE31937);
}

class AsgardColorsData extends Equatable {
  const AsgardColorsData({
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

  factory AsgardColorsData.light() => const AsgardColorsData(
        accent: PaleteColors.teslaRed,
        accentOpposite: PaleteColors.white,
        accentHighlight: PaleteColors.persianBlue,
        accentHighlight2: PaleteColors.bluePigment,
        foreground: PaleteColors.black,
        background: PaleteColors.gainsboro,
        actionBarBackground: PaleteColors.black,
        actionBarForeground: PaleteColors.white,
        disabledColor: PaleteColors.chineseSilver,
      );

  factory AsgardColorsData.dark() => const AsgardColorsData(
        accent: PaleteColors.teslaRed,
        accentOpposite: PaleteColors.white,
        accentHighlight: PaleteColors.persianBlue,
        accentHighlight2: PaleteColors.bluePigment,
        foreground: PaleteColors.white,
        background: PaleteColors.gainsboro,
        actionBarBackground: PaleteColors.black,
        actionBarForeground: PaleteColors.white,
        disabledColor: PaleteColors.chineseSilver,
      );

  factory AsgardColorsData.highContrast() => const AsgardColorsData(
        accent: PaleteColors.black,
        accentOpposite: PaleteColors.white,
        accentHighlight: PaleteColors.black,
        accentHighlight2: PaleteColors.black,
        foreground: PaleteColors.raisinBlack,
        background: PaleteColors.white,
        actionBarBackground: PaleteColors.gainsboro,
        actionBarForeground: PaleteColors.raisinBlack,
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
