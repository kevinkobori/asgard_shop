import 'package:asgard_core/src/design/theme/asgard_theme.dart';
import 'package:flutter/widgets.dart';

enum AsgardIconSize {
  small,
  regular,
  big,
}

extension AsgardIconSizeExtension on AsgardIconSize {
  double resolve(AsgardThemeData theme) {
    final sizes = theme.icons.sizes;
    switch (this) {
      case AsgardIconSize.small:
        return sizes.small;
      case AsgardIconSize.regular:
        return sizes.regular;
      case AsgardIconSize.big:
        return sizes.big;
    }
  }
}

class AsgardIcon extends StatelessWidget {
  const AsgardIcon(
    this.data, {
    Key? key,
    this.color,
    this.size = AsgardIconSize.regular,
  }) : super(key: key);

  const AsgardIcon.small(
    this.data, {
    Key? key,
    this.color,
  })  : size = AsgardIconSize.small,
        super(key: key);

  const AsgardIcon.regular(
    this.data, {
    Key? key,
    this.color,
  })  : size = AsgardIconSize.regular,
        super(key: key);

  const AsgardIcon.big(
    this.data, {
    Key? key,
    this.color,
  })  : size = AsgardIconSize.big,
        super(key: key);

  final String data;
  final Color? color;
  final AsgardIconSize size;

  @override
  Widget build(BuildContext context) {
    final theme = AsgardTheme.of(context);
    final color = this.color ?? theme.colors.foreground;
    return Text(
      data,
      style: TextStyle(
        fontFamily: theme.icons.fontFamily,
        package: theme.icons.fontPackage,
        color: color,
        fontSize: size.resolve(theme),
        decoration: TextDecoration.none,
      ),
    );
  }
}

class AsgardAnimatedIcon extends StatelessWidget {
  const AsgardAnimatedIcon(
    this.data, {
    Key? key,
    this.color,
    this.size = AsgardIconSize.small,
    this.duration = const Duration(milliseconds: 200),
  }) : super(key: key);

  final String data;
  final Color? color;
  final AsgardIconSize size;
  final Duration duration;

  bool get isAnimated => duration.inMilliseconds > 0;

  @override
  Widget build(BuildContext context) {
    final theme = AsgardTheme.of(context);
    final color = this.color ?? theme.colors.foreground;
    if (!isAnimated) {
      return AsgardIcon(
        data,
        key: key,
        color: color,
        size: size,
      );
    }
    return AnimatedDefaultTextStyle(
      child: Text(
        data,
      ),
      style: TextStyle(
        fontFamily: theme.icons.fontFamily,
        package: theme.icons.fontPackage,
        color: color,
        fontSize: size.resolve(theme),
        decoration: TextDecoration.none,
      ),
      duration: duration,
    );
  }
}
