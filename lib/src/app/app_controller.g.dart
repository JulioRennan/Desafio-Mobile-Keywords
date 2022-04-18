// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppControllerBase, Store {
  Computed<bool>? _$isLoggedComputed;

  @override
  bool get isLogged =>
      (_$isLoggedComputed ??= Computed<bool>(() => super.isLogged,
              name: '_AppControllerBase.isLogged'))
          .value;

  final _$_appEntityAtom = Atom(name: '_AppControllerBase._appEntity');

  @override
  AppConfigEntity? get _appEntity {
    _$_appEntityAtom.reportRead();
    return super._appEntity;
  }

  @override
  set _appEntity(AppConfigEntity? value) {
    _$_appEntityAtom.reportWrite(value, super._appEntity, () {
      super._appEntity = value;
    });
  }

  final _$setIsLoggedAsyncAction =
      AsyncAction('_AppControllerBase.setIsLogged');

  @override
  Future setIsLogged(bool value) {
    return _$setIsLoggedAsyncAction.run(() => super.setIsLogged(value));
  }

  @override
  String toString() {
    return '''
isLogged: ${isLogged}
    ''';
  }
}
