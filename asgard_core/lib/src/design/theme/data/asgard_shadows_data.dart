part of darwin_theme_data;

class AsgardShadowsData extends Equatable {
  const AsgardShadowsData({required this.big});

  factory AsgardShadowsData._standard() => const AsgardShadowsData(
        big: BoxShadow(
          blurRadius: 32,
          color: Color(0x44000000),
        ),
      );

  final BoxShadow big;

  @override
  List<Object?> get props => [
        big.named('big'),
      ];
}
