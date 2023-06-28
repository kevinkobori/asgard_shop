import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const AnimatedContainerExampleApp());

class AnimatedContainerExampleApp extends StatefulWidget {
  const AnimatedContainerExampleApp({super.key});

  @override
  State<AnimatedContainerExampleApp> createState() =>
      _AnimatedContainerExampleAppState();
}

class _AnimatedContainerExampleAppState
    extends State<AnimatedContainerExampleApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: _randomColor(opacity: false),
        body: AnimatedContainerExample(
          onTap: () => setState(() {}),
        ),
      ),
    );
  }
}

class AnimatedContainerExample extends StatelessWidget {
  final void Function() onTap;

  const AnimatedContainerExample({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: AnimatedContainer(
          duration: _randomDuration(2),
          width: _randomWidth(),
          height: _randomHeight(),
          decoration: BoxDecoration(
            borderRadius: _randomBorderRadius(),
            border: Border.all(
              color: _randomColor(),
              width: _randomBorderWidth(),
            ),
            boxShadow: _randomShadow(),
          ),
          padding: EdgeInsets.all(_random.nextInt(4).toDouble() * 10),
          child: AnimatedContainer(
            duration: _randomDuration(2),
            width: _randomWidth(),
            height: _randomHeight(),
            decoration: BoxDecoration(
              color: _randomColor(),
              borderRadius: _randomBorderRadius(),
              border: Border.all(
                color: _randomColor(),
                width: _randomBorderWidth(),
              ),
              boxShadow: _randomShadow(),
            ),
            alignment: _randomAlignment(),
            curve: Curves.fastOutSlowIn,
            child: FlutterLogo(size: (_randomHeight() + _randomWidth()) / 8),
          ),
        ),
      ),
    );
  }
}

final _random = Random();

List<BoxShadow> _randomShadow() {
  return [
    BoxShadow(
      color: _randomColor(),
      spreadRadius: _randomTo10(),
      blurRadius: _randomTo10(),
      offset: Offset(_randomFromNegativeToPositive(),
          _randomFromNegativeToPositive()), // changes position of shadow
    ),
  ];
}

Alignment _randomAlignment() {
  double x = _randomAxis();
  double y = _randomAxis();
  return Alignment(x, y);
}

double _randomFromNegativeToPositive() {
  final x = _random.nextInt(10).toDouble();
  return x - 5;
}

double _randomTo10() {
  return _random.nextInt(10).toDouble();
}

double _randomAxis() {
  return _random.nextInt(3) - 1;
}

double _randomBorderWidth() {
  return _random.nextInt(50).toDouble();
}

double _randomWidth() {
  return _random.nextInt(800).toDouble() + 200;
}

double _randomHeight() {
  return _random.nextInt(800).toDouble() + 200;
}

Color _randomColor({bool opacity = true}) {
  return Color.fromRGBO(
    _random.nextInt(256),
    _random.nextInt(256),
    _random.nextInt(256),
    1.0, //opacity ? _random.nextDouble() + 0.5 : 1.0,
  );
}

BorderRadius _randomBorderRadius() {
  return BorderRadius.circular(_random.nextInt(50).toDouble());
}

Duration _randomDuration(int max) {
  return Duration(seconds: _random.nextInt(max) + 1);
}
