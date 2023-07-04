import 'package:darwin_core/_internal.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_utils/test_utils.dart';

import 'library/library.dart';

void main() {
  _renderLibrary(
    DarwinFormFactor.medium,
  );
  _renderLibrary(
    DarwinFormFactor.medium,
  );
  _renderLibrary(
    DarwinFormFactor.medium,
  );
  _renderLibrary(
    DarwinFormFactor.small,
  );
  _renderLibrary(
    DarwinFormFactor.small,
  );
}

void _renderLibrary(DarwinFormFactor formFactor) async {
  testWidgets('${formFactor.name} theme rendering', (tester) async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await loadTestFonts();

    final key = UniqueKey();

    tester.binding.window.physicalSizeTestValue =
        Size(DarwinThemeColorMode.values.length * 700.0, 1500);
    tester.binding.window.devicePixelRatioTestValue = 1.0;

    await tester.pumpWidget(
      Row(
        key: key,
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...DarwinThemeColorMode.values.map(
            (colorMode) => Expanded(
              child: DarwinThemeLibrary(
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
