import 'package:darwin_core/src/design/theme/theme.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

import 'gap.dart';

class DarwinEdgeInsets extends Equatable {
  const DarwinEdgeInsets.all(AppGapSize value)
      : left = value,
        top = value,
        right = value,
        bottom = value;

  const DarwinEdgeInsets.symmetric({
    AppGapSize vertical = AppGapSize.none,
    AppGapSize horizontal = AppGapSize.none,
  })  : left = horizontal,
        top = vertical,
        right = horizontal,
        bottom = vertical;

  const DarwinEdgeInsets.only({
    this.left = AppGapSize.none,
    this.top = AppGapSize.none,
    this.right = AppGapSize.none,
    this.bottom = AppGapSize.none,
  });

  const DarwinEdgeInsets.small()
      : left = AppGapSize.small,
        top = AppGapSize.small,
        right = AppGapSize.small,
        bottom = AppGapSize.small;

  const DarwinEdgeInsets.semiSmall()
      : left = AppGapSize.semiSmall,
        top = AppGapSize.semiSmall,
        right = AppGapSize.semiSmall,
        bottom = AppGapSize.semiSmall;

  const DarwinEdgeInsets.regular()
      : left = AppGapSize.regular,
        top = AppGapSize.regular,
        right = AppGapSize.regular,
        bottom = AppGapSize.regular;

  const DarwinEdgeInsets.semiBig()
      : left = AppGapSize.semiBig,
        top = AppGapSize.semiBig,
        right = AppGapSize.semiBig,
        bottom = AppGapSize.semiBig;

  const DarwinEdgeInsets.big()
      : left = AppGapSize.big,
        top = AppGapSize.big,
        right = AppGapSize.big,
        bottom = AppGapSize.big;

  final AppGapSize left;
  final AppGapSize top;
  final AppGapSize right;
  final AppGapSize bottom;

  @override
  List<Object?> get props => [
        left,
        top,
        right,
        bottom,
      ];

  EdgeInsets toEdgeInsets(DarwinThemeData theme) {
    return EdgeInsets.only(
      left: left.getSpacing(theme),
      top: top.getSpacing(theme),
      right: right.getSpacing(theme),
      bottom: bottom.getSpacing(theme),
    );
  }
}

class DarwinPadding extends StatelessWidget {
  const DarwinPadding({
    Key? key,
    this.padding = const DarwinEdgeInsets.all(AppGapSize.none),
    this.child,
  }) : super(key: key);

  const DarwinPadding.small({
    Key? key,
    this.child,
  })  : padding = const DarwinEdgeInsets.all(AppGapSize.none),
        super(key: key);

  const DarwinPadding.semiSmall({
    Key? key,
    this.child,
  })  : padding = const DarwinEdgeInsets.all(AppGapSize.semiSmall),
        super(key: key);

  const DarwinPadding.regular({
    Key? key,
    this.child,
  })  : padding = const DarwinEdgeInsets.all(AppGapSize.regular),
        super(key: key);

  const DarwinPadding.semiBig({
    Key? key,
    this.child,
  })  : padding = const DarwinEdgeInsets.all(AppGapSize.semiBig),
        super(key: key);

  const DarwinPadding.big({
    Key? key,
    this.child,
  })  : padding = const DarwinEdgeInsets.all(AppGapSize.big),
        super(key: key);

  final DarwinEdgeInsets padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final theme = DarwinTheme.of(context);
    return Padding(
      padding: padding.toEdgeInsets(theme),
      child: child,
    );
  }
}
