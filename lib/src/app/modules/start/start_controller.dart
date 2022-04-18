import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'start_controller.g.dart';

class StartController = _StartBaseController with _$StartController;

abstract class _StartBaseController with Store implements Disposable {
  final pageController = PageController();

  @observable
  int currentPage = 0;

  @action
  setPage(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(seconds: 1),
      curve: Curves.ease,
    );
    currentPage = index;
  }

  @override
  void dispose() {
    pageController.dispose();
  }
}
