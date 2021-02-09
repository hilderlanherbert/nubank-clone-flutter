import 'package:mobx/mobx.dart';

part 'balance_controller.g.dart';

class BalanceController = _BalanceControllerBase with _$BalanceController;

abstract class _BalanceControllerBase with Store{
  @observable
  bool hidden = true;


  @action
  void showBalance() {
    hidden = !hidden;
  }
}
