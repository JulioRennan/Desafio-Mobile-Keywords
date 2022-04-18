import 'package:desafio_keyworks_mobile/src/utils/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

AppBar appBarWithTitle(String title, BuildContext context,
    [bool showLeading = false]) {
  return AppBar(
    backgroundColor: context.primaryColor,
    leading: showLeading
        ? IconButton(
            icon: const Icon(
              Icons.arrow_back_sharp,
            ),
            onPressed: () => Modular.to.pop(),
          )
        : null,
    centerTitle: false,
    title: Text(
      title,
      style: context.textTheme.titleMedium,
    ),
    actions: [
      Icon(
        Icons.menu,
        color: context.lightColorSecondary,
      ),
      const SizedBox(
        width: 20,
      )
    ],
  );
}
