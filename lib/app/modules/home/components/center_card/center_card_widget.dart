import 'package:flutter/material.dart';
import 'package:nubank_clone/app/modules/home/components/center_card/center_card_controller.dart';
import 'package:nubank_clone/app/modules/home/pages/card_pages/balance/balance_widget.dart';
import 'package:nubank_clone/app/modules/home/pages/card_pages/credit_card/credit_card_widget.dart';
import 'package:nubank_clone/app/modules/home/pages/card_pages/rewards/rewards_widget.dart';

class CenterCardWidget extends StatefulWidget {

  @override
  _CenterCardWidgetState createState() => _CenterCardWidgetState();
}

class _CenterCardWidgetState extends State<CenterCardWidget> {
  List<Widget> cardPages = [
    CreditCardWidget(),
    SizedBox(height: 15),
    BalanceWidget(),
    SizedBox(height: 15),
    RewardsWidget(),

  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height:420,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: cardPages.length,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,),
              child: cardPages[index],
            );
          },
        ),
//        child: ListView(
//          padding: EdgeInsets.only(left: 30, right: 30),
//          children: cardPages
//        )
      ),
    );
  }
}
