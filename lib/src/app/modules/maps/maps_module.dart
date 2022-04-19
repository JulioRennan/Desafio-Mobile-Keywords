import 'package:desafio_keyworks_mobile/src/app/modules/maps/maps_controller.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/maps/maps_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MapsModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind((i) => MapController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => const MapsPage(),
        ),
      ];
}
