import 'package:asgard_core/src/design_system/theme/theme.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

enum AppGapSize {
  none,
  small,
  semiSmall,
  regular,
  semiBig,
  big,
}

extension AsgardGapSizeExtension on AppGapSize {
  double getSpacing(AsgardThemeData theme) {
    switch (this) {
      case AppGapSize.none:
        return 0;
      case AppGapSize.small:
        return theme.spacing.small;
      case AppGapSize.semiSmall:
        return theme.spacing.semiSmall;
      case AppGapSize.regular:
        return theme.spacing.regular;
      case AppGapSize.semiBig:
        return theme.spacing.semiBig;
      case AppGapSize.big:
        return theme.spacing.big;
    }
  }
}

class AsgardGap extends StatelessWidget {
  const AsgardGap(
    this.size, {
    Key? key,
  }) : super(key: key);

  const AsgardGap.small({
    Key? key,
  })  : size = AppGapSize.small,
        super(key: key);

  const AsgardGap.semiSmall({
    Key? key,
  })  : size = AppGapSize.semiSmall,
        super(key: key);

  const AsgardGap.regular({
    Key? key,
  })  : size = AppGapSize.regular,
        super(key: key);

  const AsgardGap.semiBig({
    Key? key,
  })  : size = AppGapSize.semiBig,
        super(key: key);

  const AsgardGap.big({
    Key? key,
  })  : size = AppGapSize.big,
        super(key: key);

  final AppGapSize size;

  @override
  Widget build(BuildContext context) {
    final theme = AsgardTheme.of(context);
    return Gap(size.getSpacing(theme));
  }
}
