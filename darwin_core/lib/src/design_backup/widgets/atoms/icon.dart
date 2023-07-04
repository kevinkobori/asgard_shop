import 'package:darwinseguros_app/darwinseguros_app.dart';
import 'package:flutter/widgets.dart';

enum DarwinIconSize {
  small,
  regular,
  big,
}

extension DarwinIconSizeExtension on DarwinIconSizesData {
  double resolve(DarwinIconSize size) {
    switch (size) {
      case DarwinIconSize.small:
        return small;
      case DarwinIconSize.regular:
        return regular;
      case DarwinIconSize.big:
        return big;
    }
  }
}

class DarwinIcon extends StatelessWidget {
  const DarwinIcon(
    this.data, {
    Key? key,
    this.color,
    this.size = DarwinIconSize.regular,
  }) : super(key: key);

  const DarwinIcon.small(
    this.data, {
    Key? key,
    this.color,
  })  : size = DarwinIconSize.small,
        super(key: key);

  const DarwinIcon.regular(
    this.data, {
    Key? key,
    this.color,
  })  : size = DarwinIconSize.regular,
        super(key: key);

  const DarwinIcon.big(
    this.data, {
    Key? key,
    this.color,
  })  : size = DarwinIconSize.big,
        super(key: key);

  final String data;
  final Color? color;
  final DarwinIconSize size;

  @override
  Widget build(BuildContext context) {
    final theme = DarwinTheme.of(context);
    final color = this.color ?? theme.colors.foreground;
    return Text(
      data,
      style: TextStyle(
        fontFamily: theme.icons.fontFamily,
        package: theme.icons.fontPackage,
        color: color,
        fontSize: theme.icons.sizes.resolve(size),
        decoration: TextDecoration.none,
      ),
    );
  }
}

class DarwinAnimatedIcon extends StatelessWidget {
  const DarwinAnimatedIcon(
    this.data, {
    Key? key,
    this.color,
    this.size = DarwinIconSize.small,
    this.duration = const Duration(milliseconds: 200),
  }) : super(key: key);

  final String data;
  final Color? color;
  final DarwinIconSize size;
  final Duration duration;

  bool get isAnimated => duration.inMilliseconds > 0;

  @override
  Widget build(BuildContext context) {
    final theme = DarwinTheme.of(context);
    final color = this.color ?? theme.colors.foreground;
    if (!isAnimated) {
      return DarwinIcon(
        data,
        key: key,
        color: color,
        size: size,
      );
    }
    return AnimatedDefaultTextStyle(
      style: TextStyle(
        fontFamily: theme.icons.fontFamily,
        package: theme.icons.fontPackage,
        color: color,
        fontSize: theme.icons.sizes.resolve(size),
        decoration: TextDecoration.none,
      ),
      duration: duration,
      child: Text(
        data,
      ),
    );
  }
}
