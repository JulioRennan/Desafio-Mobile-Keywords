import 'package:desafio_keyworks_mobile/src/app/modules/maps/components/map_view.dart';
import 'package:desafio_keyworks_mobile/src/utils/build_context_extensions.dart';
import 'package:flutter/material.dart';

import '../../../shared_components/app_bars/app_bar_with_title.dart';

class MapsPage extends StatelessWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.primaryColor,
      appBar: appBarWithTitle('Mapa', context),
      body: const MapView(),
    );
  }
}
