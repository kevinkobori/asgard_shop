import 'package:asgard_core/asgard_core.dart';
import 'package:tap_builder/tap_builder.dart';

class AsgardActionButton extends StatelessWidget {
  const AsgardActionButton({
    Key? key,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  final String icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TapBuilder(
      onTap: onTap,
      builder: (context, state, hasFocus) {
        switch (state) {
          case TapState.hover:
            return AsgardActionButtonLayout.hovered(
              icon: icon,
            );
          case TapState.pressed:
            return AsgardActionButtonLayout.pressed(
              icon: icon,
            );
          default:
            return AsgardActionButtonLayout.inactive(
              icon: icon,
            );
        }
      },
    );
  }
}

class AsgardActionButtonLayout extends StatelessWidget {
  const AsgardActionButtonLayout.inactive({
    Key? key,
    required this.icon,
  })  : _state = AppButtonState.inactive,
        super(key: key);

  const AsgardActionButtonLayout.hovered({
    Key? key,
    required this.icon,
  })  : _state = AppButtonState.hovered,
        super(key: key);

  const AsgardActionButtonLayout.pressed({
    Key? key,
    required this.icon,
  })  : _state = AppButtonState.pressed,
        super(key: key);

  final String icon;
  final AppButtonState _state;

  @override
  Widget build(BuildContext context) {
    final theme = AsgardTheme.of(context);
    switch (_state) {
      case AppButtonState.hovered:
        return AsgardButtonLayout.hovered(
          icon: icon,
          hoveredBackgroundColor: theme.colors.accentOpposite.withOpacity(0.15),
        );
      case AppButtonState.pressed:
        return AsgardButtonLayout.pressed(
          icon: icon,
          pressedBackgroundColor: theme.colors.accentOpposite.withOpacity(0.20),
        );
      case AppButtonState.inactive:
        return AsgardButtonLayout.inactive(
          icon: icon,
          inactiveBackgroundColor: theme.colors.accentOpposite.withOpacity(0),
        );
    }
  }
}
