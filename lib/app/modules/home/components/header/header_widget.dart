import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank_clone/app/app_localizations.dart';
import 'package:nubank_clone/presentation/nu_icons_icons.dart';
import '../../home_controller.dart';

class HeaderWidget extends StatelessWidget {
  final _homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                NuIcons.ic_logo_nu,
                size: 40,
                color: Colors.white,
              ),
              SizedBox(width: 10,),
              Text(
                AppLocalizations.of(context).translate('name'),
                style: TextStyle(
                    fontSize:22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
            ],
          ),
          Observer(builder: (_) =>
              Icon(
                _homeController.swipedCard ? NuIcons.nuds_ic_chevron_up : NuIcons.nuds_ic_chevron_down,
                color: Colors.white.withOpacity(.4),
                size: 25,
              ),
          ),
        ],
      ),
    );
  }
}
