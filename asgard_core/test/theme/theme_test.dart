import 'package:asgard_core/_internal.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_utils/test_utils.dart';

import 'library/library.dart';

void main() {
  _renderLibrary(
    AsgardFormFactor.medium,
  );
  _renderLibrary(
    AsgardFormFactor.medium,
  );
  _renderLibrary(
    AsgardFormFactor.medium,
  );
  _renderLibrary(
    AsgardFormFactor.small,
  );
  _renderLibrary(
    AsgardFormFactor.small,
  );
}

void _renderLibrary(AsgardFormFactor formFactor) async {
  testWidgets('${formFactor.name} theme rendering', (tester) async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await loadTestFonts();

    final key = UniqueKey();

    tester.binding.window.physicalSizeTestValue =
        Size(AsgardThemeColorMode.values.length * 700.0, 1500);
    tester.binding.window.devicePixelRatioTestValue = 1.0;

    await tester.pumpWidget(
      Row(
        key: key,
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...AsgardThemeColorMode.values.map(
            (colorMode) => Expanded(
              child: AsgardThemeLibrary(
                colorMode: colorMode,
                formFactor: formFactor,
              ),
            ),
          )
        ],
      ),
    );

    await expectLater(
      find.byKey(key),
      matchesGoldenFile('renders/${formFactor.name}.png'),
    );
  });
}
