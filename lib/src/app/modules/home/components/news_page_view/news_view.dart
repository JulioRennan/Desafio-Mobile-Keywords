import 'package:desafio_keyworks_mobile/src/core/models/notices_entity.dart';
import 'package:desafio_keyworks_mobile/src/utils/build_context_extensions.dart';
import 'package:flutter/material.dart';

class NewsView extends StatelessWidget {
  final NewsEntity newsEntity;
  final void Function()? onTap;
  const NewsView({Key? key, required this.newsEntity, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Hero(
        tag: 'news_view',
        child: Stack(
          children: [
            Opacity(
              opacity: .7,
              child: Image.asset(
                newsEntity.image,
                width: context.width,
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: SizedBox(
                width: context.width * .75,
                child: Text(
                  newsEntity.title,
                  style: context.textTheme.titleLarge,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
