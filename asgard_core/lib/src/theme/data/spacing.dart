import 'package:asgard_core/src/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

class AsgardSpacingData extends Equatable {
  const AsgardSpacingData({
    required this.small,
    required this.semiSmall,
    required this.regular,
    required this.semiBig,
    required this.big,
  });

  factory AsgardSpacingData.regular() => const AsgardSpacingData(
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

  AsgardEdgeInsetsSpacingData asInsets() => AsgardEdgeInsetsSpacingData(this);

  @override
  List<Object?> get props => [
        small.named('small'),
        semiSmall.named('semiSmall'),
        regular.named('regular'),
        semiBig.named('semiBig'),
        big.named('big'),
      ];
}

class AsgardEdgeInsetsSpacingData extends Equatable {
  const AsgardEdgeInsetsSpacingData(this._spacing);

  EdgeInsets get small => EdgeInsets.all(_spacing.small);
  EdgeInsets get semiSmall => EdgeInsets.all(_spacing.semiSmall);
  EdgeInsets get regular => EdgeInsets.all(_spacing.regular);
  EdgeInsets get semiBig => EdgeInsets.all(_spacing.semiBig);
  EdgeInsets get big => EdgeInsets.all(_spacing.big);

  final AsgardSpacingData _spacing;

  @override
  List<Object?> get props => [_spacing];
}
