import 'package:darwin_core/src/design/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

class DarwinRadiusData extends Equatable {
  const DarwinRadiusData({
    required this.small,
    required this.regular,
    required this.big,
  });

  const DarwinRadiusData.standard()
      : small = const Radius.circular(10),
        regular = const Radius.circular(12),
        big = const Radius.circular(16);

  final Radius small;
  final Radius regular;
  final Radius big;

  _DarwinBorderRadiusData asBorderRadius() => _DarwinBorderRadiusData(this);

  @override
  List<Object?> get props => [
        small.named('small'),
        regular.named('regular'),
        big.named('big'),
      ];
}

class _DarwinBorderRadiusData extends Equatable {
  const _DarwinBorderRadiusData(this._radius);

  BorderRadius get small => BorderRadius.all(_radius.small);
  BorderRadius get regular => BorderRadius.all(_radius.regular);
  BorderRadius get big => BorderRadius.all(_radius.big);

  final DarwinRadiusData _radius;

  @override
  List<Object?> get props => [_radius];
}
