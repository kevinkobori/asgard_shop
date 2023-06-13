import 'package:asgard_core/asgard_core.dart';

import '../base/widget.dart';

void main() {
  testAppWidgets(
    'button',
    {
      'text-inactive': const AsgardButtonLayout.inactive(
        title: 'Buy',
      ),
      'text-hovered': const AsgardButtonLayout.hovered(
        title: 'Buy',
      ),
      'text-pressed': const AsgardButtonLayout.pressed(
        title: 'Buy',
      ),
      'icon-inactive': Builder(
        builder: (context) {
          final theme = AsgardTheme.of(context);
          return AsgardButtonLayout.inactive(
            icon: theme.icons.characters.shoppingCart,
          );
        },
      ),
      'icon-hovered': Builder(
        builder: (context) {
          final theme = AsgardTheme.of(context);
          return AsgardButtonLayout.hovered(
            icon: theme.icons.characters.shoppingCart,
          );
        },
      ),
      'icon-pressed': Builder(
        builder: (context) {
          final theme = AsgardTheme.of(context);
          return AsgardButtonLayout.pressed(
            icon: theme.icons.characters.shoppingCart,
          );
        },
      ),
      'both-inactive': Builder(
        builder: (context) {
          final theme = AsgardTheme.of(context);
          return AsgardButtonLayout.inactive(
            title: 'Buy',
            icon: theme.icons.characters.shoppingCart,
          );
        },
      ),
      'both-hovered': Builder(
        builder: (context) {
          final theme = AsgardTheme.of(context);
          return AsgardButtonLayout.hovered(
            title: 'Buy',
            icon: theme.icons.characters.shoppingCart,
          );
        },
      ),
      'both-pressed': Builder(
        builder: (context) {
          final theme = AsgardTheme.of(context);
          return AsgardButtonLayout.pressed(
            title: 'Buy',
            icon: theme.icons.characters.shoppingCart,
          );
        },
      ),
    },
  );
}
