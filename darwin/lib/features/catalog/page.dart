import 'dart:math' as math;

import 'package:darwin/services/services.dart';
import 'package:darwin_core/darwin_core.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'state.dart';
import 'widgets/header.dart';
import 'widgets/navigation_bar.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CatalogMobileLayout(
      onViewProduct: (productId) {
        context.push('/detail/$productId');
      },
    );
  }
}

/// State dependencies :
/// * [CatalogState]
/// * [AccountState]
/// * [NotificationsState]
/// * [CartState]
class CatalogMobileLayout extends StatelessWidget {
  const CatalogMobileLayout({
    Key? key,
    required this.onViewProduct,
  }) : super(key: key);

  final ValueChanged<String> onViewProduct;

  @override
  Widget build(BuildContext context) {
    final products = context.select((CatalogState state) => state.products);
    return DarwinScaffold(
      body: _BodyWithProducts(
        products: products,
        onViewProduct: onViewProduct,
      ),
      floatingBar: const CatalogNavigationBar(),
    );
  }
}

class _BodyWithProducts extends StatefulWidget {
  const _BodyWithProducts({
    Key? key,
    required this.products,
    required this.onViewProduct,
  }) : super(key: key);

  final ValueChanged<String> onViewProduct;
  final List<ProductEntity> products;

  @override
  State<_BodyWithProducts> createState() => _BodyWithProductsState();
}

class _BodyWithProductsState extends State<_BodyWithProducts> {
  late final ScrollController _controller = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final theme = DarwinTheme.of(context);
    return LayoutBuilder(builder: (context, constraints) {
      return CustomScrollView(
        controller: _controller,
        slivers: [
          SliverToBoxAdapter(
            child: CatalogHeader(
              controller: _controller,
            ),
          ),
          SliverSafeArea(
            top: false,
            sliver: DarwinTileSliverGrid(
              padding: EdgeInsets.only(
                left: theme.spacing.semiBig,
                top: theme.spacing.semiBig,
                right: theme.spacing.semiBig,
                bottom: math.max(
                  mediaQuery.padding.bottom,
                  theme.spacing.semiBig,
                ),
              ),
              crossAxisCount: (constraints.maxWidth / 200).ceil(),
              children: [
                ...widget.products.map(
                  (product) => ProductTile(
                    key: Key(product.id),
                    name: product.name,
                    image: NetworkImage(product.image),
                    price: product.price.toDouble(),
                    aspectRatio: product.imageAspectRatio,
                    onTap: () => widget.onViewProduct(product.id),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
