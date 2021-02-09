import 'package:flutter/animation.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {


  @observable
  double fontSizeCardTitle = 14;
  @observable
  double fontSizeCardFooterBottom = 12;

  @observable
  double posY = 0;

  @observable
  bool swipedCard = false;

  @action
  void swipeCard(){
    swipedCard = !swipedCard;
  }
}
