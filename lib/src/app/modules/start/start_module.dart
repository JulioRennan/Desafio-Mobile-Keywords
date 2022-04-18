import 'package:desafio_keyworks_mobile/src/app/modules/config/config_controller.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/home/home_controller.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/maps/maps_controller.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/news/news_module.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/start/start_controller.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/start/start_page.dart';
import 'package:desafio_keyworks_mobile/src/core/providers/api_provider.dart';
import 'package:desafio_keyworks_mobile/src/core/providers/local_storage_provider.dart';
import 'package:desafio_keyworks_mobile/src/core/repositories/launch_repository.dart';
import 'package:desafio_keyworks_mobile/src/core/repositories/news_repository.dart';
import 'package:desafio_keyworks_mobile/src/core/repositories/user_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StartModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind((i) => StartController()),
        Bind(
          (i) => HomeController(
            NewsRepository(),
            Launchrepository(ApiProvider()),
          ),
        ),
        Bind((i) => MapController()),
        Bind(
          (i) => ConfigController(UserRepository(LocalStorageProvider())),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => StartPage()),
        ModuleRoute('/news', module: NewsModule())
      ];
}
