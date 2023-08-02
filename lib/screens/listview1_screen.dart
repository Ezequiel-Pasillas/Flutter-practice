
import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class ListView1Screen extends StatelessWidget {
  
  final options = const ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];

  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('ListView Tipo 1')
      ),
      body: ListView(
        children: [         
           // leading: Icon(Icons.access_time_outlined),
          // title: Text('Titulo de la lista'),            

          ...options.map( // ... Es el operador spread para extraer cada uno de los elementos de esta lista
            (game) => ListTile(
              title: Text(game),// Se recorre la lista y se retorna en el elemento que se especifico
              trailing: const Icon(Icons.arrow_forward_sharp, color: AppTheme.primary),
            ) 
            ).toList() // Se convierte en lista            
          
        ],
      )
    );
  }
}