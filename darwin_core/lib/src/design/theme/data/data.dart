import 'package:darwin_core/_internal.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_svg/flutter_svg.dart';

export 'colors.dart' show DarwinColorsData;
export 'durations.dart' show DarwinDurationsData;
export 'form_factor.dart' show DarwinFormFactor;
export 'icons.dart'
    show DarwinIconsData, DarwinIconSizesData, DarwinIconCharactersData;
export 'images.dart';
export 'radius.dart' show DarwinRadiusData;
export 'shadows.dart' show DarwinShadowsData;
export 'spacing.dart' show DarwinSpacingData;
export 'typography.dart';

class DarwinThemeData extends Equatable {
  const DarwinThemeData({
    required this.icons,
    required this.colors,
    required this.typography,
    required this.radius,
    required this.spacing,
    required this.shadow,
    required this.durations,
    required this.images,
    required this.formFactor,
    TargetPlatform? platform,
  }) : _platform = platform;

  factory DarwinThemeData.regular({
    required PictureProvider appLogo,
  }) =>
      DarwinThemeData(
        formFactor: DarwinFormFactor.medium,
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
  final DarwinFormFactor formFactor;
  final TargetPlatform? _platform;
  TargetPlatform get platform => defaultTargetPlatform;

  @override
  List<Object?> get props => [
        platform,
        icons,
        colors,
        typography,
        radius,
        spacing,
        shadow,
        durations,
        images,
      ];

  DarwinThemeData withColors(DarwinColorsData colors) {
    return DarwinThemeData(
      platform: platform,
      formFactor: formFactor,
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
      platform: platform,
      formFactor: formFactor,
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

  DarwinThemeData withFormFactor(DarwinFormFactor formFactor) {
    return DarwinThemeData(
      platform: platform,
      formFactor: formFactor,
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
      platform: platform,
      formFactor: formFactor,
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
