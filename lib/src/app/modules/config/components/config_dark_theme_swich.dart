import 'package:desafio_keyworks_mobile/src/app/modules/config/config_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ConfigDarkThemeSwitch extends StatelessWidget {
  final configController = Modular.get<ConfigController>();
  ConfigDarkThemeSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) =>  Switch(
          value: configController.isDarkTheme,
          onChanged: configController.setDarkTheme,
          activeColor: const Color(0xFF6B479C),
          activeTrackColor: const Color(0xFFA889D5),
          inactiveThumbColor: const Color(0xFFB2B2B2),
          inactiveTrackColor: const Color(0xFF7F7F7F),
        ),
      
    );
  }
}
