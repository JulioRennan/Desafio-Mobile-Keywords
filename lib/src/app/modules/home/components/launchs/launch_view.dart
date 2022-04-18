import 'package:desafio_keyworks_mobile/src/app/modules/home/components/launchs/lanch_list_tile.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/home/home_controller.dart';
import 'package:desafio_keyworks_mobile/src/utils/build_context_extensions.dart';
import 'package:desafio_keyworks_mobile/src/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LaunchView extends StatelessWidget {
  final homeController = Modular.get<HomeController>();

  LaunchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: ((context) => AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.ease,
            clipBehavior: Clip.hardEdge,
            height: homeController.statusLaunch == StatusRequestController.done
                ? homeController.launchs.length * 65
                : 150,
            decoration: BoxDecoration(
              color: context.alternativePrimaryColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: _buildWidget(context),
          )),
    );
  }

  _buildWidget(BuildContext context) {
    switch (homeController.statusLaunch) {
      case StatusRequestController.loading:
        return Center(
          child: CircularProgressIndicator(
            color: context.secondaryColor,
          ),
        );
      case StatusRequestController.error:
        return Padding(
          padding: EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Não foi possível carregar as informações no momento, tente novamente',
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium.withColor(
                context.secondaryColor,
              ),
            ),
            IconButton(
              onPressed: homeController.getNextLaunchs,
              icon: const Icon(
                Icons.refresh,
              ),
            )
          ]),
        );
      case StatusRequestController.done:
        return SingleChildScrollView(
          child: Column(
            children:
                homeController.launchs.map(((e) => LaunchListTile(e))).toList(),
          ),
        );
    }
  }
}
