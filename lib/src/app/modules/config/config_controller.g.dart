// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConfigController on _ConfigControllerBase, Store {
  final _$isDarkThemeAtom = Atom(name: '_ConfigControllerBase.isDarkTheme');

  @override
  bool get isDarkTheme {
    _$isDarkThemeAtom.reportRead();
    return super.isDarkTheme;
  }

  @override
  set isDarkTheme(bool value) {
    _$isDarkThemeAtom.reportWrite(value, super.isDarkTheme, () {
      super.isDarkTheme = value;
    });
  }

  final _$langueSelectedAtom =
      Atom(name: '_ConfigControllerBase.langueSelected');

  @override
  String get langueSelected {
    _$langueSelectedAtom.reportRead();
    return super.langueSelected;
  }

  @override
  set langueSelected(String value) {
    _$langueSelectedAtom.reportWrite(value, super.langueSelected, () {
      super.langueSelected = value;
    });
  }

  final _$statusUserConfigAtom =
      Atom(name: '_ConfigControllerBase.statusUserConfig');

  @override
  StatusRequestController get statusUserConfig {
    _$statusUserConfigAtom.reportRead();
    return super.statusUserConfig;
  }

  @override
  set statusUserConfig(StatusRequestController value) {
    _$statusUserConfigAtom.reportWrite(value, super.statusUserConfig, () {
      super.statusUserConfig = value;
    });
  }

  final _$_ConfigControllerBaseActionController =
      ActionController(name: '_ConfigControllerBase');

  @override
  dynamic setDarkTheme(bool value) {
    final _$actionInfo = _$_ConfigControllerBaseActionController.startAction(
        name: '_ConfigControllerBase.setDarkTheme');
    try {
      return super.setDarkTheme(value);
    } finally {
      _$_ConfigControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isDarkTheme: ${isDarkTheme},
langueSelected: ${langueSelected},
statusUserConfig: ${statusUserConfig}
    ''';
  }
}
