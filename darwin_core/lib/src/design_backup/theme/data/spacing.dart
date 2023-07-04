import 'package:flutter/widgets.dart';

class DarwinSpacingData {
  const DarwinSpacingData({
    required this.small,
    required this.semiSmall,
    required this.regular,
    required this.semiBig,
    required this.big,
  });

  factory DarwinSpacingData.standard() => const DarwinSpacingData(
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

  _DarwinEdgeInsetsSpacingData asInsets() => _DarwinEdgeInsetsSpacingData(this);
}

class _DarwinEdgeInsetsSpacingData {
  const _DarwinEdgeInsetsSpacingData(this._spacing);

  EdgeInsets get small => EdgeInsets.all(_spacing.small);
  EdgeInsets get semiSmall => EdgeInsets.all(_spacing.semiSmall);
  EdgeInsets get regular => EdgeInsets.all(_spacing.regular);
  EdgeInsets get semiBig => EdgeInsets.all(_spacing.semiBig);
  EdgeInsets get big => EdgeInsets.all(_spacing.big);

  final DarwinSpacingData _spacing;
}
