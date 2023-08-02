

import 'package:flutter/material.dart';
import 'package:flutter_components2/themes/app_theme.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy',
    'Pokemon'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 2'),
          elevation: 10, // Sombra
          
          ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile( // Builder = Construye algun elemento
            title: Text(options[index]), // Es el nombre de cada elemento                         
            trailing: const Icon(Icons.arrow_forward_sharp, color: AppTheme.primary), // Se le agrega un icogo
            onTap: () { // Se le agrega la funcion de presionado
              final game = options[index]; // Se obtiene el valor del boton que esta presionando
              print(game);

            },
            ), 
            itemCount: options.length, // Se crea la lista dependiendo de su tamaño
            separatorBuilder: (_, __) => const Divider(), // Son separadores que estan entre cada elemento de la lista
            
      )
    );
  }
}
