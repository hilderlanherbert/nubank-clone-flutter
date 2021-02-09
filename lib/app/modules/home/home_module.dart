import 'package:nubank_clone/app/modules/home/pages/account/account_page.dart';
import 'pages/account/account_controller.dart';
import 'package:nubank_clone/app/modules/home/components/invoice_card/invoice_card_controller.dart';
import 'package:nubank_clone/app/modules/home/pages/card_pages/credit_card/credit_card_controller.dart';
import 'package:nubank_clone/app/modules/home/components/header_menu/header_menu_controller.dart';
import 'package:nubank_clone/app/modules/home/pages/card_pages/balance/balance_controller.dart';
import 'package:nubank_clone/app/modules/home/pages/card_pages/rewards/rewards_controller.dart';
import 'package:nubank_clone/app/modules/home/components/animations/slider_widget/slider_widget_controller.dart';
import 'package:nubank_clone/app/modules/home/components/header/header_controller.dart';
import 'package:nubank_clone/app/modules/home/components/center_card/center_card_controller.dart';
import 'package:nubank_clone/app/modules/home/components/tab_menu/tab_menu_controller.dart';
import 'package:nubank_clone/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank_clone/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AccountController()),
        Bind((i) => InvoiceCardController()),
        Bind((i) => CreditCardController()),
        Bind((i) => HeaderMenuController()),
        Bind((i) => BalanceController()),
        Bind((i) => RewardsController()),
        Bind((i) => SliderWidgetController()),
        Bind((i) => HeaderController()),
        Bind((i) => CenterCardController()),
        Bind((i) => TabMenuController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage(),),
        Router('/account', child: (_, args) => AccountPage(),),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
