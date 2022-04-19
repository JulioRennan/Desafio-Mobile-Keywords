import 'package:desafio_keyworks_mobile/src/app/modules/home/home_controller.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/home/home_page.dart';
import 'package:desafio_keyworks_mobile/src/core/providers/api_provider.dart';
import 'package:desafio_keyworks_mobile/src/core/repositories/launch_repository.dart';
import 'package:desafio_keyworks_mobile/src/core/repositories/news_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => ApiProvider()),
        Bind.factory((i) => NewsRepository()),
        Bind.factory((i) => Launchrepository()),
        Bind((i) => HomeController(),export: true),
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => HomePage(),
        )
      ];
}
