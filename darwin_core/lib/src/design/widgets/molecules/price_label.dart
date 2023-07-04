import 'package:darwin_core/_internal.dart';

class PriceLabel extends StatelessWidget {
  const PriceLabel(
    this.value, {
    Key? key,
  }) : super(key: key);

  final double value;

  @override
  Widget build(BuildContext context) {
    final theme = DarwinTheme.of(context);
    return DarwinContainer(
      decoration: BoxDecoration(
        color: theme.colors.accent,
        borderRadius: theme.radius.asBorderRadius().regular,
      ),
      padding: const DarwinEdgeInsets.symmetric(
        vertical: AppGapSize.semiSmall,
        horizontal: AppGapSize.regular,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          DarwinText.title3(
            value.toString(),
            color: theme.colors.accentOpposite,
          ),
          const DarwinGap.small(),
          DarwinIcon.small(
            theme.icons.characters.vikoin,
            color: theme.colors.accentOpposite,
          ),
        ],
      ),
    );
  }
}
