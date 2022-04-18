import 'package:desafio_keyworks_mobile/src/app/app_controller.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/login/login_page.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/start/start_module.dart';
import 'package:desafio_keyworks_mobile/src/core/providers/local_storage_provider.dart';
import 'package:desafio_keyworks_mobile/src/core/repositories/app_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind(
          (i) => AppController(
            AppRepository(LocalStorageProvider()),
          ),
        )
      ];
  @override
  List<ModularRoute> get routes {
    final appController = Modular.get<AppController>();
    appController.navigateToInitialPage();
    return [
      ChildRoute(
        '/',
        child: (_, __) => CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
      ModuleRoute('/start', module: StartModule()),
      ChildRoute('/login', child: (_, __) => const LoginPage())
    ];
  }
}
