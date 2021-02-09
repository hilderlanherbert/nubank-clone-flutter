import 'package:mobx/mobx.dart';

part 'tab_menu_controller.g.dart';

class TabMenuController = _TabMenuControllerBase with _$TabMenuController;

abstract class _TabMenuControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
