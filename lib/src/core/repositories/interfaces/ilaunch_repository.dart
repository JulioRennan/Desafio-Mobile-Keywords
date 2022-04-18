import '../../models/launch_entity.dart';
import '../../models/launchpad_entity.dart';

abstract class ILaunchRepository {
  Future<List<LaunchEntity>> getUpcomingLaunches();
  Future<LaunchpadEntity> getLaunchpadById(String id);
}
