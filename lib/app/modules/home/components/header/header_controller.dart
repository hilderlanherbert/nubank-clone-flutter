import 'package:mobx/mobx.dart';

part 'header_controller.g.dart';

class HeaderController = _HeaderControllerBase with _$HeaderController;

abstract class _HeaderControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
