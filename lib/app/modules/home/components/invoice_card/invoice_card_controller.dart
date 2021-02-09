import 'package:mobx/mobx.dart';

part 'invoice_card_controller.g.dart';

class InvoiceCardController = _InvoiceCardControllerBase
    with _$InvoiceCardController;

abstract class _InvoiceCardControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
