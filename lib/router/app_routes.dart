import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: BORRAR home
    // MenuOption(
    //   route: 'home',
    //   icon: Icons.home,
    //   name: 'Home Screen',
    //   screen: const HomeScreen(),
    // ),
    MenuOption(
      route: 'listview1',
      icon: Icons.list,
      name: 'Listview tipo 1',
      screen: const Listview1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      icon: Icons.list_sharp,
      name: 'Listview tipo 2',
      screen: const Listview2Screen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.card_travel,
      name: 'Tarjetas - Cards',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.align_vertical_center,
      name: 'Alertas - Alerts',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.person,
      name: 'Circle Avatar',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'animater',
      icon: Icons.play_circle_outline_rounded,
      name: 'Animated Container',
      screen: const AnimatedScreen(),
    ),
    MenuOption(
      route: 'inputs',
      icon: Icons.input_outlined,
      name: 'Text Inputs',
      screen: const InputsScreen(),
    ),
    MenuOption(
      route: 'slider',
      icon: Icons.slideshow_outlined,
      name: 'Sliders && Checks',
      screen: const SliderScreen(),
    ),
    MenuOption(
      route: 'listviewbuilder',
      icon: Icons.build_circle_outlined,
      name: 'Infinite && Pull to refresh',
      screen: const ListViewBuilderScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const Listview1Screen(),
    );
  }
}
