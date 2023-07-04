import 'package:asgard_core/_internal.dart';

class AsgardButton extends StatelessWidget {
  const AsgardButton({
    Key? key,
    this.icon,
    this.title,
    this.onTap,
    this.mainAxisSize = MainAxisSize.min,
  })  : assert(
          icon != null || title != null,
        ),
        super(key: key);

  final String? icon;
  final String? title;
  final MainAxisSize mainAxisSize;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return AsgardTapBuilder(
      onTap: onTap,
      builder: (_, _state, __) {
        switch (_state) {
          case TapState.pressed:
            return Semantics(
              enabled: true,
              selected: true,
              child: AsgardButtonLayout.pressed(
                icon: icon,
                title: title,
                mainAxisSize: mainAxisSize,
              ),
            );
          case TapState.hover:
            return Semantics(
              enabled: true,
              selected: true,
              child: AsgardButtonLayout.hovered(
                icon: icon,
                title: title,
                mainAxisSize: mainAxisSize,
              ),
            );
          case TapState.disabled:
            return Semantics(
              enabled: true,
              selected: true,
              child: AsgardButtonLayout.disabled(
                icon: icon,
                title: title,
                mainAxisSize: mainAxisSize,
              ),
            );
          default:
            return Semantics(
              enabled: true,
              selected: true,
              child: AsgardButtonLayout.inactive(
                icon: icon,
                title: title,
                mainAxisSize: mainAxisSize,
              ),
            );
        }
      },
    );
  }
}

enum AsgardButtonState {
  disabled,
  inactive,
  hovered,
  pressed,
}

class AsgardButtonLayout extends StatelessWidget {
  const AsgardButtonLayout.disabled({
    Key? key,
    this.icon,
    this.title,
    this.mainAxisSize = MainAxisSize.min,
    this.disabledBackgroundColor,
    this.inactiveBackgroundColor,
    this.hoveredBackgroundColor,
    this.pressedBackgroundColor,
    this.foregroundColor,
  })  : _state = AsgardButtonState.disabled,
        assert(
          icon != null || title != null,
        ),
        super(key: key);

  const AsgardButtonLayout.inactive({
    Key? key,
    this.icon,
    this.title,
    this.mainAxisSize = MainAxisSize.min,
    this.disabledBackgroundColor,
    this.inactiveBackgroundColor,
    this.hoveredBackgroundColor,
    this.pressedBackgroundColor,
    this.foregroundColor,
  })  : _state = AsgardButtonState.inactive,
        assert(
          icon != null || title != null,
        ),
        super(key: key);

  const AsgardButtonLayout.hovered({
    Key? key,
    this.icon,
    this.title,
    this.mainAxisSize = MainAxisSize.min,
    this.disabledBackgroundColor,
    this.inactiveBackgroundColor,
    this.hoveredBackgroundColor,
    this.pressedBackgroundColor,
    this.foregroundColor,
  })  : _state = AsgardButtonState.hovered,
        assert(
          icon != null || title != null,
        ),
        super(key: key);

  const AsgardButtonLayout.pressed({
    Key? key,
    this.icon,
    this.title,
    this.mainAxisSize = MainAxisSize.min,
    this.disabledBackgroundColor,
    this.inactiveBackgroundColor,
    this.hoveredBackgroundColor,
    this.pressedBackgroundColor,
    this.foregroundColor,
  })  : _state = AsgardButtonState.pressed,
        assert(
          icon != null || title != null,
        ),
        super(key: key);

  final String? icon;
  final String? title;
  final MainAxisSize mainAxisSize;
  final AsgardButtonState _state;
  final Color? disabledBackgroundColor;
  final Color? inactiveBackgroundColor;
  final Color? hoveredBackgroundColor;
  final Color? pressedBackgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = AsgardTheme.of(context);
    final title = this.title;
    final icon = this.icon;
    final hasBoth = (title != null && icon != null);
    final foregroundColor = this.foregroundColor ?? theme.colors.accentOpposite;
    final backgroundColor = () {
      switch (_state) {
        case AsgardButtonState.disabled:
          return disabledBackgroundColor ?? theme.colors.disabledColor;
        case AsgardButtonState.inactive:
          return inactiveBackgroundColor ?? theme.colors.accent;
        case AsgardButtonState.hovered:
          return hoveredBackgroundColor ?? theme.colors.accentHighlight;
        case AsgardButtonState.pressed:
          return pressedBackgroundColor ?? theme.colors.accentHighlight2;
      }
    }();
    return AnimatedContainer(
      duration: theme.durations.quick,
      decoration: BoxDecoration(
        borderRadius: theme.radius.asBorderRadius().small,
        color: backgroundColor,
      ),
      padding: EdgeInsets.symmetric(
        vertical: theme.spacing.semiSmall,
        horizontal:
            title != null ? theme.spacing.semiBig : theme.spacing.semiSmall,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title != null)
            AsgardText.title3(
              title,
              color: foregroundColor,
            ),
          if (hasBoth) const AsgardGap.semiSmall(),
          if (icon != null) AsgardIcon.regular(icon, color: foregroundColor),
        ],
      ),
    );
  }
}
