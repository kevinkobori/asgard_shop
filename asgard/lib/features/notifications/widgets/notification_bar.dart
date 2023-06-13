import 'package:asgard/features/notifications/state.dart';
import 'package:asgard_core/asgard_core.dart';
import 'package:provider/provider.dart';

class NotificationBar extends StatelessWidget {
  const NotificationBar({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = AsgardTheme.of(context);
    final state =
        context.select((NotificationsState state) => state.lastNotification);
    return AsgardNotifiableBar(
      onClosed: () => context.read<NotificationsNotifier>().close(),
      notification: state != null
          ? AsgardNotification(
              title: state.title,
              description: state.description,
              icon: () {
                switch (state.type) {
                  case NotificationType.offer:
                    return theme.icons.characters.tag;
                }
              }())
          : null,
      child: child,
    );
  }
}
