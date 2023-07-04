import 'package:darwin_core/_internal.dart';

import '../base/widget.dart';

void main() {
  testAppWidgets(
    'button',
    {
      'text-inactive': const DarwinButtonLayout.inactive(
        title: 'Buy',
      ),
      'text-hovered': const DarwinButtonLayout.hovered(
        title: 'Buy',
      ),
      'text-pressed': const DarwinButtonLayout.pressed(
        title: 'Buy',
      ),
      'icon-inactive': Builder(
        builder: (context) {
          final theme = DarwinTheme.of(context);
          return DarwinButtonLayout.inactive(
            icon: theme.icons.characters.shoppingCart,
          );
        },
      ),
      'icon-hovered': Builder(
        builder: (context) {
          final theme = DarwinTheme.of(context);
          return DarwinButtonLayout.hovered(
            icon: theme.icons.characters.shoppingCart,
          );
        },
      ),
      'icon-pressed': Builder(
        builder: (context) {
          final theme = DarwinTheme.of(context);
          return DarwinButtonLayout.pressed(
            icon: theme.icons.characters.shoppingCart,
          );
        },
      ),
      'both-inactive': Builder(
        builder: (context) {
          final theme = DarwinTheme.of(context);
          return DarwinButtonLayout.inactive(
            title: 'Buy',
            icon: theme.icons.characters.shoppingCart,
          );
        },
      ),
      'both-hovered': Builder(
        builder: (context) {
          final theme = DarwinTheme.of(context);
          return DarwinButtonLayout.hovered(
            title: 'Buy',
            icon: theme.icons.characters.shoppingCart,
          );
        },
      ),
      'both-pressed': Builder(
        builder: (context) {
          final theme = DarwinTheme.of(context);
          return DarwinButtonLayout.pressed(
            title: 'Buy',
            icon: theme.icons.characters.shoppingCart,
          );
        },
      ),
    },
  );
}
