import 'package:asgard_core/src/theme/theme.dart';
import 'package:flutter/widgets.dart';

import 'action_button.dart';

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
