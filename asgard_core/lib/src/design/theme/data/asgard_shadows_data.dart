import 'package:asgard_core/src/design/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

class AsgardShadowsData extends Equatable {
  const AsgardShadowsData({required this.big});

  factory AsgardShadowsData.standard() => const AsgardShadowsData(
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
