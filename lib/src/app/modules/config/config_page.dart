import 'package:desafio_keyworks_mobile/src/shared_components/app_bars/app_bar_with_title.dart';
import 'package:desafio_keyworks_mobile/src/utils/build_context_extensions.dart';
import 'package:flutter/material.dart';

import 'components/config_view.dart';

class ConfigPage extends StatelessWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.primaryColor,
      appBar: appBarWithTitle('Configurações', context),
      body: ConfigView(),
    );
  }
}
