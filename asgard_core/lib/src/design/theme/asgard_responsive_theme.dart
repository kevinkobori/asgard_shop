import 'dart:ui' as ui;

import 'package:asgard_core/src/design/theme/asgard_theme.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum AsgardThemeColorMode {
  light,
  dark,
  highContrast,
}

/// Updates automatically the [AsgardTheme] regarding the current [MediaQuery],
/// as soon as the [theme] isn't overriden.
class AsgardResponsiveTheme extends StatelessWidget {
  const AsgardResponsiveTheme({
    Key? key,
    required this.appLogo,
    required this.child,
    this.darkAppLogo,
    this.colorMode,
    this.formFactor,
  }) : super(key: key);

  final AsgardThemeColorMode? colorMode;
  final AsgardFormFactor? formFactor;
  final Widget child;
  final PictureProvider appLogo;
  final PictureProvider? darkAppLogo;

  static AsgardThemeColorMode colorModeOf(BuildContext context) {
    final platformBrightness = MediaQuery.platformBrightnessOf(context);
    final useDarkTheme = platformBrightness == ui.Brightness.dark;
    if (useDarkTheme) {
      return AsgardThemeColorMode.dark;
    }
    final highContrast = MediaQuery.highContrastOf(context);
    if (highContrast) {
      return AsgardThemeColorMode.highContrast;
    }

    return AsgardThemeColorMode.light;
  }

  static AsgardFormFactor formFactorOf(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    if (mediaQuery.size.width < 400) {
      return AsgardFormFactor.small;
    }

    return AsgardFormFactor.medium;
  }

  @override
  Widget build(BuildContext context) {
    var theme = AsgardThemeData.regular(appLogo: appLogo);

    /// Updating the colors for the current brightness
    final colorMode = this.colorMode ?? colorModeOf(context);
    switch (colorMode) {
      case AsgardThemeColorMode.dark:
        theme = theme.withColors(AsgardColorsData.dark());

        final appLogo = darkAppLogo;
        if (appLogo != null) {
          theme = theme.withImages(theme.images.withAppLogo(appLogo));
        }
        break;
      case AsgardThemeColorMode.highContrast:
        theme = theme.withColors(AsgardColorsData.highContrast());
        theme = theme.withImages(
          AsgardImagesData.highContrast(appLogo: theme.images.appLogo),
        );
        break;
      case AsgardThemeColorMode.light:
        break;
    }

    // Updating the sizes for current form factor.
    var formFactor = this.formFactor ?? formFactorOf(context);
    theme = theme.withFormFactor(formFactor);
    if (formFactor == AsgardFormFactor.small) {
      theme = theme.withTypography(AsgardTypographyData.small());
    }

    return AsgardTheme(
      data: theme,
      child: child,
    );
  }
}
