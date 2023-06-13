import 'package:asgard_core/_internal.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_svg/flutter_svg.dart';

export 'colors.dart' show AsgardColorsData;
export 'durations.dart' show AsgardDurationsData;
export 'form_factor.dart' show AsgardFormFactor;
export 'icons.dart'
    show AsgardIconsData, AsgardIconSizesData, AsgardIconCharactersData;
export 'images.dart';
export 'radius.dart' show AsgardRadiusData;
export 'shadows.dart' show AsgardShadowsData;
export 'spacing.dart' show AsgardSpacingData;
export 'typography.dart';

class AsgardThemeData extends Equatable {
  const AsgardThemeData({
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

  factory AsgardThemeData.regular({
    required PictureProvider appLogo,
  }) =>
      AsgardThemeData(
        formFactor: AsgardFormFactor.medium,
        icons: AsgardIconsData.standard(),
        typography: AsgardTypographyData.standard(),
        colors: AsgardColorsData.light(),
        radius: const AsgardRadiusData.standard(),
        spacing: AsgardSpacingData.standard(),
        shadow: AsgardShadowsData.standard(),
        durations: AsgardDurationsData.standard(),
        images: AsgardImagesData.regular(
          appLogo: appLogo,
        ),
      );

  final AsgardIconsData icons;
  final AsgardColorsData colors;
  final AsgardTypographyData typography;
  final AsgardRadiusData radius;
  final AsgardSpacingData spacing;
  final AsgardShadowsData shadow;
  final AsgardDurationsData durations;
  final AsgardImagesData images;
  final AsgardFormFactor formFactor;
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

  AsgardThemeData withColors(AsgardColorsData colors) {
    return AsgardThemeData(
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

  AsgardThemeData withImages(AsgardImagesData images) {
    return AsgardThemeData(
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

  AsgardThemeData withFormFactor(AsgardFormFactor formFactor) {
    return AsgardThemeData(
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

  AsgardThemeData withTypography(AsgardTypographyData typography) {
    return AsgardThemeData(
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
