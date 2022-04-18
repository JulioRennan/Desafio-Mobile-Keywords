import 'package:desafio_keyworks_mobile/src/core/models/launch_entity.dart';
import 'package:desafio_keyworks_mobile/src/core/models/launchpad_entity.dart';
import 'package:desafio_keyworks_mobile/src/core/models/notices_entity.dart';
import 'package:desafio_keyworks_mobile/src/core/repositories/interfaces/ilaunch_repository.dart';
import 'package:desafio_keyworks_mobile/src/core/repositories/interfaces/inews_repository.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../../utils/enums.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  /// Repository related to News
  final INewsRepository _newsRepository;

  /// Repository related to Launch
  final ILaunchRepository _launchRepository;

  /// Simple 'cache' on memory with all latest launch pads selecteds by user
  List<LaunchpadEntity> launchPads = [];

  /// Last launch pad clicked by user
  LaunchpadEntity? lastLaunchpad;
  @observable

  /// The next four launchs
  List<LaunchEntity> launchs = [];

  /// Controller of [NewPageView]
  final newsController = PageController();
  @observable

  /// Current index of [NewPageView]
  int currentIndex = 0;

  /// Verify if has next page
  bool get isCanNextPage => currentIndex < news.length - 1;

  /// Verify if has previous page
  bool get isCanPreviousPage => currentIndex > 0;

  _HomeControllerBase(this._newsRepository, this._launchRepository) {
    getNextLaunchs();
  }

  /// Set index of [NewsPageView]
  @action
  setIndex(int index) {
    currentIndex = index;
  }

  ///Get all news to buil [NewsPageView]
  List<NewsEntity> get news => _newsRepository.getAllNews();

  ///Next page of [NewsPageView]
  nextPage() {
    if (isCanNextPage) {
      newsController.nextPage(
        duration: const Duration(seconds: 1),
        curve: Curves.decelerate,
      );
      setIndex(currentIndex + 1);
    }
  }

  ///Previous page of [NewsPageView]
  previousPage() {
    if (isCanPreviousPage) {
      newsController.previousPage(
        duration: const Duration(seconds: 1),
        curve: Curves.decelerate,
      );
      setIndex(currentIndex + -1);
    }
  }

  @observable
  StatusRequestController statusLaunch = StatusRequestController.loading;

  /// Request the next 4 launchs
  @action
  getNextLaunchs() async {
    statusLaunch = StatusRequestController.loading;
    try {
      launchs = (await _launchRepository.getUpcomingLaunches()).sublist(0, 4);
      statusLaunch = StatusRequestController.done;
    } catch (_) {
      statusLaunch = StatusRequestController.error;
    }
  }

  @observable
  StatusRequestController statusLaunchpad = StatusRequestController.done;
  String? lastLaunchSeleceted;

  /// Request the launchpad by id if the launchpad dont are at [launchPads].
  @action
  getLaunchpadById(LaunchEntity l) async {
    final idLaunchPad = l.idLaunchPad;
    lastLaunchSeleceted = l.id;
    statusLaunchpad = StatusRequestController.loading;
    final find = launchPads.where((launch) => launch.id == idLaunchPad);
    if (find.isEmpty) {
      try {
        final responseLaunchPad = await _launchRepository.getLaunchpadById(idLaunchPad);
        launchPads.add(responseLaunchPad);
        lastLaunchpad = responseLaunchPad;
        statusLaunchpad = StatusRequestController.done;
      } catch (_) {
        statusLaunchpad = StatusRequestController.error;
      }
    } else {
      lastLaunchpad = find.first;
    }
  }
}
