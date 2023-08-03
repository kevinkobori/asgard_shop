part of darwin_theme_data;

class _PaleteColors {
  static const Color black = Color(0xFF000000);
  static const Color bluePigment = Color(0xFF272C9A);
  // static const Color chineseBlack = Color(0xFF111111);
  static const Color chineseSilver = Color(0xFFC3C3C3);
  static const Color gainsboro = Color(0xFFDDDDDD);
  static const Color persianBlue = Color(0xFF2D33B9);
  static const Color raisinBlack = Color(0xFF222222);
  // static const Color asd = Color(0xFF454CFF);
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

  factory AsgardColorsData._light() => const AsgardColorsData(
        accent: _PaleteColors.teslaRed,
        accentOpposite: _PaleteColors.white,
        accentHighlight: _PaleteColors.persianBlue,
        accentHighlight2: _PaleteColors.bluePigment,
        foreground: _PaleteColors.black,
        background: _PaleteColors.gainsboro,
        actionBarBackground: _PaleteColors.black,
        actionBarForeground: _PaleteColors.white,
        disabledColor: _PaleteColors.chineseSilver,
      );

  factory AsgardColorsData.dark() => const AsgardColorsData(
        accent: _PaleteColors.teslaRed,
        accentOpposite: _PaleteColors.white,
        accentHighlight: _PaleteColors.persianBlue,
        accentHighlight2: _PaleteColors.bluePigment,
        foreground: _PaleteColors.white,
        background: _PaleteColors.gainsboro,
        actionBarBackground: _PaleteColors.black,
        actionBarForeground: _PaleteColors.white,
        disabledColor: _PaleteColors.chineseSilver,
      );

  factory AsgardColorsData.highContrast() => const AsgardColorsData(
        accent: _PaleteColors.black,
        accentOpposite: _PaleteColors.white,
        accentHighlight: _PaleteColors.black,
        accentHighlight2: _PaleteColors.black,
        foreground: _PaleteColors.raisinBlack,
        background: _PaleteColors.white,
        actionBarBackground: _PaleteColors.gainsboro,
        actionBarForeground: _PaleteColors.raisinBlack,
        disabledColor: _PaleteColors.chineseSilver,
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
