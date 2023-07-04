import 'package:asgard_core/src/design/theme/asgard_theme.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

enum AsgardGapSize {
  none,
  small,
  semiSmall,
  regular,
  semiBig,
  big,
}

extension AsgardGapSizeExtension on AsgardGapSize {
  double getSpacing(AsgardThemeData theme) {
    switch (this) {
      case AsgardGapSize.none:
        return 0;
      case AsgardGapSize.small:
        return theme.spacing.small;
      case AsgardGapSize.semiSmall:
        return theme.spacing.semiSmall;
      case AsgardGapSize.regular:
        return theme.spacing.regular;
      case AsgardGapSize.semiBig:
        return theme.spacing.semiBig;
      case AsgardGapSize.big:
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
  })  : size = AsgardGapSize.small,
        super(key: key);

  const AsgardGap.semiSmall({
    Key? key,
  })  : size = AsgardGapSize.semiSmall,
        super(key: key);

  const AsgardGap.regular({
    Key? key,
  })  : size = AsgardGapSize.regular,
        super(key: key);

  const AsgardGap.semiBig({
    Key? key,
  })  : size = AsgardGapSize.semiBig,
        super(key: key);

  const AsgardGap.big({
    Key? key,
  })  : size = AsgardGapSize.big,
        super(key: key);

  final AsgardGapSize size;

  @override
  Widget build(BuildContext context) {
    final theme = AsgardTheme.of(context);
    return Gap(size.getSpacing(theme));
  }
}
