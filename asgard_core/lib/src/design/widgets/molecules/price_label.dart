import 'package:asgard_core/_internal.dart';

class PriceLabel extends StatelessWidget {
  const PriceLabel(
    this.value, {
    Key? key,
  }) : super(key: key);

  final double value;

  @override
  Widget build(BuildContext context) {
    final theme = AsgardTheme.of(context);
    return AsgardContainer(
      decoration: BoxDecoration(
        color: theme.colors.accent,
        borderRadius: theme.radius.asBorderRadius().regular,
      ),
      padding: const AsgardEdgeInsets.symmetric(
        vertical: AsgardGapSize.semiSmall,
        horizontal: AsgardGapSize.regular,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AsgardText.title3(
            value.toString(),
            color: theme.colors.accentOpposite,
          ),
          const AsgardGap.small(),
          AsgardIcon.small(
            theme.icons.characters.vikoin,
            color: theme.colors.accentOpposite,
          ),
        ],
      ),
    );
  }
}
