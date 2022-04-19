import 'package:desafio_keyworks_mobile/src/app/modules/config/config_page.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/home/home_page.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/maps/maps_page.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/start/start_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'components/bottom_navigation_home.dart';

class StartPage extends StatelessWidget {
  final startController = Modular.get<StartController>();
  StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const RouterOutlet(),
      bottomNavigationBar: BottomNavigationHome(),
    );
  }
}
