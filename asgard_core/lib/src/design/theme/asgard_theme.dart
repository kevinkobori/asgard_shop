import 'package:flutter/widgets.dart';

import 'data/asgard_theme_data.dart';

export 'data/asgard_theme_data.dart'
    show
        AsgardThemeData,
        AsgardColorsData,
        AsgardIconsData,
        AsgardIconSizesData,
        AsgardIconCharactersData,
        AsgardTypographyData,
        AsgardRadiusData,
        AsgardSpacingData,
        AsgardShadowsData,
        AsgardDurationsData,
        AsgardImagesData,
        AsgardFormFactor;

class AsgardTheme extends InheritedWidget {
  const AsgardTheme({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  final AsgardThemeData data;

  static AsgardThemeData of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<AsgardTheme>();
    return widget!.data;
  }

  @override
  bool updateShouldNotify(covariant AsgardTheme oldWidget) {
    return data != oldWidget.data;
  }
}
