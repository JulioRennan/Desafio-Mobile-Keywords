import 'package:desafio_keyworks_mobile/src/app/modules/news/news_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NewsModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) {
          return NewsPage(newsEntity: args.data);
        })
      ];
}
