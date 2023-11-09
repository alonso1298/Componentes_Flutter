import 'package:flutter/material.dart';

import 'package:fl_components/Models/models.dart';

import 'package:fl_components/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // borrar home 
    //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_filled ),
    MenuOption(route: 'lisview1', name: 'List view tipo 1', screen: Listview1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'lisview 2', name: 'List view tipo 2', screen: Listview2Screen(), icon: Icons.list),
    MenuOption(route: 'alert', name: 'Alerta', screen: const AlertScreen(), icon: Icons.list_sharp),
    MenuOption(route: 'card', name: 'Tarjetas - Cards', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_outlined),
    MenuOption(route: 'slider', name: 'Slider and Checks', screen: const SliderScreen(), icon: Icons.slow_motion_video_rounded),
    MenuOption(route: 'listviewbuilder', name: 'Infinite Scroll & Pull to refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home' : (BuildContext context) => const HomeScreen(),});


    for (final option in menuOptions){
      appRoutes.addAll({option.route : (BuildContext context) => option.screen,});
    }

    return appRoutes;
  }

  //static Map<String, Widget Function(BuildContext)> routes = {
  //    'home'     : (BuildContext context) => const HomeScreen(),
  //    'listview1': (BuildContext context) => Listview1Screen(),
  //    'listview2': (BuildContext context) => Listview2Screen(),
  //    'alert'    : (BuildContext context) => const AlertScreen(),
  //    'card'     : (BuildContext context) => const CardScreen(),
  //};

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
  }
}
