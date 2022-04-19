import 'package:desafio_keyworks_mobile/src/app/modules/config/config_module.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/home/home_module.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/maps/maps_module.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/start/start_controller.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/start/start_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StartModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind((i) => StartController()),
      ];
  @override
  List<Module> get imports => [HomeModule(), ConfigModule()];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => StartPage(),
          transition: TransitionType.rightToLeft,
          children: [
            ModuleRoute(
              '/home',
              module: HomeModule(),
            ),
            ModuleRoute(
              '/maps',
              module: MapsModule(),
            ),
            ModuleRoute(
              '/config',
              module: ConfigModule(),
            )
          ],
        ),
      ];
}
