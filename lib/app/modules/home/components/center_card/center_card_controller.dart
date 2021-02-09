import 'package:mobx/mobx.dart';

part 'center_card_controller.g.dart';

class CenterCardController = _CenterCardControllerBase
    with _$CenterCardController;

abstract class _CenterCardControllerBase with Store {


  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
