import 'package:mobx/mobx.dart';

part 'credit_card_controller.g.dart';

class CreditCardController = _CreditCardControllerBase
    with _$CreditCardController;

abstract class _CreditCardControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
