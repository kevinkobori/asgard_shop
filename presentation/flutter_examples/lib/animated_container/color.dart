import 'package:flutter/material.dart';

class ColorExample extends StatefulWidget {
  const ColorExample({super.key});

  @override
  State<ColorExample> createState() => _ColorExampleState();
}

class _ColorExampleState extends State<ColorExample> {
  Color _color = Colors.blue;

  void _changeColor() {
    setState(() {
      _color = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        width: 100.0,
        height: 100.0,
        color: _color,
      ),
    );
  }
}
