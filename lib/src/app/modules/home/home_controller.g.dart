// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$launchsAtom = Atom(name: '_HomeControllerBase.launchs');

  @override
  List<LaunchEntity> get launchs {
    _$launchsAtom.reportRead();
    return super.launchs;
  }

  @override
  set launchs(List<LaunchEntity> value) {
    _$launchsAtom.reportWrite(value, super.launchs, () {
      super.launchs = value;
    });
  }

  final _$currentIndexAtom = Atom(name: '_HomeControllerBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  final _$statusLaunchAtom = Atom(name: '_HomeControllerBase.statusLaunch');

  @override
  StatusRequestController get statusLaunch {
    _$statusLaunchAtom.reportRead();
    return super.statusLaunch;
  }

  @override
  set statusLaunch(StatusRequestController value) {
    _$statusLaunchAtom.reportWrite(value, super.statusLaunch, () {
      super.statusLaunch = value;
    });
  }

  final _$statusLaunchpadAtom =
      Atom(name: '_HomeControllerBase.statusLaunchpad');

  @override
  StatusRequestController get statusLaunchpad {
    _$statusLaunchpadAtom.reportRead();
    return super.statusLaunchpad;
  }

  @override
  set statusLaunchpad(StatusRequestController value) {
    _$statusLaunchpadAtom.reportWrite(value, super.statusLaunchpad, () {
      super.statusLaunchpad = value;
    });
  }

  final _$getNextLaunchsAsyncAction =
      AsyncAction('_HomeControllerBase.getNextLaunchs');

  @override
  Future getNextLaunchs() {
    return _$getNextLaunchsAsyncAction.run(() => super.getNextLaunchs());
  }

  final _$getLaunchpadByIdAsyncAction =
      AsyncAction('_HomeControllerBase.getLaunchpadById');

  @override
  Future getLaunchpadById(LaunchEntity l) {
    return _$getLaunchpadByIdAsyncAction.run(() => super.getLaunchpadById(l));
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic setIndex(int index) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setIndex');
    try {
      return super.setIndex(index);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
launchs: ${launchs},
currentIndex: ${currentIndex},
statusLaunch: ${statusLaunch},
statusLaunchpad: ${statusLaunchpad}
    ''';
  }
}
