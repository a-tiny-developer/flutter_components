import 'package:flutter/material.dart';

import '../screens/screens.dart';
import '../models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static const menuOptions = <MenuOption>[
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
    MenuOption(
      route: 'avatar',
      name: 'Circle Avatar',
      screen: AvatarScreen(),
      icon: Icons.supervised_user_circle_outlined,
    ),
    MenuOption(
      route: 'animated',
      name: 'Animated Screen',
      screen: AnimatedScreen(),
      icon: Icons.play_circle_outline_rounded,
    ),
    MenuOption(
      route: 'inputs',
      name: 'Text Inputs',
      screen: InputsScreen(),
      icon: Icons.input_rounded,
    ),
    MenuOption(
      route: 'slider',
      name: 'Slider & Checks',
      screen: SliderScreen(),
      icon: Icons.sledding_rounded,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    final appRoutes = <String, Widget Function(BuildContext)>{};
    appRoutes
        .addAll({initialRoute: (BuildContext context) => const HomeScreen()});
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
