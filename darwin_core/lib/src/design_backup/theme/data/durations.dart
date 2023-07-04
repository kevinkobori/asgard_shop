class DarwinDurationsData {
  const DarwinDurationsData({
    required this.areAnimationEnabled,
    required this.regular,
    required this.quick,
  });

  factory DarwinDurationsData.standard() => const DarwinDurationsData(
        areAnimationEnabled: true,
        regular: Duration(milliseconds: 250),
        quick: Duration(milliseconds: 100),
      );

  final bool areAnimationEnabled;
  final Duration regular;
  final Duration quick;
}
