import 'package:flutter/rendering.dart';

class DarwinShadowsData {
  const DarwinShadowsData({required this.big});

  factory DarwinShadowsData.standard() => const DarwinShadowsData(
        big: BoxShadow(
          blurRadius: 32,
          color: Color(0x44000000),
        ),
      );

  final BoxShadow big;
}
