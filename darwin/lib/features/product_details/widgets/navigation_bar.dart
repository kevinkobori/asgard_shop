import 'package:darwin/features/account/widget/avatar.dart';
import 'package:darwin/features/cart/widget/_overview.dart';
import 'package:darwin/features/catalog/widgets/navigation_bar.dart';
import 'package:darwin/features/notifications/widgets/notification_bar.dart';
import 'package:darwin_core/darwin_core.dart';

class ProductDetailsNavigationBar extends StatelessWidget {
  const ProductDetailsNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = DarwinTheme.of(context);
    final route = ModalRoute.of(context);
    return NotificationBar(
      child: DarwinNavigationBar(
        animation: route?.animation,
        canNavigateBack: true,
        leading: const CurrentUserAvatar(),
        body: const CurrentUserAccount(),
        summary: const CartOverview(),
        action: DarwinButton(
          icon: theme.icons.characters.addProduct,
          title: 'Add to cart',
          onTap: null,
        ),
      ),
    );
  }
}
