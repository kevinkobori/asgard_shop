part of darwin_theme_data;

class AsgardImagesData extends Equatable {
  const AsgardImagesData({
    required this.appLogo,
    required this.backgroundPattern,
  });

  factory AsgardImagesData._standard({required PictureProvider appLogo}) =>
      AsgardImagesData(
        appLogo: appLogo,
        backgroundPattern: const AssetImage(
          'assets/images/background_pattern.png',
          package: 'asgard_core',
        ),
      );

  factory AsgardImagesData.highContrast({required PictureProvider appLogo}) =>
      AsgardImagesData(
        appLogo: appLogo,
        backgroundPattern: MemoryImage(kTransparentImage),
      );

  final PictureProvider appLogo;
  final ImageProvider backgroundPattern;

  @override
  List<Object?> get props => [
        backgroundPattern.named('appLogo'),
        backgroundPattern.named('backgroundPattern'),
      ];

  AsgardImagesData withAppLogo(PictureProvider appLogo) {
    return AsgardImagesData(
      appLogo: appLogo,
      backgroundPattern: backgroundPattern,
    );
  }

  AsgardImagesData withBackgroundPattern(ImageProvider backgroundPattern) {
    return AsgardImagesData(
      appLogo: appLogo,
      backgroundPattern: backgroundPattern,
    );
  }
}

final kTransparentImage = Uint8List.fromList(<int>[
  0x89,
  0x50,
  0x4E,
  0x47,
  0x0D,
  0x0A,
  0x1A,
  0x0A,
  0x00,
  0x00,
  0x00,
  0x0D,
  0x49,
  0x48,
  0x44,
  0x52,
  0x00,
  0x00,
  0x00,
  0x01,
  0x00,
  0x00,
  0x00,
  0x01,
  0x08,
  0x06,
  0x00,
  0x00,
  0x00,
  0x1F,
  0x15,
  0xC4,
  0x89,
  0x00,
  0x00,
  0x00,
  0x0A,
  0x49,
  0x44,
  0x41,
  0x54,
  0x78,
  0x9C,
  0x63,
  0x00,
  0x01,
  0x00,
  0x00,
  0x05,
  0x00,
  0x01,
  0x0D,
  0x0A,
  0x2D,
  0xB4,
  0x00,
  0x00,
  0x00,
  0x00,
  0x49,
  0x45,
  0x4E,
  0x44,
  0xAE,
]);
