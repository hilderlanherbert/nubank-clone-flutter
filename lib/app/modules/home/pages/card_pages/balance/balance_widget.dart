import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank_clone/app/app_localizations.dart';
import 'package:nubank_clone/app/modules/home/pages/card_pages/balance/balance_controller.dart';
import 'package:nubank_clone/presentation/nu_icons_icons.dart';

import '../../../home_controller.dart';

class BalanceWidget extends StatelessWidget{


  //controller
  BalanceController _balanceController = Modular.get();
  HomeController homeController = Modular.get();


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10,10,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              NuIcons.ic_money_coins,
                              color: Colors.black.withOpacity(.5),
                              size: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Observer(builder: (_)=> Text(
                                'Conta',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(.5),
                                    fontSize: homeController.fontSizeCardTitle
                                ),
                              ),
                              ),
                            )
                          ],
                        ),
                        ClipOval(
                          child: Container(
                            width: 60,
                            height: 60,
                            child: FlatButton(
                              onPressed: () => _balanceController.showBalance(),
                              child: Observer(builder: (_) => Icon(_balanceController.hidden ? NuIcons.ic_cc_balance_visible : NuIcons.ic_cc_balance_invisible, size: 20,)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            'Saldo disponível',
                            style: TextStyle(
                              color: Colors.black.withOpacity(.5),
                              fontSize: 15
                            ),
                          ),
                        ),
                        Observer(
                          builder: (_){
                            return AnimatedCrossFade(
                              alignment: Alignment.centerLeft,
                              crossFadeState: _balanceController.hidden ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                              firstCurve: Curves.bounceInOut,
                              duration: const Duration(milliseconds: 200),
                              firstChild: Container(
                                height: 35,
                                width: 250,
                                color: Colors.black.withOpacity(.08),
                              ),
                              secondChild: Container(
                                height: 35,
                                width: 250,
                                child: Text(
                                  AppLocalizations.of(context).translate('balance'),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30
                                  ),
                                ),
                              ) ,
                            );
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 90,
            child: FlatButton(
              color: Colors.black.withOpacity(.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          NuIcons.ic_savings_global_action_transfer_in,
                          color: Colors.purple,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Observer(builder: (_) => Text(
                              'Transferência de R\$ 98.177,43 recebida de \nMercado Biticoin S.A hoje',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: homeController.fontSizeCardFooterBottom,
                                  fontWeight: FontWeight.normal
                              ),
                            ),
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                  )
                ],
              ),
              onPressed: (){},
            ),
          )
        ],
      ),
    );
  }
}
