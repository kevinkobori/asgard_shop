import 'package:asgard_core/src/design/theme/asgard_theme.dart';
import 'package:flutter/widgets.dart';

enum AsgardTextLevel {
  paragraph1,
  paragraph2,
  title1,
  title2,
  title3,
}

class AsgardText extends StatelessWidget {
  const AsgardText(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
    this.level = AsgardTextLevel.paragraph1,
  }) : super(key: key);

  const AsgardText.paragraph1(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
  })  : level = AsgardTextLevel.paragraph1,
        super(key: key);

  const AsgardText.paragraph2(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
  })  : level = AsgardTextLevel.paragraph2,
        super(key: key);

  const AsgardText.title1(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
  })  : level = AsgardTextLevel.title1,
        super(key: key);

  const AsgardText.title2(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
  })  : level = AsgardTextLevel.title2,
        super(key: key);

  const AsgardText.title3(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
  })  : level = AsgardTextLevel.title3,
        super(key: key);

  final String data;
  final AsgardTextLevel level;
  final Color? color;
  final double? fontSize;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    final theme = AsgardTheme.of(context);
    final color = this.color ?? theme.colors.foreground;
    final style = () {
      switch (level) {
        case AsgardTextLevel.paragraph1:
          return theme.typography.paragraph1;
        case AsgardTextLevel.paragraph2:
          return theme.typography.paragraph2;
        case AsgardTextLevel.title1:
          return theme.typography.title1;
        case AsgardTextLevel.title2:
          return theme.typography.title2;
        case AsgardTextLevel.title3:
          return theme.typography.title3;
      }
    }();
    return Text(
      data,
      style: style.copyWith(
        color: color,
        fontSize: fontSize,
      ),
      maxLines: maxLines,
    );
  }
}
