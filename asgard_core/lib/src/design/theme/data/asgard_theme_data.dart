library darwin_theme_data;

import 'package:asgard_core/_internal.dart';
import 'package:asgard_core/src/design/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'asgard_colors_data.dart';
part 'asgard_durations_data.dart';
part 'asgard_form_factor.dart';
part 'asgard_icons_data.dart';
part 'asgard_images_data.dart';
part 'asgard_radius_data.dart';
part 'asgard_shadows_data.dart';
part 'asgard_spacing_data.dart';
part 'asgard_typography_data.dart';

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

  factory AsgardThemeData.standard({
    required PictureProvider appLogo,
  }) =>
      AsgardThemeData(
        formFactor: AsgardFormFactor.medium,
        icons: AsgardIconsData._standard(),
        typography: AsgardTypographyData._standard(),
        colors: AsgardColorsData._light(),
        radius: const AsgardRadiusData._standard(),
        spacing: AsgardSpacingData._standard(),
        shadow: AsgardShadowsData._standard(),
        durations: AsgardDurationsData._standard(),
        images: AsgardImagesData._standard(
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
