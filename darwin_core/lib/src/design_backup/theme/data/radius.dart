import 'package:flutter/rendering.dart';

class DarwinRadiusData {
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
}

class _DarwinBorderRadiusData {
  const _DarwinBorderRadiusData(this._radius);

  BorderRadius get small => BorderRadius.all(_radius.small);
  BorderRadius get regular => BorderRadius.all(_radius.regular);
  BorderRadius get big => BorderRadius.all(_radius.big);

  final DarwinRadiusData _radius;
}
