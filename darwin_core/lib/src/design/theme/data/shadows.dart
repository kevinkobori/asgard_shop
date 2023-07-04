import 'package:darwin_core/src/design/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

class DarwinShadowsData extends Equatable {
  const DarwinShadowsData({required this.big});

  factory DarwinShadowsData.standard() => const DarwinShadowsData(
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
