import 'package:asgard_core/_internal.dart';

class AsgardTapBuilder extends TapBuilder {
  const AsgardTapBuilder({
    Key? key,
    required Widget Function(BuildContext, TapState, bool) builder,
    VoidCallback? onTap,
    VoidCallback? onLongPress,
    TapMouseCursorBuilder mouseCursorBuilder = defaultMouseCursorBuilder,
    bool enableFeedback = true,
    bool excludeFromSemantics = false,
    FocusNode? focusNode,
    bool canRequestFocus = true,
    ValueChanged<bool>? onFocusChange,
    bool autofocus = false,
    FocusOnKeyCallback? onKey,
    FocusOnKeyEventCallback? onKeyEvent,
  }) : super(
          builder: builder,
          key: key,
          onTap: onTap,
          onLongPress: onLongPress,
          mouseCursorBuilder: mouseCursorBuilder,
          enableFeedback: enableFeedback,
          excludeFromSemantics: excludeFromSemantics,
          focusNode: focusNode,
          canRequestFocus: canRequestFocus,
          onFocusChange: onFocusChange,
          autofocus: autofocus,
          onKey: onKey,
          onKeyEvent: onKeyEvent,
        );
}
