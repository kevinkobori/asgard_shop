part of darwin_theme_data;

class AsgardTypographyData extends Equatable {
  const AsgardTypographyData({
    required this.paragraph1,
    required this.paragraph2,
    required this.title1,
    required this.title2,
    required this.title3,
  });

  factory AsgardTypographyData._standard() => const AsgardTypographyData(
        paragraph1: TextStyle(
          fontFamily: 'Poppins',
          package: 'asgard_core',
          fontWeight: FontWeight.w400,
          fontSize: 12,
          decoration: TextDecoration.none,
        ),
        paragraph2: TextStyle(
          fontFamily: 'Poppins',
          package: 'asgard_core',
          fontWeight: FontWeight.w400,
          fontSize: 10,
          decoration: TextDecoration.none,
        ),
        title1: TextStyle(
          fontFamily: 'Poppins',
          package: 'asgard_core',
          fontSize: 28,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        title2: TextStyle(
          fontFamily: 'Poppins',
          package: 'asgard_core',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        title3: TextStyle(
          fontFamily: 'Poppins',
          package: 'asgard_core',
          fontSize: 14,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
      );

  factory AsgardTypographyData.small() => const AsgardTypographyData(
        paragraph1: TextStyle(
          fontFamily: 'Poppins',
          package: 'asgard_core',
          fontWeight: FontWeight.w400,
          fontSize: 10,
          decoration: TextDecoration.none,
        ),
        paragraph2: TextStyle(
          fontFamily: 'Poppins',
          package: 'asgard_core',
          fontWeight: FontWeight.w400,
          fontSize: 9,
          decoration: TextDecoration.none,
        ),
        title1: TextStyle(
          fontFamily: 'Poppins',
          package: 'asgard_core',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        title2: TextStyle(
          fontFamily: 'Poppins',
          package: 'asgard_core',
          fontSize: 14,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
        title3: TextStyle(
          fontFamily: 'Poppins',
          package: 'asgard_core',
          fontSize: 12,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
      );

  final TextStyle paragraph1;
  final TextStyle paragraph2;
  final TextStyle title1;
  final TextStyle title2;
  final TextStyle title3;

  @override
  List<Object?> get props => [
        title1.named('title1'),
        title2.named('title2'),
        title3.named('title3'),
        paragraph1.named('paragraph1'),
        paragraph2.named('paragraph2'),
      ];
}
