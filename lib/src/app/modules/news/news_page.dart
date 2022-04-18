import 'package:desafio_keyworks_mobile/src/core/models/notices_entity.dart';
import 'package:desafio_keyworks_mobile/src/shared_components/app_bars/app_bar_with_title.dart';
import 'package:desafio_keyworks_mobile/src/utils/build_context_extensions.dart';
import 'package:flutter/material.dart';

import 'components/news_header.dart';

class NewsPage extends StatelessWidget {
  final NewsEntity newsEntity;
  const NewsPage({
    Key? key,
    required this.newsEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.primaryColor,
      appBar: appBarWithTitle('Notícias', context, true),
      body: ListView(
        children: [
          NewsHeader(
            newsEntity: newsEntity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Font: ${newsEntity.font}',
                  style: context.textTheme.labelSmall,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  newsEntity.subtitle,
                  style: context.textTheme.titleMedium
                      .withColor(context.tertiaryColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '  ${newsEntity.text}',
                  style: context.textTheme.bodyLarge,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
