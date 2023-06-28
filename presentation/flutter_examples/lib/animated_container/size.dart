import 'package:flutter/material.dart';

class SizeExample extends StatefulWidget {
  const SizeExample({super.key});

  @override
  State<SizeExample> createState() => _SizeExampleState();
}

class _SizeExampleState extends State<SizeExample> {
  double _width = 100.0;
  double _height = 100.0;

  void _changeSize() {
    setState(() {
      _width = 200.0;
      _height = 200.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeSize,
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        width: _width,
        height: _height,
        color: Colors.blue,
      ),
    );
  }
}
