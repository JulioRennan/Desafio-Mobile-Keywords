import 'package:desafio_keyworks_mobile/src/app/app_controller.dart';
import 'package:desafio_keyworks_mobile/src/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends ModularState<AppWidget, AppController> {
  final appController = Modular.get<AppController>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Key Works',
      theme: defaultAppTheme,
      debugShowCheckedModeBanner: false,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
