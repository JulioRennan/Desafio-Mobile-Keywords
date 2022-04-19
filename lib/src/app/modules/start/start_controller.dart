import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'start_controller.g.dart';

class StartController = _StartBaseController with _$StartController;

abstract class _StartBaseController with Store {
  @observable
  int currentPage = 0;

  @action
  navigatoIndex(int index) {
    switch (index) {
      case 0:
        Modular.to.navigate('/start/home');
        break;
      case 1:
        Modular.to.navigate('/start/maps');
        break;
      case 2:
        Modular.to.navigate('/start/config');
        break;
    }
    currentPage = index;
  }
}
