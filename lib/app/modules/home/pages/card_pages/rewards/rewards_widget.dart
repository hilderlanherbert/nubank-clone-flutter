import 'package:flutter/material.dart';
import 'package:nubank_clone/presentation/nu_icons_icons.dart';

class RewardsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 20,bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Center(
                  child: Icon(
                    NuIcons.ic_rewards_product_card,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30,bottom: 10),
                  child: Text(
                    'Nubank Rewards',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40),
                  child: Text(
                    'Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usa.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width /100 * 75,
              child: FlatButton(
                onPressed: (){},
                child: Text(
                  'ATIVE O SEU REWARDS',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 14
                  ),
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.deepPurple
                  ),
                  borderRadius: BorderRadius.circular(3),

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
