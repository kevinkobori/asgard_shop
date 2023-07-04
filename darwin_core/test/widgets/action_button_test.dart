import 'package:darwin_core/_internal.dart';

import '../base/widget.dart';

void main() {
  testAppWidgets(
    'action_button',
    {
      'inactive': Builder(
        builder: (context) {
          final theme = DarwinTheme.of(context);
          return DarwinActionButtonLayout.inactive(
            icon: theme.icons.characters.arrowBack,
          );
        },
      ),
      'hovered': Builder(
        builder: (context) {
          final theme = DarwinTheme.of(context);
          return DarwinActionButtonLayout.hovered(
            icon: theme.icons.characters.arrowBack,
          );
        },
      ),
      'pressed': Builder(
        builder: (context) {
          final theme = DarwinTheme.of(context);
          return DarwinActionButtonLayout.pressed(
            icon: theme.icons.characters.arrowBack,
          );
        },
      ),
    },
  );
}
