import 'package:flutter_modular/flutter_modular.dart';

import 'home/presenter/ui_home.dart';
import 'splash/presenter/ui_splash.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => HomePage()),
    ChildRoute('/second', child: (context, args) => SecondPage()),
  ];
}