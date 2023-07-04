import 'package:flutter/widgets.dart';

import 'data/data.dart';

export 'data/data.dart';

class DarwinTheme extends InheritedWidget {
  const DarwinTheme({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  final DarwinThemeData data;

  static DarwinThemeData of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<DarwinTheme>();
    return widget!.data;
  }

  @override
  bool updateShouldNotify(covariant DarwinTheme oldWidget) {
    return data != oldWidget.data;
  }
}
