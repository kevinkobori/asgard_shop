import 'package:darwin/features/account/widget/avatar.dart';
import 'package:darwin/features/cart/widget/_overview.dart';
import 'package:darwin/features/notifications/widgets/notification_bar.dart';
import 'package:darwin_core/darwin_core.dart';

class CatalogNavigationBar extends StatelessWidget {
  const CatalogNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NotificationBar(
      child: DarwinNavigationBar(
        leading: CurrentUserAvatar(),
        summary: CartOverview(),
        body: CurrentUserAccount(),
      ),
    );
  }
}

class CurrentUserAccount extends StatelessWidget {
  const CurrentUserAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = DarwinTheme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        DarwinText.paragraph1(
          'Account',
          color: theme.colors.actionBarForeground,
        ),
        DarwinText.title3(
          'John',
          color: theme.colors.actionBarForeground,
        ),
      ],
    );
  }
}
