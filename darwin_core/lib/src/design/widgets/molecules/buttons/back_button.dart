import 'package:darwin_core/_internal.dart';

class DarwinBackButton extends StatelessWidget {
  const DarwinBackButton({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = DarwinTheme.of(context);
    return DarwinActionButton(
      icon: theme.icons.characters.arrowBack,
      onTap: onTap ?? () => Navigator.pop(context),
    );
  }
}
