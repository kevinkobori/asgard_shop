import 'package:flutter/material.dart';
import 'package:flutter_examples/animated_container/color.dart';
import 'package:flutter_examples/animated_container/radius.dart';
import 'package:flutter_examples/animated_container/size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Container Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Container'),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadiusExample(),
            ColorExample(),
            SizeExample(),
          ],
        ),
      ),
    );
  }
}
