import 'package:desafio_keyworks_mobile/src/core/models/notices_entity.dart';
import 'package:desafio_keyworks_mobile/src/core/repositories/interfaces/inews_repository.dart';
import 'package:desafio_keyworks_mobile/src/utils/manager_path.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class NewsRepository implements INewsRepository {
  final _defaultTitle =
      "GEOMAGNETIC STORM AND RECENTLY DEPLOYED STARLINK SATELLITES";
  final _defaultText = lorem(words: 300, paragraphs: 6);
  final _defaultSubtitle = 'Lorem ipsum';
  final _defaultFont = 'Space X';

  @override
  List<NewsEntity> getAllNews() {
    return List.generate(
      3,
      (index) => NewsEntity(
        title: _defaultTitle,
        image: ManagerPath.homeHeaderImage,
        text: _defaultText,
        font: _defaultFont,
        subtitle: _defaultSubtitle,
      ),
    );
  }
}
