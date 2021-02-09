import 'package:mobx/mobx.dart';

part 'header_menu_controller.g.dart';

class HeaderMenuController = _HeaderMenuControllerBase
    with _$HeaderMenuController;

abstract class _HeaderMenuControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
