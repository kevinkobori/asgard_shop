import 'package:asgard/features/account/widget/avatar.dart';
import 'package:asgard/features/cart/widget/_overview.dart';
import 'package:asgard/features/notifications/widgets/notification_bar.dart';
import 'package:asgard_core/asgard_core.dart';

class CatalogNavigationBar extends StatelessWidget {
  const CatalogNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NotificationBar(
      child: AsgardNavigationBar(
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
    final theme = AsgardTheme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        AsgardText.paragraph1(
          'Account',
          color: theme.colors.actionBarForeground,
        ),
        AsgardText.title3(
          'John',
          color: theme.colors.actionBarForeground,
        ),
      ],
    );
  }
}
