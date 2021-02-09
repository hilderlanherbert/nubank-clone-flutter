import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobx/mobx.dart';
import 'package:nubank_clone/app/modules/home/components/invoice_card/invoice_card_widget.dart';
import 'package:nubank_clone/presentation/nu_icons_icons.dart';

import '../../../home_controller.dart';

class CreditCardWidget extends StatelessWidget {

  //Controller
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
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  right: 0,
                  child: Column(
                    children: <Widget>[
                      colorBarSide(height: 40, color: Colors.orange),
                      colorBarSide(height: 60, color: Color(0xff00bcc8)),
                      colorBarSide(height: double.maxFinite, color: Color(0xff9ed230)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          NuIcons.ic_credit_card_product,
                          color: Colors.black.withOpacity(.5),
                          size: 18,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Observer( builder: (_) =>
                              Text(
                                'Cartão de Crédito',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(.5),
                                    fontSize: homeController.fontSizeCardTitle
                                ),
                              ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                InvoiceCardWidget()
              ],
            ),
          ),
          Container(
            height: 80,
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
                          NuIcons.cat_transporte,
                          color: Colors.black.withOpacity(.6),
                          size: 30,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Observer(builder: (_)=> Text(
                              'Transferência de R\$ 60.000,00 recebida de \nMercado Biticoin S.A segunda',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black.withOpacity(.6),
                                fontSize: homeController.fontSizeCardFooterBottom,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Colors.black.withOpacity(.6),
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

  Widget colorBarSide({@required double height,@required Color color}){
    return Container(
      height: height,
      width: 8,
      color: color,
    );
  }
}
