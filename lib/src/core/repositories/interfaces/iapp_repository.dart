
import 'package:desafio_keyworks_mobile/src/core/models/app_config_entity.dart';

abstract class IAppRepository {
  Future<AppConfigEntity?> getAppConfig();
  Future<void> saveAppConfig(AppConfigEntity appEntity);
}