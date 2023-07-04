import 'package:darwin_core/_internal.dart';

import '../base/widget.dart';

void main() {
  Widget bar(BuildContext context) {
    final theme = DarwinTheme.of(context);
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: theme.radius.asBorderRadius().small,
        color: theme.colors.actionBarBackground,
      ),
    );
  }

  DarwinNotification notification(BuildContext context) {
    final theme = DarwinTheme.of(context);
    return DarwinNotification(
      title: 'Save 50% on shields this week',
      description: 'See the offer',
      icon: theme.icons.characters.tag,
    );
  }

  testAppWidgets(
    'notifiable_bar',
    {
      'opened': Builder(
        builder: (context) {
          return DarwinNotifiableBarLayout.opened(
            notification: notification(context),
            child: bar(context),
          );
        },
      ),
      'closed': Builder(
        builder: (context) {
          return DarwinNotifiableBarLayout.closed(
            child: bar(context),
          );
        },
      ),
    },
  );
}
