import 'package:flutter/material.dart';
import 'package:flutter_components2/models/models.dart';
import 'package:flutter_components2/screens/screens.dart';

import '../screens/alert_screen.dart';
import '../screens/card_screen.dart';
import '../screens/homre_screen.dart';
import '../screens/listview1_screen.dart';
import '../screens/llistview2_screen.dart';

class AppRoutes {
  static const intialRoute = 'home';

  static final menuOptions = <MenuOption>{ // Se crean rutas mejor estructuras llamando a los metodos de MenuOption
    // ! Borrar home
    //MenuOption(route: 'home',         icon: Icons.home,          name: 'Home Screen',       screen          : const HomreScreen()),
    MenuOption(route: 'listview1',    icon: Icons.list,          name: 'List View Tipo 1',  screen             : const ListView1Screen()),
    MenuOption(route: 'listview2',    icon: Icons.list_alt,      name: 'List View Tipo 2',  screen             : const ListView2Screen()),
    MenuOption(route: 'alertscreen',  icon: Icons.add_alert,     name: 'Alerts',            screen             : const AlertScreen()),
    MenuOption(route: 'cardscreen',   icon: Icons.credit_card,   name: 'Card Screen',       screen             : const CardScreen()),
    MenuOption(route: 'avatarscreen', icon: Icons.supervisor_account_rounded, name: 'Avatar Screen', screen    : const AvatarScreen()),
    MenuOption(route:'animatedscreen',icon: Icons.play_circle_filled_sharp, name: 'Animated Container', screen : const animatedScreen()),
    MenuOption(route: 'inputsscreen', icon: Icons.input, name: 'Input Screen', screen                          : const InputsScreen()),
    MenuOption(route: 'sliderscreen', icon: Icons.slideshow_rounded, name: 'Slider Screen', screen             : const SliderScreen()),

  }; //? <MenuOption> []

  static Map<String, Widget Function(BuildContext)> getAppRouter(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home' : (BuildContext context) => const HomreScreen() });
      
      for(final option in menuOptions){
        appRoutes.addAll({ option.route : (BuildContext context) => option.screen });
      } 

    return appRoutes;
  }  

  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home'        : (context) => const HomreScreen(),
  //       'listview1'   : (BuildContext context) => const ListView1Screen(),
  //       'listview2'   : (BuildContext context) => const ListView2Screen(),
  //       'alertscreen' : (context) => const AlertScreen(),
  //       'cardscreen'  : (context) => const CardScreen()
  // }; //! Si funciona, se puede usar el que quieras

  static Route<dynamic> onGenerateRoute(RouteSettings settings) { //? Se utiliza cuando se trabaja con rutas dinamicas que se van creando cuando se utiliza la aplicacion
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}