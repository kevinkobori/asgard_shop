import 'package:darwinseguros_app/darwinseguros_app.dart';
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
  }) : super(key: key);

  final DarwinThemeColorMode? colorMode;
  final Widget child;
  final PictureProvider appLogo;
  final PictureProvider? darkAppLogo;

  static DarwinThemeColorMode colorModeOf(BuildContext context) {
    return DarwinThemeColorMode.light;
  }

  @override
  Widget build(BuildContext context) {
    var theme = AppThemeData.regular(appLogo: appLogo);

    return DarwinTheme(
      data: theme,
      child: child,
    );
  }
}
