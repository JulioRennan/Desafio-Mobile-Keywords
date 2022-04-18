import 'package:desafio_keyworks_mobile/src/core/models/user_config_entity.dart';
import 'package:desafio_keyworks_mobile/src/core/providers/interfaces/ilocal_storage_provider.dart';
import 'package:desafio_keyworks_mobile/src/core/repositories/interfaces/iuser_repository.dart';

class UserRepository implements IUserRepository {
  final ILocalStorageProvider storage;
  UserRepository(this.storage);
  @override
  List<String> getLanguagesOptions() {
    return [
      'Português (Brasil)',
      'Inglês (Estados Unidos)',
      'Inglês (Austrália)'
    ];
  }

  @override
  Future<UserConfigEntity?> getUserConfig() async {
    return storage.read('user').then(
          (map) => map.isEmpty ? null : UserConfigEntity.fromMap(map),
        );
  }

  @override
  Future<void> saveUserConfig(UserConfigEntity userConfigEntity) {
    return storage.save('user', userConfigEntity.toMap());
  }
}
