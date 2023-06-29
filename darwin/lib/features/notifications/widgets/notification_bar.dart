import 'package:darwin/features/notifications/state.dart';
import 'package:darwin_core/darwin_core.dart';
import 'package:provider/provider.dart';

class NotificationBar extends StatelessWidget {
  const NotificationBar({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = DarwinTheme.of(context);
    final state =
        context.select((NotificationsState state) => state.lastNotification);
    return DarwinNotifiableBar(
      onClosed: () => context.read<NotificationsNotifier>().close(),
      notification: state != null
          ? DarwinNotification(
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
