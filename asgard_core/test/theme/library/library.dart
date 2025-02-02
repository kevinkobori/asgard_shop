import 'package:asgard_core/_internal.dart';
import 'package:asgard_core/src/design/utils/named.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_svg/flutter_svg.dart';

import 'base.dart';

part 'colors.dart';
part 'icons.dart';
part 'radius.dart';
part 'shadows.dart';
part 'spacing.dart';
part 'typography.dart';

class AsgardThemeLibrary extends StatelessWidget {
  const AsgardThemeLibrary({
    Key? key,
    required this.colorMode,
    required this.formFactor,
  }) : super(key: key);

  final AsgardThemeColorMode colorMode;
  final AsgardFormFactor formFactor;

  @override
  Widget build(BuildContext context) {
    return material.MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AsgardResponsiveTheme(
        appLogo: StringPicture(
          SvgPicture.svgStringDecoderBuilder,
          '<svg></svg>',
        ),
        colorMode: colorMode,
        formFactor: formFactor,
        child: Builder(
          builder: (context) {
            return ThemeContainer(
              title: 'Asgard Theme : ${formFactor.name} - ${colorMode.name}',
              sections: [
                colors(context),
                typography(context),
                icons(context),
                radius(context),
                spacing(context),
                shadow(context),
              ],
            );
          },
        ),
      ),
    );
  }
}
