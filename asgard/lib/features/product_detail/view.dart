import 'package:asgard/base/state_provider.dart';
import 'package:asgard/features/catalog/state.dart';
import 'package:asgard/features/product_detail/state.dart';
import 'package:asgard/services/services.dart';
import 'package:asgard_core/asgard_core.dart';
import 'package:provider/provider.dart';

import 'widgets/navigation_bar.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({
    Key? key,
    required this.productId,
  }) : super(key: key);

  final String productId;

  @override
  Widget build(BuildContext context) {
    return StateProvider<ProductDetailState, ProductDetailNotifier>(
      create: (context) {
        final product = context.read<CatalogState>().getProduct(productId);
        return ProductDetailNotifier(
          ProductDetailState(
            product: product,
          ),
        );
      },
      child: const ProductDetailLayout(),
    );
  }
}

/// State dependencies :
/// * [ProductDetailState]
/// * [AccountState]
/// * [NotificationsState]
/// * [CartState]
class ProductDetailLayout extends StatelessWidget {
  const ProductDetailLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AsgardTheme.of(context);
    final product = context.select((ProductDetailState state) => state.product);

    return AsgardScaffold(
      floatingBar: const ProductDetailNavigationBar(),
      backgroundColor: theme.colors.background.withAlpha(0),
      body: AsgardContentSheet(
        children: [
          if (product == null) const AsgardText.title2('Not found'),
          if (product != null) ..._buildBody(context, theme, product),
        ],
      ),
    );
  }

  List<Widget> _buildBody(
      BuildContext context, AsgardThemeData theme, ProductEntity product) {
    return [
      ClipRRect(
        borderRadius: theme.radius.asBorderRadius().regular,
        child: AspectRatio(
          aspectRatio: 1,
          child: Image(
            fit: BoxFit.cover,
            image: NetworkImage(
              product.image,
            ),
          ),
        ),
      ),
      AsgardText.title1(product.name),
      AsgardText.title3(
        product.category,
        color: theme.colors.accent,
      ),
      AsgardText.paragraph1(product.description),
      const SizedBox(
        height: 100,
      ),
    ];
  }
}
