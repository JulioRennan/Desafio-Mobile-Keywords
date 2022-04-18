import 'package:desafio_keyworks_mobile/src/app/modules/home/home_controller.dart';
import 'package:desafio_keyworks_mobile/src/shared_components/animated_containers/fade_container.dart';
import 'package:desafio_keyworks_mobile/src/utils/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'news_circle_option.dart';
import 'news_view.dart';

class NewsPageView extends StatelessWidget {
  final homeController = Modular.get<HomeController>();

  NewsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Column(
        children: [
          Center(
            child: SizedBox(
              height: 250,
              child: Stack(
                children: [
                  PageView(
                    controller: homeController.newsController,
                    onPageChanged: homeController.setIndex,
                    children: homeController.news
                        .map((newsEntity) => NewsView(
                              newsEntity: newsEntity,
                              onTap: () => Modular.to.pushNamed(
                                '/news',
                                arguments: newsEntity,
                              ),
                            ))
                        .toList(),
                  ),
                  if (homeController.isCanNextPage)
                    FadeContainer(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: homeController.nextPage,
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 45,
                            color: context.secondaryColor.withOpacity(.65),
                          ),
                        ),
                      ),
                    ),
                  if (homeController.isCanPreviousPage)
                    FadeContainer(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: homeController.previousPage,
                          icon: Icon(
                            Icons.arrow_back_ios_rounded,
                            size: 45,
                            color: context.secondaryColor.withOpacity(.65),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) {
                return NewsCircleOption(
                  isSelected: index == homeController.currentIndex,
                );
              },
            ),
          )
        ],
      );
    });
  }
}
