# asgard_shop

Materials for the talk given at Flutter Vikings 2022.

Documents :

* [Slides](https://www.figma.com/proto/TBq8pQIi94evB7TeXDDzRt/FlutterViking---Design-Systems?page-id=123%3A363&node-id=123%3A364&viewport=241%2C48%2C0.07&scaling=contain&starting-point-node-id=123%3A364)

* [UX/UI/Design System Figma document](https://www.figma.com/file/TBq8pQIi94evB7TeXDDzRt/FlutterViking---Design-Systems?node-id=15%3A408)

* [UI Prototype](https://www.figma.com/proto/TBq8pQIi94evB7TeXDDzRt/FlutterViking---Design-Systems?page-id=4%3A249&node-id=4%3A250&viewport=241%2C48%2C2.7&scaling=min-zoom&starting-point-node-id=4%3A250)

# Added Later:
## Exports by library logic
- Never import archives using path logic.
    - Example: 
        - import '../../src/theme/responsive_theme.dart';
        - import 'package:asgard_core/src/theme/responsive_theme.dart';
    - Right way:
        - import 'package:asgard_core/asgard_core.dart';
        
## Context Access all Design System properties and components
- remove maximum layout controller from developer
- isolate every component style to DesignSystem(Core) Package

