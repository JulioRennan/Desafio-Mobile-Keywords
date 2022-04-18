import 'package:desafio_keyworks_mobile/src/core/models/app_config_entity.dart';
import 'package:desafio_keyworks_mobile/src/core/providers/interfaces/ilocal_storage_provider.dart';
import 'package:desafio_keyworks_mobile/src/core/repositories/interfaces/iapp_repository.dart';

class AppRepository implements IAppRepository {
  final ILocalStorageProvider storage;
  AppRepository(this.storage);

  @override
  Future<AppConfigEntity?> getAppConfig() {
    return storage.read('app').then(
          (map) => map.isEmpty ? null : AppConfigEntity.fromMap(map),
        );
  }

  @override
  Future<void> saveAppConfig(AppConfigEntity appEntity) {
    return storage.save('app', appEntity.toMap());
  }
}
