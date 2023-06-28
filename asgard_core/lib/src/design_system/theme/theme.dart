import 'package:flutter/widgets.dart';

import 'data/data.dart';

export 'data/data.dart';

class AsgardTheme extends InheritedWidget {
  const AsgardTheme({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  final AsgardThemeData data;

  static AsgardThemeData of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<AsgardTheme>();
    return widget!.data;
  }

  @override
  bool updateShouldNotify(covariant AsgardTheme oldWidget) {
    return data != oldWidget.data;
  }
}
