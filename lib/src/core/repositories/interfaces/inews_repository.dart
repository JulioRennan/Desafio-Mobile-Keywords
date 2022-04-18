import 'package:desafio_keyworks_mobile/src/core/models/notices_entity.dart';

abstract class INewsRepository {
  List<NewsEntity> getAllNews();
}
