import 'package:flutter_modular/flutter_modular.dart';

import 'auth/presenter/ui_register.dart';
import 'onboarding/presenter/ui_onboarding.dart';
import 'splash/presenter/ui_splash.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const SplashPage()),
    ChildRoute('/onboard', child: (context, args) => OnBoarding()),
    ChildRoute('/second', child: (context, args) => RegisterPage()),
  ];
}