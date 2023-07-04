import 'package:darwinseguros_app/darwinseguros_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_svg/flutter_svg.dart';

export 'colors.dart' show DarwinColorsData;
export 'durations.dart' show DarwinDurationsData;
export 'icons.dart'
    show DarwinIconsData, DarwinIconSizesData, DarwinIconCharactersData;
export 'images.dart';
export 'radius.dart' show DarwinRadiusData;
export 'shadows.dart' show DarwinShadowsData;
export 'spacing.dart' show DarwinSpacingData;
export 'typography.dart';

class DarwinThemeData {
  const DarwinThemeData({
    required this.icons,
    required this.colors,
    required this.typography,
    required this.radius,
    required this.spacing,
    required this.shadow,
    required this.durations,
    required this.images,
  });

  factory DarwinThemeData.regular({
    required PictureProvider appLogo,
  }) =>
      DarwinThemeData(
        icons: DarwinIconsData.standard(),
        typography: DarwinTypographyData.standard(),
        colors: DarwinColorsData.light(),
        radius: const DarwinRadiusData.standard(),
        spacing: DarwinSpacingData.standard(),
        shadow: DarwinShadowsData.standard(),
        durations: DarwinDurationsData.standard(),
        images: DarwinImagesData.regular(
          appLogo: appLogo,
        ),
      );

  final DarwinIconsData icons;
  final DarwinColorsData colors;
  final DarwinTypographyData typography;
  final DarwinRadiusData radius;
  final DarwinSpacingData spacing;
  final DarwinShadowsData shadow;
  final DarwinDurationsData durations;
  final DarwinImagesData images;
  TargetPlatform get platform => defaultTargetPlatform;

  DarwinThemeData withColors(DarwinColorsData colors) {
    return DarwinThemeData(
      colors: colors,
      durations: durations,
      icons: icons,
      images: images,
      radius: radius,
      shadow: shadow,
      spacing: spacing,
      typography: typography,
    );
  }

  DarwinThemeData withImages(DarwinImagesData images) {
    return DarwinThemeData(
      colors: colors,
      durations: durations,
      icons: icons,
      images: images,
      radius: radius,
      shadow: shadow,
      spacing: spacing,
      typography: typography,
    );
  }

  DarwinThemeData withTypography(DarwinTypographyData typography) {
    return DarwinThemeData(
      colors: colors,
      durations: durations,
      icons: icons,
      images: images,
      radius: radius,
      shadow: shadow,
      spacing: spacing,
      typography: typography,
    );
  }
}
