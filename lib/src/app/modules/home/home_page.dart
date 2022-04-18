import 'package:desafio_keyworks_mobile/src/app/modules/home/components/launchs/launch_view.dart';
import 'package:desafio_keyworks_mobile/src/shared_components/animated_containers/fade_container.dart';
import 'package:desafio_keyworks_mobile/src/shared_components/app_bars/app_bar_with_title.dart';
import 'package:desafio_keyworks_mobile/src/utils/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'components/news_page_view/news_page_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.primaryColor,
      appBar: appBarWithTitle('Home', context),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          FadeContainer(
            child: NewsPageView(),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 15),
            child: Text(
              'Lançamentos',
              style: context.textTheme.titleMedium
                  .withColor(context.tertiaryColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: LaunchView(),
          )
        ],
      ),
    );
  }
}
