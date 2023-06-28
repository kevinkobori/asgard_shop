// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

void main() =>
    /* [0 - flutter] */
    runApp(
      /* [0 - Design] */
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        /* [1 - header title] */
        title: 'Button Example',
        home: Scaffold(
          body: Center(
            child: Body(),
          ),
        ),
      ),
    );

mixin Style {
  // final className = {
  //   'text': {
  //     'font-family': 'Arial',
  //     'font-size': 64.0,
  //     'color': 'ff0000',
  //   },
  //   'column': {
  //     'flex-direction': ,
  //     'align-items':,
  //   },
  //   'text': {
  //     'color': ,
  //   },
  //   'text': {
  //     'color': ,
  //   },
  //   'text': {
  //     'color': ,
  //   },
  //   'text': {
  //     'color': ,
  //   },
  //   'text': {
  //     'color': ,
  //   },
  // };
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends Script with Style {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: fontSize);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      /* [X - Children:] */
      children: [
        Text(
          style: textStyle,
          'N = $counterValue',
        ),
        OutlinedButton(
          /// onPressed == 'click'
          onPressed: incrementCounter,
          child: Text(
            style: textStyle,
            'N++',
          ),
        ),
      ],
    );
  }
}

abstract class Script extends State<Body> {
  int counterValue = 0;
  double fontSize = 64;

  void incrementCounter() {
    counterValue++;
    setState(() {});
  }
}
