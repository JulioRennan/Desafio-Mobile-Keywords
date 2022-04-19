import 'package:desafio_keyworks_mobile/src/core/models/launch_entity.dart';
import 'package:desafio_keyworks_mobile/src/core/models/launchpad_entity.dart';
import 'package:desafio_keyworks_mobile/src/core/providers/interfaces/iapi_provider.dart';
import 'package:desafio_keyworks_mobile/src/core/repositories/interfaces/ilaunch_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Launchrepository implements ILaunchRepository {
  final IApiProvider apiProvider = Modular.get<IApiProvider>();


  @override
  Future<List<LaunchEntity>> getUpcomingLaunches() {
    return apiProvider.get('/launches/upcoming').then(
          (response) =>
              List.from(response).map((e) => LaunchEntity.fromMap(e)).toList(),
        );
  }

  @override
  Future<LaunchpadEntity> getLaunchpadById(String id) {
    return apiProvider.get('/launchpads/$id').then(
          (response) => LaunchpadEntity.fromMap(response),
        );
  }
}
