import 'package:asgard_core/asgard_core.dart';
import 'package:widgetbook2/widgetbook2.dart';

void main() {
  runApp(const HotreloadWidgetbook());
}

class HotreloadWidgetbook extends StatelessWidget {
  const HotreloadWidgetbook({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      categories: [
        WidgetbookCategory(
          name: 'widgets',
          widgets: [
            WidgetbookComponent(
              name: 'Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'elevated',
                  builder: (context) => AppButton(
                    onTap: () {},
                    title: context.knobs.text(label: 'label'),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
      themes: [
        // WidgetbookTheme( // TODO: NOW
        //   name: 'Light',
        //   data: ThemeData.light(),
        // ),
        // WidgetbookTheme( // TODO: NOW
        //   name: 'Dark',
        //   data: ThemeData.dark(),
        // ),
      ],
      appInfo: AppInfo(name: 'Example'),
    );
  }
}
