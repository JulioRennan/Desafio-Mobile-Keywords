import 'package:desafio_keyworks_mobile/src/app/modules/config/components/config_dark_theme_swich.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/config/components/config_language_dropp_button.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/config/config_controller.dart';
import 'package:desafio_keyworks_mobile/src/shared_components/buttons/button_fill.dart';
import 'package:desafio_keyworks_mobile/src/shared_components/text_fields/custom_text_form_field.dart';
import 'package:desafio_keyworks_mobile/src/utils/build_context_extensions.dart';
import 'package:desafio_keyworks_mobile/src/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ConfigView extends StatelessWidget {
  final configController = Modular.get<ConfigController>();
  ConfigView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if (configController.statusUserConfig ==
            StatusRequestController.loading) {
          return Center(
            child: CircularProgressIndicator(color: context.secondaryColor),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: 'Usuário',
                  controller: configController.userFieldController,
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text(
                      'Tema Escuro',
                      style: context.textTheme.titleSmall,
                    ),
                    const Spacer(),
                    ConfigDarkThemeSwitch()
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text(
                      'Idioma',
                      style: context.textTheme.titleSmall,
                    ),
                    const Spacer(),
                    ConfigLanguageDropButton()
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                ButtonFill(
                  title: 'SALVAR',
                  onTap: configController.saveUserConfig,
                )
              ],
            ),
          );
        }
      },
    );
  }
}
