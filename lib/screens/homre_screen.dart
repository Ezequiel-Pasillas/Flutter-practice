import 'package:flutter/material.dart';
import 'package:flutter_components2/router/app_routes.dart';
import 'package:flutter_components2/themes/app_theme.dart';

class HomreScreen extends StatelessWidget {

  
  const HomreScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOption = AppRoutes.menuOptions.toList();

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: 
      ListView.separated(
        itemBuilder: (context, index) =>  ListTile(
          title: Text(menuOption[index].name),
          leading: Icon(menuOption[index].icon, color: AppTheme.primary),
          onTap: () {
            
           // final route = MaterialPageRoute(builder: (context) => const ListView1Screen()); // ? Se crea la ruta a la cual va dirigiri cuando se presione el boton 

           // Navigator.push(context, route); //? Context = Funciona como una memoria par asaber como esta formada la aplicacion hasta ese punto 

          Navigator.pushNamed(context, menuOption[index].route);  // ? Es una mejor manera de navegar, porque se pueden utilizar las rutas ya creadas en el main y se pueden mandar argumentos

          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: menuOption.length  
        )
    );
  }
}