import 'package:flutter/material.dart' show IconData, Widget; //Muestra solo ese archivo

class MenuOption{
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOption({
    required this.route, 
    required this.icon,  // Asi se pueden mandar en cualquier orden pero todas son requeridas
    required this.name, 
    required this.screen
  }); // Si son final se deben crear un constructor
}