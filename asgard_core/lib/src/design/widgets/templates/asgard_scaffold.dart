// part of asgard_app;
import 'dart:math' as math;

import 'package:asgard_core/_internal.dart';

class AsgardScaffold extends StatelessWidget {
  final Widget body;
  final Color? backgroundColor;
  final Widget? floatingBar;

  const AsgardScaffold({
    Key? key,
    required this.body,
    this.backgroundColor,
    this.floatingBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final theme = AsgardTheme.of(context);
    final floatingBar = this.floatingBar;
    return Container(
      color: backgroundColor ?? theme.colors.background,
      child: Stack(
        children: [
          body,
          if (floatingBar != null)
            AnimatedPositioned(
              duration: theme.durations.regular,
              left: math.max(
                mediaQuery.padding.left,
                theme.spacing.regular,
              ),
              right: math.max(
                mediaQuery.padding.right,
                theme.spacing.regular,
              ),
              bottom: math.max(
                mediaQuery.padding.bottom,
                theme.spacing.regular,
              ),
              child: floatingBar,
            ),
        ],
      ),
    );
  }
}
