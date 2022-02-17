import 'package:flutter_modular/flutter_modular.dart';
import 'package:portofolio/pages/pages.dart';

class MainRoute extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const HomePage()),
        ChildRoute('/about', child: (_, __) => const About()),
        ChildRoute('/contact', child: (_, __) => const Contact()),
        ChildRoute('/project', child: (_, __) => const Project()),
      ];
}
