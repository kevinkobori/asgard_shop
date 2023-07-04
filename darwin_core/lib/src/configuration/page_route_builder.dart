import 'dart:ui';

import 'package:darwin_core/_internal.dart';

class TransparentPage<T> extends Page<T> {
  const TransparentPage({
    required this.onTap,
    required this.child,
    LocalKey? key,
    String? name,
    Object? arguments,
    String? restorationId,
  }) : super(
            key: key,
            name: name,
            arguments: arguments,
            restorationId: restorationId);

  final VoidCallback onTap;

  /// The content to be shown in the [Route] created by this page.
  final Widget child;

  @override
  Route<T> createRoute(BuildContext context) {
    final theme = DarwinTheme.of(context);
    const blurScale = 16;
    return PageRouteBuilder(
      transitionDuration: theme.durations.regular,
      opaque: false,
      maintainState: true,
      settings: this,
      barrierColor: theme.colors.foreground.withOpacity(0.5),
      pageBuilder:
          (BuildContext _, Animation<double> _animation, Animation<double> __) {
        return AnimatedBuilder(
          animation: _animation,
          child: child,
          builder: (_, _child) => DarwinTapBuilder(
            onTap: onTap,
            builder: (context, state, hasFocus) {
              return BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: blurScale * _animation.value,
                  sigmaY: blurScale * _animation.value,
                ),
                child: _child,
              );
            },
          ),
        );
      },
    );
  }
}
