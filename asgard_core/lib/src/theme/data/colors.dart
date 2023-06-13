import 'package:asgard_core/src/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

/// [https://www.color-name.com/]
class PaleteColors {
  static const Color black = Color(0xFF000000);
  static const Color bluePigment = Color(0xFF272C9A);
  static const Color chineseBlack = Color(0xFF111111);
  static const Color gainsboro = Color(0xFFDDDDDD);
  static const Color persianBlue = Color(0xFF2D33B9);
  static const Color raisinBlack = Color(0xFF222222);
  static const Color ultramarineBlue = Color(0xFF454CFF);
  static const Color white = Color(0xFFffffff);
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
  });

  factory AsgardColorsData.light() => const AsgardColorsData(
        accent: PaleteColors.ultramarineBlue,
        accentOpposite: PaleteColors.white,
        accentHighlight: PaleteColors.persianBlue,
        accentHighlight2: PaleteColors.bluePigment,
        foreground: PaleteColors.black,
        background: PaleteColors.white,
        actionBarBackground: PaleteColors.black,
        actionBarForeground: PaleteColors.white,
      );

  factory AsgardColorsData.dark() => const AsgardColorsData(
        accent: PaleteColors.ultramarineBlue,
        accentOpposite: PaleteColors.white,
        accentHighlight: PaleteColors.persianBlue,
        accentHighlight2: PaleteColors.bluePigment,
        foreground: PaleteColors.white,
        background: PaleteColors.chineseBlack,
        actionBarBackground: PaleteColors.black,
        actionBarForeground: PaleteColors.white,
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
      );

  final Color accent;
  final Color accentHighlight;
  final Color accentHighlight2;
  final Color foreground;
  final Color accentOpposite;
  final Color background;
  final Color actionBarForeground;
  final Color actionBarBackground;

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
      ];
}
