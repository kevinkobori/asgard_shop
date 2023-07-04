// part of asgard_app;
import 'dart:math' as math;

import 'package:darwin_core/_internal.dart';

class DarwinScaffold extends StatelessWidget {
  final Widget body;
  final Color? backgroundColor;
  final Widget? floatingBar;

  const DarwinScaffold({
    Key? key,
    required this.body,
    this.backgroundColor,
    this.floatingBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final theme = DarwinTheme.of(context);
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
