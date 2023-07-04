import 'package:darwin_core/src/design/theme/theme.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DarwinTileSliverGrid extends StatelessWidget {
  const DarwinTileSliverGrid({
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
    final theme = DarwinTheme.of(context);
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
