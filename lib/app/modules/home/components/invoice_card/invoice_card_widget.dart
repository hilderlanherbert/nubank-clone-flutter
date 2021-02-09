import 'package:flutter/material.dart';
import 'package:nubank_clone/app/app_localizations.dart';

class InvoiceCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20,top: 14),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'FATURA ATUAL',
              style: TextStyle(
                color: Color(0xff00bbca),
                fontSize: 12,
                fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: 5,),
            Row(
              children: <Widget>[
                Text(
                  'R\$ ',
                  style: TextStyle(
                    color: Color(0xff00bbca),
                    fontSize: 30,
                    fontWeight: FontWeight.w300
                  ),
                ),
                Text(
                    AppLocalizations.of(context).translate('credit_card_debit'),
                  style: TextStyle(
                    color: Color(0xff00bbca),
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: <Widget>[
                Text(
                  'Limite disponivel ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'R\$ 8.955,18',
                  style: TextStyle(
                    color: Color(0xffa0d03b),
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
