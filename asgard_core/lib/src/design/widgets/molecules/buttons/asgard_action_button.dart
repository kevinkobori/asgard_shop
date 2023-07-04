import 'package:asgard_core/_internal.dart';

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
    return AsgardTapBuilder(
      onTap: onTap,
      builder: (context, state, hasFocus) {
        switch (state) {
          case TapState.disabled:
            return AsgardActionButtonLayout.disabled(
              icon: icon,
            );
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
  const AsgardActionButtonLayout.disabled({
    Key? key,
    required this.icon,
  })  : _state = AsgardButtonState.disabled,
        super(key: key);

  const AsgardActionButtonLayout.inactive({
    Key? key,
    required this.icon,
  })  : _state = AsgardButtonState.inactive,
        super(key: key);

  const AsgardActionButtonLayout.hovered({
    Key? key,
    required this.icon,
  })  : _state = AsgardButtonState.hovered,
        super(key: key);

  const AsgardActionButtonLayout.pressed({
    Key? key,
    required this.icon,
  })  : _state = AsgardButtonState.pressed,
        super(key: key);

  final String icon;
  final AsgardButtonState _state;

  @override
  Widget build(BuildContext context) {
    final theme = AsgardTheme.of(context);
    switch (_state) {
      case AsgardButtonState.hovered:
        return AsgardButtonLayout.hovered(
          icon: icon,
          hoveredBackgroundColor: theme.colors.accentOpposite.withOpacity(0.15),
        );
      case AsgardButtonState.pressed:
        return AsgardButtonLayout.pressed(
          icon: icon,
          pressedBackgroundColor: theme.colors.accentOpposite.withOpacity(0.20),
        );
      case AsgardButtonState.inactive:
        return AsgardButtonLayout.inactive(
          icon: icon,
          inactiveBackgroundColor: theme.colors.accentOpposite.withOpacity(0),
        );
      case AsgardButtonState.disabled:
        return AsgardButtonLayout.disabled(
          icon: icon,
          disabledBackgroundColor: theme.colors.disabledColor.withOpacity(1),
        );
    }
  }
}
