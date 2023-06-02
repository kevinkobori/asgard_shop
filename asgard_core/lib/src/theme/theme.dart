import 'package:flutter/widgets.dart';

import 'data/data.dart';

export 'data/colors.dart';
export 'data/data.dart';
export 'data/icons.dart';
export 'data/radius.dart';
export 'data/shadows.dart';
export 'data/spacing.dart';

class AppTheme extends InheritedWidget {
  const AppTheme({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  final AppThemeData data;

  static AppThemeData of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<AppTheme>();
    return widget!.data;
  }

  @override
  bool updateShouldNotify(covariant AppTheme oldWidget) {
    return data != oldWidget.data;
  }
}
