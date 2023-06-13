import 'package:asgard/features/account/state.dart';
import 'package:asgard/features/cart/state.dart';
import 'package:asgard/features/catalog/view.dart';
import 'package:asgard/features/notifications/state.dart';
import 'package:asgard_core/asgard_core.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'base/state_provider.dart';
import 'features/catalog/state.dart';
import 'features/product_detail/view.dart';

class AsgardApp extends StatelessWidget {
  AsgardApp({
    Key? key,
  }) : super(key: key);

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const CatalogView(),
      ),
      GoRoute(
        path: '/detail/:id',
        pageBuilder: (context, state) => TransparentPage<void>(
          key: state.pageKey,
          child: ProductDetailView(
            productId: state.pathParameters['id']!,
          ),
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return StateProvider<CatalogState, CatalogNotifier>(
      create: (context) => CatalogNotifier.demo(),
      child: StateProvider<NotificationsState, NotificationsNotifier>(
        create: (context) => NotificationsNotifier.demo(),
        child: StateProvider<CartState, CartNotifier>(
          create: (context) => CartNotifier.demo(),
          child: StateProvider<AccountState, AccountNotifier>(
            create: (context) => AccountNotifier.demo(),
            child: AsgardBuilder(
              debugShowCheckedModeBanner: false,
              colorMode: AsgardThemeColorMode.light,
              appLogo: ExactAssetPicture(
                SvgPicture.svgStringDecoderBuilder,
                'assets/images/logo.svg',
              ),
              darkAppLogo: ExactAssetPicture(
                SvgPicture.svgStringDecoderBuilder,
                'assets/images/logo_dark.svg',
              ),
              routeInformationParser: _router.routeInformationParser,
              routerDelegate: _router.routerDelegate,
              title: 'Asgard',
            ),
          ),
        ),
      ),
    );
  }
}
