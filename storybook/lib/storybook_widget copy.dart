// import 'package:asgard_core/_internal.dart';
// import 'package:flutter/material.dart';
// import 'package:widgetbook/widgetbook.dart';

// class StorybookWidget extends StatelessWidget {
//   const StorybookWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Widgetbook.material(
//       categories: [
//         WidgetbookCategory(
//           name: 'widgets',
//           widgets: [
//             WidgetbookComponent(
//               name: 'Button',
//               useCases: [
//                 WidgetbookUseCase(
//                     name: 'Mewnu Validate Flat Button',
//                     builder: (context) => AppButton(
//                           onTap: () {},
//                           title: context.knobs.text(label: 'label'),
//                         )
//                     // MewnuValidateFlatButton(
//                     //   context.knobs.text(label: 'label'),
//                     //   // 'ENVIAR EMAIL',
//                     //   isValid: context.knobs.boolean(label: 'isValid'),
//                     //   onPressed: () async {},
//                     // ),
//                     ),
//               ],
//             ),
//           ],
//         )
//       ],
//       themes: [
//         WidgetbookTheme(
//           name: 'Light',
//           data: ThemeData.light(),
//         ),
//         WidgetbookTheme(
//           name: 'Dark',
//           data: ThemeData.dark(),
//         ),
//       ],
//       appInfo: AppInfo(name: 'Mewnu'),
//     );
//   }
// }
