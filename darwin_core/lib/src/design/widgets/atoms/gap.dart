import 'package:darwin_core/src/design/theme/theme.dart';
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

extension DarwinGapSizeExtension on AppGapSize {
  double getSpacing(DarwinThemeData theme) {
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

class DarwinGap extends StatelessWidget {
  const DarwinGap(
    this.size, {
    Key? key,
  }) : super(key: key);

  const DarwinGap.small({
    Key? key,
  })  : size = AppGapSize.small,
        super(key: key);

  const DarwinGap.semiSmall({
    Key? key,
  })  : size = AppGapSize.semiSmall,
        super(key: key);

  const DarwinGap.regular({
    Key? key,
  })  : size = AppGapSize.regular,
        super(key: key);

  const DarwinGap.semiBig({
    Key? key,
  })  : size = AppGapSize.semiBig,
        super(key: key);

  const DarwinGap.big({
    Key? key,
  })  : size = AppGapSize.big,
        super(key: key);

  final AppGapSize size;

  @override
  Widget build(BuildContext context) {
    final theme = DarwinTheme.of(context);
    return Gap(size.getSpacing(theme));
  }
}
