import 'package:asgard_core/src/theme/theme.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

import 'gap.dart';

class AsgardEdgeInsets extends Equatable {
  const AsgardEdgeInsets.all(AppGapSize value)
      : left = value,
        top = value,
        right = value,
        bottom = value;

  const AsgardEdgeInsets.symmetric({
    AppGapSize vertical = AppGapSize.none,
    AppGapSize horizontal = AppGapSize.none,
  })  : left = horizontal,
        top = vertical,
        right = horizontal,
        bottom = vertical;

  const AsgardEdgeInsets.only({
    this.left = AppGapSize.none,
    this.top = AppGapSize.none,
    this.right = AppGapSize.none,
    this.bottom = AppGapSize.none,
  });

  const AsgardEdgeInsets.small()
      : left = AppGapSize.small,
        top = AppGapSize.small,
        right = AppGapSize.small,
        bottom = AppGapSize.small;

  const AsgardEdgeInsets.semiSmall()
      : left = AppGapSize.semiSmall,
        top = AppGapSize.semiSmall,
        right = AppGapSize.semiSmall,
        bottom = AppGapSize.semiSmall;

  const AsgardEdgeInsets.standard()
      : left = AppGapSize.regular,
        top = AppGapSize.regular,
        right = AppGapSize.regular,
        bottom = AppGapSize.regular;

  const AsgardEdgeInsets.semiBig()
      : left = AppGapSize.semiBig,
        top = AppGapSize.semiBig,
        right = AppGapSize.semiBig,
        bottom = AppGapSize.semiBig;

  const AsgardEdgeInsets.big()
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

  EdgeInsets toEdgeInsets(AsgardThemeData theme) {
    return EdgeInsets.only(
      left: left.getSpacing(theme),
      top: top.getSpacing(theme),
      right: right.getSpacing(theme),
      bottom: bottom.getSpacing(theme),
    );
  }
}

class AsgardPadding extends StatelessWidget {
  const AsgardPadding({
    Key? key,
    this.padding = const AsgardEdgeInsets.all(AppGapSize.none),
    this.child,
  }) : super(key: key);

  const AsgardPadding.small({
    Key? key,
    this.child,
  })  : padding = const AsgardEdgeInsets.all(AppGapSize.none),
        super(key: key);

  const AsgardPadding.semiSmall({
    Key? key,
    this.child,
  })  : padding = const AsgardEdgeInsets.all(AppGapSize.semiSmall),
        super(key: key);

  const AsgardPadding.regular({
    Key? key,
    this.child,
  })  : padding = const AsgardEdgeInsets.all(AppGapSize.regular),
        super(key: key);

  const AsgardPadding.semiBig({
    Key? key,
    this.child,
  })  : padding = const AsgardEdgeInsets.all(AppGapSize.semiBig),
        super(key: key);

  const AsgardPadding.big({
    Key? key,
    this.child,
  })  : padding = const AsgardEdgeInsets.all(AppGapSize.big),
        super(key: key);

  final AsgardEdgeInsets padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final theme = AsgardTheme.of(context);
    return Padding(
      padding: padding.toEdgeInsets(theme),
      child: child,
    );
  }
}
