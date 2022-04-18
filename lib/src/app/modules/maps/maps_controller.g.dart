// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maps_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MapController on _MapControllerBase, Store {
  final _$markersAtom = Atom(name: '_MapControllerBase.markers');

  @override
  ObservableSet<Marker> get markers {
    _$markersAtom.reportRead();
    return super.markers;
  }

  @override
  set markers(ObservableSet<Marker> value) {
    _$markersAtom.reportWrite(value, super.markers, () {
      super.markers = value;
    });
  }

  final _$selectedLaunchPadAtom =
      Atom(name: '_MapControllerBase.selectedLaunchPad');

  @override
  LaunchpadEntity? get selectedLaunchPad {
    _$selectedLaunchPadAtom.reportRead();
    return super.selectedLaunchPad;
  }

  @override
  set selectedLaunchPad(LaunchpadEntity? value) {
    _$selectedLaunchPadAtom.reportWrite(value, super.selectedLaunchPad, () {
      super.selectedLaunchPad = value;
    });
  }

  final _$reloadWithLaunchPadSelectedAsyncAction =
      AsyncAction('_MapControllerBase.reloadWithLaunchPadSelected');

  @override
  Future reloadWithLaunchPadSelected() {
    return _$reloadWithLaunchPadSelectedAsyncAction
        .run(() => super.reloadWithLaunchPadSelected());
  }

  final _$_MapControllerBaseActionController =
      ActionController(name: '_MapControllerBase');

  @override
  dynamic setLaunchPad(LaunchpadEntity l) {
    final _$actionInfo = _$_MapControllerBaseActionController.startAction(
        name: '_MapControllerBase.setLaunchPad');
    try {
      return super.setLaunchPad(l);
    } finally {
      _$_MapControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
markers: ${markers},
selectedLaunchPad: ${selectedLaunchPad}
    ''';
  }
}
