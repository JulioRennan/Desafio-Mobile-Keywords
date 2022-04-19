import 'package:desafio_keyworks_mobile/src/app/modules/config/config_controller.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/config/config_page.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/maps/maps_controller.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/maps/maps_page.dart';
import 'package:desafio_keyworks_mobile/src/core/providers/local_storage_provider.dart';
import 'package:desafio_keyworks_mobile/src/core/repositories/user_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ConfigModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => LocalStorageProvider()),
        Bind.factory(((i) => UserRepository(i()))),
        Bind((i) => ConfigController(i()),export: true)
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => const ConfigPage(),
        ),
      ];
}
