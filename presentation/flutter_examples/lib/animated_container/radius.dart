import 'dart:math';

import 'package:flutter/material.dart';

class RadiusExample extends StatefulWidget {
  const RadiusExample({super.key});

  @override
  State<RadiusExample> createState() => _RadiusExampleState();
}

class _RadiusExampleState extends State<RadiusExample> {
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);
  final random = Random();

  void _changeBorderRadius() {
    setState(() {
      _borderRadius = BorderRadius.circular(random.nextInt(50).toDouble() * 2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeBorderRadius,
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        width: 100.0,
        height: 100.0,
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: _borderRadius,
        ),
      ),
    );
  }
}
