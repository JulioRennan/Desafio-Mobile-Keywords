import 'package:desafio_keyworks_mobile/src/core/models/app_config_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../core/repositories/interfaces/iapp_repository.dart';
part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  final IAppRepository _appRepository;
  _AppControllerBase(this._appRepository);

  @observable
  AppConfigEntity? _appEntity;

  @computed
  bool get isLogged => _appEntity?.isLogged ?? false;

  @action
  setIsLogged(bool value) async {
    _appEntity?.isLogged = true;
    await saveAppConfig();
  }
  /// Get if the user is logged or not
  Future<void> _getAppConfig() async {
    try {
      _appEntity = await _appRepository.getAppConfig() ??
          AppConfigEntity(isLogged: false);
    } catch (_) {
      _appEntity = AppConfigEntity(isLogged: false);
    }
  }
  /// Set isLogged with false value
  Future<void> saveAppConfig() async {
    try {
      await _appRepository.saveAppConfig(_appEntity!);
    } catch (_) {
      _appEntity = AppConfigEntity(isLogged: false);
    }
  }

  navigateToInitialPage() async {
    await _getAppConfig();
    if (isLogged) {
      Modular.to.navigate('/start/home');
    } else {
      Modular.to.navigate('/login');
    }
  }
}
