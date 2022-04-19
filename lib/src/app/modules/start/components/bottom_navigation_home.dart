import 'package:desafio_keyworks_mobile/src/app/modules/home/home_controller.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/start/start_controller.dart';
import 'package:desafio_keyworks_mobile/src/utils/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'rounded_icon.dart';

class BottomNavigationHome extends StatelessWidget {
  BottomNavigationHome({Key? key}) : super(key: key);
  final startController = Modular.get<StartController>();
  final homeController = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return BottomNavigationBar(
        backgroundColor: context.alternativePrimaryColor,
        currentIndex: startController.currentPage,
        selectedItemColor: context.secondaryColor,
        unselectedItemColor: context.lightColorSecondary,
        onTap: (index) {
          if (index == startController.currentPage) return;
          if (index == 1 && homeController.lastLaunchpad == null) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  'Selecione um lançamento para poder visualizar o mapa',
                  textAlign: TextAlign.center,
                ),
              ),
            );
            return;
          }
          startController.navigatoIndex(index);
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: RoundedIcon(
              Icons.home,
              isSelected: startController.currentPage == 0,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Mapa',
            icon: RoundedIcon(
              Icons.location_on,
              isSelected: startController.currentPage == 1,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Configurações',
            icon: RoundedIcon(
              Icons.settings,
              isSelected: startController.currentPage == 2,
            ),
          ),
        ],
      );
    });
  }
}
