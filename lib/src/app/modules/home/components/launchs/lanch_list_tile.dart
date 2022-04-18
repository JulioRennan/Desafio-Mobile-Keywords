import 'package:desafio_keyworks_mobile/src/app/modules/home/home_controller.dart';
import 'package:desafio_keyworks_mobile/src/app/modules/maps/maps_controller.dart';
import 'package:desafio_keyworks_mobile/src/core/models/launch_entity.dart';
import 'package:desafio_keyworks_mobile/src/utils/build_context_extensions.dart';
import 'package:desafio_keyworks_mobile/src/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../start/start_controller.dart';

class LaunchListTile extends StatelessWidget {
  final LaunchEntity launchEntity;
  final homeController = Modular.get<HomeController>();
  final startController = Modular.get<StartController>();
  final mapsController = Modular.get<MapController>();

  LaunchListTile(this.launchEntity, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListTile(
        iconColor: context.lightColorSecondary,
        title: Text(
          launchEntity.name,
          style: context.textTheme.titleSmall,
        ),
        subtitle: Text(
          launchEntity.dateTime.toLocal().toString(),
          style: context.textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.w400,
            color: context.secondaryColor,
          ),
        ),
        trailing: Observer(
          builder: ((context) {
            if (homeController.statusLaunchpad ==
                    StatusRequestController.loading &&
                launchEntity.id == homeController.lastLaunchSeleceted) {
              return SizedBox(
                width: 10,
                height: 10,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  color: context.secondaryColor,
                ),
              );
            } else {
              return Icon(Icons.location_on);
            }
          }),
        ),
        onTap: () async {
          await homeController.getLaunchpadById(launchEntity);
          if (homeController.lastLaunchpad != null) {
            mapsController.setLaunchPad(homeController.lastLaunchpad!);
            startController.setPage(1);
          }
        },
      ),
    );
  }
}
