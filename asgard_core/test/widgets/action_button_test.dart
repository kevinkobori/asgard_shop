import 'package:asgard_core/_internal.dart';

import '../base/widget.dart';

void main() {
  testAppWidgets(
    'action_button',
    {
      'inactive': Builder(
        builder: (context) {
          final theme = AsgardTheme.of(context);
          return AsgardActionButtonLayout.inactive(
            icon: theme.icons.characters.arrowBack,
          );
        },
      ),
      'hovered': Builder(
        builder: (context) {
          final theme = AsgardTheme.of(context);
          return AsgardActionButtonLayout.hovered(
            icon: theme.icons.characters.arrowBack,
          );
        },
      ),
      'pressed': Builder(
        builder: (context) {
          final theme = AsgardTheme.of(context);
          return AsgardActionButtonLayout.pressed(
            icon: theme.icons.characters.arrowBack,
          );
        },
      ),
    },
  );
}
