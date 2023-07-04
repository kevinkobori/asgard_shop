import 'package:darwin_core/src/design/theme/theme.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum DarwinThemeColorMode {
  light,
}

class DarwinResponsiveTheme extends StatelessWidget {
  const DarwinResponsiveTheme({
    Key? key,
    required this.appLogo,
    required this.child,
    this.darkAppLogo,
    this.colorMode,
    this.formFactor,
  }) : super(key: key);

  final DarwinThemeColorMode? colorMode;
  final DarwinFormFactor? formFactor;
  final Widget child;
  final PictureProvider appLogo;
  final PictureProvider? darkAppLogo;

  static DarwinThemeColorMode colorModeOf(BuildContext context) {
    return DarwinThemeColorMode.light;
  }

  static DarwinFormFactor formFactorOf(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    if (mediaQuery.size.width < 400) {
      return DarwinFormFactor.small;
    }

    return DarwinFormFactor.medium;
  }

  @override
  Widget build(BuildContext context) {
    var theme = DarwinThemeData.regular(appLogo: appLogo);

    /// Updating the sizes for current form factor.
    var formFactor = this.formFactor ?? formFactorOf(context);
    theme = theme.withFormFactor(formFactor);
    if (formFactor == DarwinFormFactor.small) {
      theme = theme.withTypography(DarwinTypographyData.small());
    }

    return DarwinTheme(
      data: theme,
      child: child,
    );
  }
}
