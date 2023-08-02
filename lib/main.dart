import 'package:flutter/material.dart';
import 'package:flutter_components2/router/app_routes.dart';
import 'package:flutter_components2/screens/screens.dart';
import 'package:flutter_components2/themes/app_theme.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ListView2Screen(),
      initialRoute: AppRoutes.intialRoute, // ? Se declara cual es la ruta inicial de la aplicacion, se accede de manera statica a Approutes
      routes: AppRoutes.getAppRouter(),// ? Se inicia el ruteo de las paginas
      onGenerateRoute: AppRoutes.onGenerateRoute,
      
      theme: AppTheme.darkTheme
    );    
  }
}
