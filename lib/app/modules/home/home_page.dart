import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank_clone/app/modules/home/components/animations/slider_widget/slider_widget_page.dart';
import 'package:nubank_clone/app/modules/home/components/center_card/center_card_widget.dart';
import 'package:nubank_clone/app/modules/home/components/header/header_widget.dart';
import 'package:nubank_clone/app/modules/home/components/header_menu/header_menu_widget.dart';
import 'package:nubank_clone/app/modules/home/components/tab_menu/tab_menu_widget.dart';
import 'package:nubank_clone/presentation/nu_icons_icons.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  final double screenHeight;
  const HomePage({Key key, this.title = "Home", this.screenHeight}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> with SingleTickerProviderStateMixin {
  //use 'controller' variable to access controller

  AnimationController animationController;

  Animation<double> opacity;
  Animation<double> reverseOpacity;
  Animation<double> bottom;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
        duration: new Duration(milliseconds: 200), vsync: this);

    opacity = new Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(
          0.1,0.2,
          curve: Curves.linear
        ),
      ),
    );

    reverseOpacity = new Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(
            0.0,1,
            curve: Curves.linear
        ),
      ),
    );

    bottom = new Tween<double>(
      begin: 0.0,
      end: 490,
    ).animate(
      new CurvedAnimation(
        parent: animationController,
        curve: Curves.linear,
      ),
    );
  }

  Future<Null> _swipeAnimation() async {
    if(animationController.status == AnimationStatus.dismissed){
      animationController.forward();
      controller.swipeCard();
    }
    else{
      animationController.reverse();
      controller.swipeCard();
    }
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF81269F),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    _swipeAnimation();
                  },//_swipeAnimation,
                  child: HeaderWidget()
                ),
                FadeTransition(
                  opacity: reverseOpacity,
                  child: HeaderMenuWidget(),
                )
                //HeaderMenuWidget(),
              ],
            ),
          ),
          SliderWidget(
            offset: Offset(.6,0),
            interval: Interval(0.2,1.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FadeTransition(
                opacity: opacity,
                child: Observer(builder: (_) =>
                    IgnorePointer(
                      ignoring: controller.swipedCard,
                      child: TabMenuWidget(),
                    ),
                )
              )
            ),
          ),
          SliderWidget(
            offset:Offset(.4,0),
            interval: Interval(0.0,1),
            child: AnimatedBuilder(
              animation: animationController,
              builder: (BuildContext context , Widget child){
                return Transform.translate(
                  offset: Offset(0,bottom.value),
                  child: CenterCardWidget(),
                );
              },
            ),
          ),
        ],
      )
    );
  }
}
