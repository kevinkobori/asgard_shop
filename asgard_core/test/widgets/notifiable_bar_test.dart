import 'package:asgard_core/asgard_core.dart';

import '../base/widget.dart';

void main() {
  Widget bar(BuildContext context) {
    final theme = AsgardTheme.of(context);
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: theme.radius.asBorderRadius().small,
        color: theme.colors.actionBarBackground,
      ),
    );
  }

  AsgardNotification notification(BuildContext context) {
    final theme = AsgardTheme.of(context);
    return AsgardNotification(
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
          return AsgardNotifiableBarLayout.opened(
            notification: notification(context),
            child: bar(context),
          );
        },
      ),
      'closed': Builder(
        builder: (context) {
          return AsgardNotifiableBarLayout.closed(
            child: bar(context),
          );
        },
      ),
    },
  );
}
