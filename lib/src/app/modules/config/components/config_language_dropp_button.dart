import 'package:desafio_keyworks_mobile/src/app/modules/config/config_controller.dart';
import 'package:desafio_keyworks_mobile/src/utils/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ConfigLanguageDropButton extends StatelessWidget {
  ConfigLanguageDropButton({Key? key}) : super(key: key);
  final configController = Modular.get<ConfigController>();
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => Container(
        height: 35,
        decoration: BoxDecoration(
          color: context.lightColor,
          borderRadius: BorderRadius.circular(7),
        ),
        padding: const EdgeInsets.only(left: 10, right: 5),
        child: DropdownButton<String>(
          underline: Container(),
          borderRadius: BorderRadius.circular(7),
          iconEnabledColor: context.secondaryColor,
          dropdownColor: context.lightColor,
          value: configController.langueSelected,
          items: configController.languageOptions
              .map((l) => DropdownMenuItem(
                    value: l,
                    child: Text(
                      l,
                      style: context.textTheme.titleSmall
                          .withColor(context.secondaryColor),
                    ),
                  ))
              .toList(),
          onChanged: (language) {
            if (language != null) {
              configController.langueSelected = language;
            }
          },
        ),
      ),
    );
  }
}
