part of 'library.dart';

ThemeSection icons(BuildContext context) {
  final theme = AsgardTheme.of(context);
  final icons = theme.icons;
  return ThemeSection(
    title: 'Icons',
    categories: [
      ThemeCategory(
        title: 'Small',
        children: [
          ...icons.characters.props.map<Widget>(
            (c) => NamedCell(
              value: (c as Named<String>),
              builder: (context, String v, _) => AsgardIcon(
                v,
                color: theme.colors.foreground,
                size: AsgardIconSize.small,
              ),
            ),
          ),
        ],
      ),
      ThemeCategory(
        title: 'Large',
        children: [
          ...icons.characters.props.map<Widget>(
            (c) => NamedCell(
              value: (c as Named<String>),
              builder: (context, String v, _) => AsgardIcon(
                v,
                color: theme.colors.foreground,
                size: AsgardIconSize.regular,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
