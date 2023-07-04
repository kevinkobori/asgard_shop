import 'package:darwin_core/_internal.dart';

class DarwinActionButton extends StatelessWidget {
  const DarwinActionButton({
    Key? key,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  final String icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return DarwinTapBuilder(
      onTap: onTap,
      builder: (context, state, hasFocus) {
        switch (state) {
          case TapState.disabled:
            return DarwinActionButtonLayout.disabled(
              icon: icon,
            );
          case TapState.hover:
            return DarwinActionButtonLayout.hovered(
              icon: icon,
            );
          case TapState.pressed:
            return DarwinActionButtonLayout.pressed(
              icon: icon,
            );
          default:
            return DarwinActionButtonLayout.inactive(
              icon: icon,
            );
        }
      },
    );
  }
}

class DarwinActionButtonLayout extends StatelessWidget {
  const DarwinActionButtonLayout.disabled({
    Key? key,
    required this.icon,
  })  : _state = AppButtonState.disabled,
        super(key: key);

  const DarwinActionButtonLayout.inactive({
    Key? key,
    required this.icon,
  })  : _state = AppButtonState.inactive,
        super(key: key);

  const DarwinActionButtonLayout.hovered({
    Key? key,
    required this.icon,
  })  : _state = AppButtonState.hovered,
        super(key: key);

  const DarwinActionButtonLayout.pressed({
    Key? key,
    required this.icon,
  })  : _state = AppButtonState.pressed,
        super(key: key);

  final String icon;
  final AppButtonState _state;

  @override
  Widget build(BuildContext context) {
    final theme = DarwinTheme.of(context);
    switch (_state) {
      case AppButtonState.hovered:
        return DarwinButtonLayout.hovered(
          icon: icon,
          hoveredBackgroundColor: theme.colors.accentOpposite.withOpacity(0.15),
        );
      case AppButtonState.pressed:
        return DarwinButtonLayout.pressed(
          icon: icon,
          pressedBackgroundColor: theme.colors.accentOpposite.withOpacity(0.20),
        );
      case AppButtonState.inactive:
        return DarwinButtonLayout.inactive(
          icon: icon,
          inactiveBackgroundColor: theme.colors.accentOpposite.withOpacity(0),
        );
      case AppButtonState.disabled:
        return DarwinButtonLayout.disabled(
          icon: icon,
          disabledBackgroundColor: theme.colors.disabledColor.withOpacity(1),
        );
    }
  }
}
