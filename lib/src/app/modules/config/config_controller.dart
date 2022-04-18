import 'package:desafio_keyworks_mobile/src/core/models/user_config_entity.dart';
import 'package:desafio_keyworks_mobile/src/core/repositories/interfaces/iuser_repository.dart';
import 'package:desafio_keyworks_mobile/src/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'config_controller.g.dart';

class ConfigController = _ConfigControllerBase with _$ConfigController;

abstract class _ConfigControllerBase with Store {
  final userFieldController = TextEditingController();
  final IUserRepository _userRepository;
  @observable
  bool isDarkTheme = false;

  @observable
  late String langueSelected = languageOptions[0];

  _ConfigControllerBase(this._userRepository) {
    getUserConfig();
  }

  @action
  setDarkTheme(bool value) {
    isDarkTheme = value;
  }

  List<String> get languageOptions => _userRepository.getLanguagesOptions();

  @observable
  StatusRequestController statusUserConfig = StatusRequestController.loading;

  getUserConfig() async {
    try {
      final userEntity = (await _userRepository.getUserConfig())!;
      userFieldController.text = userEntity.name;
      isDarkTheme = userEntity.isDarkTheme;
      langueSelected = userEntity.language;
      statusUserConfig = StatusRequestController.done;
    } catch (_) {
      statusUserConfig = StatusRequestController.error;
    }
  }

  Future<void> saveUserConfig() {
    final userConfigToSave = UserConfigEntity(
      name: userFieldController.text,
      isDarkTheme: isDarkTheme,
      language: langueSelected,
    );
    return _userRepository.saveUserConfig(userConfigToSave);
  }
}
