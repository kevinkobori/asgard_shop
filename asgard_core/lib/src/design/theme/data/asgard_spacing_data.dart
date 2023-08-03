part of darwin_theme_data;

class AsgardSpacingData extends Equatable {
  const AsgardSpacingData({
    required this.small,
    required this.semiSmall,
    required this.regular,
    required this.semiBig,
    required this.big,
  });

  factory AsgardSpacingData._standard() => const AsgardSpacingData(
        small: 4,
        semiSmall: 8,
        regular: 12,
        semiBig: 22,
        big: 32,
      );

  final double small;
  final double semiSmall;
  final double regular;
  final double semiBig;
  final double big;

  _AsgardEdgeInsetsSpacingData asInsets() => _AsgardEdgeInsetsSpacingData(this);

  @override
  List<Object?> get props => [
        small.named('small'),
        semiSmall.named('semiSmall'),
        regular.named('regular'),
        semiBig.named('semiBig'),
        big.named('big'),
      ];
}

class _AsgardEdgeInsetsSpacingData extends Equatable {
  const _AsgardEdgeInsetsSpacingData(this._spacing);

  EdgeInsets get small => EdgeInsets.all(_spacing.small);
  EdgeInsets get semiSmall => EdgeInsets.all(_spacing.semiSmall);
  EdgeInsets get regular => EdgeInsets.all(_spacing.regular);
  EdgeInsets get semiBig => EdgeInsets.all(_spacing.semiBig);
  EdgeInsets get big => EdgeInsets.all(_spacing.big);

  final AsgardSpacingData _spacing;

  @override
  List<Object?> get props => [_spacing];
}
