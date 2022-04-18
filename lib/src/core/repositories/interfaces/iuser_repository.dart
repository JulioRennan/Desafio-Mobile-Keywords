import 'package:desafio_keyworks_mobile/src/core/models/user_config_entity.dart';

abstract class IUserRepository {
  List<String> getLanguagesOptions();

  Future<UserConfigEntity?> getUserConfig();
  Future<void> saveUserConfig(UserConfigEntity userConfigEntity);
}
