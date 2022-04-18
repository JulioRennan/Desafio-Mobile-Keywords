import 'package:desafio_keyworks_mobile/src/app/app_controller.dart';
import 'package:desafio_keyworks_mobile/src/shared_components/buttons/button_fill.dart';
import 'package:desafio_keyworks_mobile/src/shared_components/text_fields/custom_text_form_field.dart';
import 'package:desafio_keyworks_mobile/src/utils/build_context_extensions.dart';
import 'package:desafio_keyworks_mobile/src/utils/manager_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final appController = Modular.get<AppController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            ManagerPath.rocketImage,
            width: 94,
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            'Acesso',
            style: context.textTheme.titleLarge,
          ),
          const SizedBox(
            height: 40,
          ),
          CustomTextFormField(
            labelText: 'Usuário',
          ),
          const SizedBox(
            height: 40,
          ),
          CustomTextFormField(
            labelText: 'Senha',
            obscureText: true,
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              child: Text(
                'Esqueci minha senha',
                style: context.textTheme.bodySmall.withColor(
                  context.secondaryColor,
                ),
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ButtonFill(
              title: 'ACESSAR',
              onTap: () async {
                await Future.delayed(const Duration(seconds: 2));
                appController.setIsLogged(true);
                Modular.to.navigate('/start');
              })
        ],
      ),
    );
  }
}
