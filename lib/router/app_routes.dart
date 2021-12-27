import 'package:flutter/material.dart';

import '../screens/screens.dart';
import '../models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static const menuOptions = <MenuOption>[
    // TODO: delete home
    MenuOption(
      route: 'home',
      name: 'Home Screen',
      screen: HomeScreen(),
      icon: Icons.home,
    ),
    MenuOption(
      route: 'listview1',
      name: 'Listview type 1',
      screen: ListView1Screen(),
      icon: Icons.list,
    ),
    MenuOption(
      route: 'listview2',
      name: 'Listview type 2',
      screen: ListView2Screen(),
      icon: Icons.list_alt,
    ),
    MenuOption(
      route: 'alert',
      name: 'Alerts',
      screen: AlertScreen(),
      icon: Icons.add_alert_outlined,
    ),
    MenuOption(
      route: 'card',
      name: 'Cards',
      screen: CardScreen(),
      icon: Icons.credit_card,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    final appRoutes = <String, Widget Function(BuildContext)>{};
    for (final option in menuOptions) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen,
      });
    }
    return appRoutes;
  }

  // static final Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) {
        return const AlertScreen();
      },
    );
  }
}
