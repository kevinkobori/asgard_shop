part of darwin_theme_data;

class AsgardDurationsData extends Equatable {
  const AsgardDurationsData({
    required this.areAnimationEnabled,
    required this.regular,
    required this.quick,
  });

  factory AsgardDurationsData._standard() => const AsgardDurationsData(
        areAnimationEnabled: true,
        regular: Duration(milliseconds: 250),
        quick: Duration(milliseconds: 100),
      );

  final bool areAnimationEnabled;
  final Duration regular;
  final Duration quick;

  @override
  List<Object?> get props => [
        areAnimationEnabled,
        regular.named('regular'),
        quick.named('quick'),
      ];
}
