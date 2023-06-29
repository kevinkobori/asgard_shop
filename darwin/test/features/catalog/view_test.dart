import 'package:darwin/features/account/state.dart';
import 'package:darwin/features/cart/state.dart';
import 'package:darwin/features/catalog/page.dart';
import 'package:darwin/features/catalog/state.dart';
import 'package:darwin/features/notifications/state.dart';
import 'package:provider/provider.dart';

import '../../base/view.dart';

void main() {
  testAppView(
    'features/catalog',
    MultiProvider(
      providers: [
        Provider.value(value: NotificationsState.demo()),
        Provider.value(value: AccountState.demo()),
        Provider.value(value: CartState.demo()),
        Provider.value(value: CatalogState.demo()),
      ],
      child: CatalogMobileLayout(
        onViewProduct: (id) {},
      ),
    ),
  );
}
