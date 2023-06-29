// import 'package:darwin_core/src/theme/data/atoms/atoms2.dart';
import 'package:darwin/features/cart/state.dart';
import 'package:darwin_core/darwin_core.dart';
import 'package:provider/provider.dart';

class CartOverview extends StatelessWidget {
  const CartOverview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = DarwinTheme.of(context);
    final itemCount = context.select((CartState state) => state.items.length);
    final totalPrice = context.select((CartState state) => state.totalPrice);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DarwinText.paragraph1(
              '$itemCount items',
              color: theme.colors.actionBarForeground,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                DarwinText.title3(
                  '$totalPrice',
                  color: theme.colors.actionBarForeground,
                ),
                DarwinIcon.regular(
                  theme.icons.characters.vikoin,
                  color: theme.colors.actionBarForeground,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
