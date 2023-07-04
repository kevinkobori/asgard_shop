import 'package:asgard_core/_internal.dart';

class AsgardBackButton extends StatelessWidget {
  const AsgardBackButton({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = AsgardTheme.of(context);
    return AsgardActionButton(
      icon: theme.icons.characters.arrowBack,
      onTap: onTap ?? () => Navigator.pop(context),
    );
  }
}
