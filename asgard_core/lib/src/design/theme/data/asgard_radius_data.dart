part of darwin_theme_data;

class AsgardRadiusData extends Equatable {
  const AsgardRadiusData({
    required this.small,
    required this.regular,
    required this.big,
  });

  const AsgardRadiusData._standard()
      : small = const Radius.circular(10),
        regular = const Radius.circular(12),
        big = const Radius.circular(16);

  final Radius small;
  final Radius regular;
  final Radius big;

  _AsgardBorderRadiusData asBorderRadius() => _AsgardBorderRadiusData(this);

  @override
  List<Object?> get props => [
        small.named('small'),
        regular.named('regular'),
        big.named('big'),
      ];
}

class _AsgardBorderRadiusData extends Equatable {
  const _AsgardBorderRadiusData(this._radius);

  BorderRadius get small => BorderRadius.all(_radius.small);
  BorderRadius get regular => BorderRadius.all(_radius.regular);
  BorderRadius get big => BorderRadius.all(_radius.big);

  final AsgardRadiusData _radius;

  @override
  List<Object?> get props => [_radius];
}
