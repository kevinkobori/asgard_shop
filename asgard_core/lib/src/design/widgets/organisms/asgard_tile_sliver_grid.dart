import 'package:asgard_core/src/design/theme/asgard_theme.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AsgardTileSliverGrid extends StatelessWidget {
  const AsgardTileSliverGrid({
    Key? key,
    required this.children,
    this.crossAxisCount = 2,
    this.padding,
  }) : super(key: key);

  final int crossAxisCount;
  final List<Widget> children;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final theme = AsgardTheme.of(context);
    final grid = SliverMasonryGrid.count(
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: theme.spacing.regular,
      crossAxisSpacing: theme.spacing.regular,
      childCount: children.length,
      itemBuilder: (context, index) {
        return children[index];
      },
    );

    final padding = this.padding;
    if (padding != null) {
      return SliverPadding(
        padding: padding,
        sliver: grid,
      );
    }

    return grid;
  }
}
