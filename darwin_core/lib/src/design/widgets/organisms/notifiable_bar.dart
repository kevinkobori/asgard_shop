import 'package:darwin_core/_internal.dart';
import 'package:equatable/equatable.dart';

class DarwinNotification extends Equatable {
  const DarwinNotification({
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

class DarwinNotifiableBar extends StatefulWidget {
  const DarwinNotifiableBar({
    Key? key,
    required this.child,
    this.notification,
    this.onClosed,
  }) : super(key: key);

  final DarwinNotification? notification;
  final VoidCallback? onClosed;
  final Widget child;

  @override
  State<DarwinNotifiableBar> createState() => _DarwinNotifiableBarState();
}

class _DarwinNotifiableBarState extends State<DarwinNotifiableBar> {
  late bool _isOpened = widget.notification != null;

  @override
  void didUpdateWidget(covariant DarwinNotifiableBar oldWidget) {
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
        ? DarwinNotifiableBarLayout.opened(
            notification: widget.notification,
            onClosed: () {
              setState(() {
                _isOpened = false;
              });
              widget.onClosed?.call();
            },
            child: widget.child,
          )
        : DarwinNotifiableBarLayout.closed(
            child: widget.child,
          );
  }
}

enum DarwinNotifiableBarState {
  opened,
  closed,
}

class DarwinNotifiableBarLayout extends StatelessWidget {
  const DarwinNotifiableBarLayout.opened({
    Key? key,
    required this.notification,
    required this.child,
    this.onClosed,
  })  : _state = DarwinNotifiableBarState.opened,
        super(key: key);

  const DarwinNotifiableBarLayout.closed({
    Key? key,
    required this.child,
    this.onClosed,
  })  : _state = DarwinNotifiableBarState.closed,
        notification = null,
        super(key: key);

  final DarwinNotifiableBarState _state;
  final DarwinNotification? notification;
  final VoidCallback? onClosed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = DarwinTheme.of(context);
    final notification = this.notification;
    final isOpened =
        notification != null || _state == DarwinNotifiableBarState.opened;

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

  final DarwinNotification notification;
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    final theme = DarwinTheme.of(context);
    return Row(
      children: [
        DarwinPadding(
          padding: const DarwinEdgeInsets.regular(),
          child: DarwinIcon.regular(
            notification.icon,
            color: theme.colors.accentOpposite,
          ),
        ),
        Expanded(
          child: DarwinPadding(
            padding: const DarwinEdgeInsets.symmetric(
              vertical: AppGapSize.regular,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DarwinText.title3(
                  notification.title,
                  color: theme.colors.accentOpposite,
                  maxLines: 1,
                ),
                DarwinText.paragraph1(
                  notification.description,
                  color: theme.colors.accentOpposite,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ),
        DarwinActionButton(
          icon: theme.icons.characters.dismiss,
          onTap: onClose,
        ),
      ],
    );
  }
}
