import 'package:asgard_core/src/design/theme/asgard_theme.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

import 'asgard_gap.dart';

class AsgardEdgeInsets extends Equatable {
  const AsgardEdgeInsets.all(AsgardGapSize value)
      : left = value,
        top = value,
        right = value,
        bottom = value;

  const AsgardEdgeInsets.symmetric({
    AsgardGapSize vertical = AsgardGapSize.none,
    AsgardGapSize horizontal = AsgardGapSize.none,
  })  : left = horizontal,
        top = vertical,
        right = horizontal,
        bottom = vertical;

  const AsgardEdgeInsets.only({
    this.left = AsgardGapSize.none,
    this.top = AsgardGapSize.none,
    this.right = AsgardGapSize.none,
    this.bottom = AsgardGapSize.none,
  });

  const AsgardEdgeInsets.small()
      : left = AsgardGapSize.small,
        top = AsgardGapSize.small,
        right = AsgardGapSize.small,
        bottom = AsgardGapSize.small;

  const AsgardEdgeInsets.semiSmall()
      : left = AsgardGapSize.semiSmall,
        top = AsgardGapSize.semiSmall,
        right = AsgardGapSize.semiSmall,
        bottom = AsgardGapSize.semiSmall;

  const AsgardEdgeInsets.regular()
      : left = AsgardGapSize.regular,
        top = AsgardGapSize.regular,
        right = AsgardGapSize.regular,
        bottom = AsgardGapSize.regular;

  const AsgardEdgeInsets.semiBig()
      : left = AsgardGapSize.semiBig,
        top = AsgardGapSize.semiBig,
        right = AsgardGapSize.semiBig,
        bottom = AsgardGapSize.semiBig;

  const AsgardEdgeInsets.big()
      : left = AsgardGapSize.big,
        top = AsgardGapSize.big,
        right = AsgardGapSize.big,
        bottom = AsgardGapSize.big;

  final AsgardGapSize left;
  final AsgardGapSize top;
  final AsgardGapSize right;
  final AsgardGapSize bottom;

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
    this.padding = const AsgardEdgeInsets.all(AsgardGapSize.none),
    this.child,
  }) : super(key: key);

  const AsgardPadding.small({
    Key? key,
    this.child,
  })  : padding = const AsgardEdgeInsets.all(AsgardGapSize.none),
        super(key: key);

  const AsgardPadding.semiSmall({
    Key? key,
    this.child,
  })  : padding = const AsgardEdgeInsets.all(AsgardGapSize.semiSmall),
        super(key: key);

  const AsgardPadding.regular({
    Key? key,
    this.child,
  })  : padding = const AsgardEdgeInsets.all(AsgardGapSize.regular),
        super(key: key);

  const AsgardPadding.semiBig({
    Key? key,
    this.child,
  })  : padding = const AsgardEdgeInsets.all(AsgardGapSize.semiBig),
        super(key: key);

  const AsgardPadding.big({
    Key? key,
    this.child,
  })  : padding = const AsgardEdgeInsets.all(AsgardGapSize.big),
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
