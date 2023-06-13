import 'package:asgard_core/asgard_core.dart';
import 'package:equatable/equatable.dart';

class AsgardNotification extends Equatable {
  const AsgardNotification({
    required this.title,
    required this.description,
    required this.icon,
  });
  final String title;
  final String description;
  final String icon;

  @override
  List<Object?> get props => [
        title,
        description,
        icon,
      ];
}

class AsgardNotifiableBar extends StatefulWidget {
  const AsgardNotifiableBar({
    Key? key,
    required this.child,
    this.notification,
    this.onClosed,
  }) : super(key: key);

  final AsgardNotification? notification;
  final VoidCallback? onClosed;
  final Widget child;

  @override
  State<AsgardNotifiableBar> createState() => _AsgardNotifiableBarState();
}

class _AsgardNotifiableBarState extends State<AsgardNotifiableBar> {
  late bool _isOpened = widget.notification != null;

  @override
  void didUpdateWidget(covariant AsgardNotifiableBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.notification != widget.notification) {
      setState(() {
        _isOpened = widget.notification != null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _isOpened
        ? AsgardNotifiableBarLayout.opened(
            notification: widget.notification,
            onClosed: () {
              setState(() {
                _isOpened = false;
              });
              widget.onClosed?.call();
            },
            child: widget.child,
          )
        : AsgardNotifiableBarLayout.closed(
            child: widget.child,
          );
  }
}

enum AsgardNotifiableBarState {
  opened,
  closed,
}

class AsgardNotifiableBarLayout extends StatelessWidget {
  const AsgardNotifiableBarLayout.opened({
    Key? key,
    required this.notification,
    required this.child,
    this.onClosed,
  })  : _state = AsgardNotifiableBarState.opened,
        super(key: key);

  const AsgardNotifiableBarLayout.closed({
    Key? key,
    required this.child,
    this.onClosed,
  })  : _state = AsgardNotifiableBarState.closed,
        notification = null,
        super(key: key);

  final AsgardNotifiableBarState _state;
  final AsgardNotification? notification;
  final VoidCallback? onClosed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = AsgardTheme.of(context);
    final notification = this.notification;
    final isOpened =
        notification != null || _state == AsgardNotifiableBarState.opened;

    return AnimatedContainer(
      duration: theme.durations.regular,
      decoration: BoxDecoration(
        borderRadius: theme.radius.asBorderRadius().regular,
        color: theme.colors.accent,
        boxShadow: [
          BoxShadow(
            blurRadius: isOpened ? 30 : 0,
            color: theme.colors.accent.withOpacity(
              isOpened ? 0.5 : 0.0,
            ),
          )
        ],
      ),
      child: AnimatedSize(
        duration: theme.durations.regular,
        alignment: Alignment.bottomCenter,
        curve: Curves.easeInOut,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isOpened)
              _NotificationBody(
                notification: notification!,
                onClose: onClosed,
              ),
            child,
          ],
        ),
      ),
    );
  }
}

class _NotificationBody extends StatelessWidget {
  const _NotificationBody({
    Key? key,
    required this.notification,
    this.onClose,
  }) : super(key: key);

  final AsgardNotification notification;
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    final theme = AsgardTheme.of(context);
    return Row(
      children: [
        AsgardPadding(
          padding: const AsgardEdgeInsets.regular(),
          child: AsgardIcon.regular(
            notification.icon,
            color: theme.colors.accentOpposite,
          ),
        ),
        Expanded(
          child: AsgardPadding(
            padding: const AsgardEdgeInsets.symmetric(
              vertical: AppGapSize.regular,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AsgardText.title3(
                  notification.title,
                  color: theme.colors.accentOpposite,
                  maxLines: 1,
                ),
                AsgardText.paragraph1(
                  notification.description,
                  color: theme.colors.accentOpposite,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ),
        AsgardActionButton(
          icon: theme.icons.characters.dismiss,
          onTap: onClose,
        ),
      ],
    );
  }
}
