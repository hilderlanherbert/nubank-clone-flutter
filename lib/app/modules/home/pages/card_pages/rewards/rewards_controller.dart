import 'package:mobx/mobx.dart';

part 'rewards_controller.g.dart';

class RewardsController = _RewardsControllerBase with _$RewardsController;

abstract class _RewardsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
