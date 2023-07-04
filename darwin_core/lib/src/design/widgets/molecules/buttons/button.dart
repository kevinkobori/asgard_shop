import 'package:darwin_core/_internal.dart';

class DarwinButton extends StatelessWidget {
  const DarwinButton({
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
    return DarwinTapBuilder(
      onTap: onTap,
      builder: (_, _state, __) {
        switch (_state) {
          case TapState.pressed:
            return Semantics(
              enabled: true,
              selected: true,
              child: DarwinButtonLayout.pressed(
                icon: icon,
                title: title,
                mainAxisSize: mainAxisSize,
              ),
            );
          case TapState.hover:
            return Semantics(
              enabled: true,
              selected: true,
              child: DarwinButtonLayout.hovered(
                icon: icon,
                title: title,
                mainAxisSize: mainAxisSize,
              ),
            );
          case TapState.disabled:
            return Semantics(
              enabled: true,
              selected: true,
              child: DarwinButtonLayout.disabled(
                icon: icon,
                title: title,
                mainAxisSize: mainAxisSize,
              ),
            );
          default:
            return Semantics(
              enabled: true,
              selected: true,
              child: DarwinButtonLayout.inactive(
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

enum AppButtonState {
  disabled,
  inactive,
  hovered,
  pressed,
}

class DarwinButtonLayout extends StatelessWidget {
  const DarwinButtonLayout.disabled({
    Key? key,
    this.icon,
    this.title,
    this.mainAxisSize = MainAxisSize.min,
    this.disabledBackgroundColor,
    this.inactiveBackgroundColor,
    this.hoveredBackgroundColor,
    this.pressedBackgroundColor,
    this.foregroundColor,
  })  : _state = AppButtonState.disabled,
        assert(
          icon != null || title != null,
        ),
        super(key: key);

  const DarwinButtonLayout.inactive({
    Key? key,
    this.icon,
    this.title,
    this.mainAxisSize = MainAxisSize.min,
    this.disabledBackgroundColor,
    this.inactiveBackgroundColor,
    this.hoveredBackgroundColor,
    this.pressedBackgroundColor,
    this.foregroundColor,
  })  : _state = AppButtonState.inactive,
        assert(
          icon != null || title != null,
        ),
        super(key: key);

  const DarwinButtonLayout.hovered({
    Key? key,
    this.icon,
    this.title,
    this.mainAxisSize = MainAxisSize.min,
    this.disabledBackgroundColor,
    this.inactiveBackgroundColor,
    this.hoveredBackgroundColor,
    this.pressedBackgroundColor,
    this.foregroundColor,
  })  : _state = AppButtonState.hovered,
        assert(
          icon != null || title != null,
        ),
        super(key: key);

  const DarwinButtonLayout.pressed({
    Key? key,
    this.icon,
    this.title,
    this.mainAxisSize = MainAxisSize.min,
    this.disabledBackgroundColor,
    this.inactiveBackgroundColor,
    this.hoveredBackgroundColor,
    this.pressedBackgroundColor,
    this.foregroundColor,
  })  : _state = AppButtonState.pressed,
        assert(
          icon != null || title != null,
        ),
        super(key: key);

  final String? icon;
  final String? title;
  final MainAxisSize mainAxisSize;
  final AppButtonState _state;
  final Color? disabledBackgroundColor;
  final Color? inactiveBackgroundColor;
  final Color? hoveredBackgroundColor;
  final Color? pressedBackgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = DarwinTheme.of(context);
    final title = this.title;
    final icon = this.icon;
    final hasBoth = (title != null && icon != null);
    final foregroundColor = this.foregroundColor ?? theme.colors.accentOpposite;
    final backgroundColor = () {
      switch (_state) {
        case AppButtonState.disabled:
          return disabledBackgroundColor ?? theme.colors.disabledColor;
        case AppButtonState.inactive:
          return inactiveBackgroundColor ?? theme.colors.accent;
        case AppButtonState.hovered:
          return hoveredBackgroundColor ?? theme.colors.accentHighlight;
        case AppButtonState.pressed:
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
            DarwinText.title3(
              title,
              color: foregroundColor,
            ),
          if (hasBoth) const DarwinGap.semiSmall(),
          if (icon != null) DarwinIcon.regular(icon, color: foregroundColor),
        ],
      ),
    );
  }
}
