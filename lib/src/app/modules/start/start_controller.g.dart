// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StartController on _StartBaseController, Store {
  final _$currentPageAtom = Atom(name: '_StartBaseController.currentPage');

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  final _$_StartBaseControllerActionController =
      ActionController(name: '_StartBaseController');

  @override
  dynamic setPage(int index) {
    final _$actionInfo = _$_StartBaseControllerActionController.startAction(
        name: '_StartBaseController.setPage');
    try {
      return super.setPage(index);
    } finally {
      _$_StartBaseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage}
    ''';
  }
}
