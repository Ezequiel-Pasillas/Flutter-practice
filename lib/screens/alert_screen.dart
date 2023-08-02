import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components2/themes/app_theme.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible:
            false, //? La funcion que tiene es que si se presiona en la sombre se puede cerrar el dialogo, en false no se puede cerrar
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Titulo"),
            content: const Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Este es el contenido de la alerta"),
                  SizedBox(
                    height: 15,
                  ),
                  FlutterLogo(
                    size: 100,
                  )
                ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancelar"))
            ],
          );
        });
  }

  void displayDialogIos(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return  CupertinoAlertDialog(
            title: const Text("Titulo"),
            content: const Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Este es el contenido de la alerta"),
                  SizedBox(
                    height: 15,
                  ),
                  FlutterLogo(
                    size: 100,
                  )
                ]
              ),
              actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancelar", style: TextStyle(color: AppTheme.primary),)),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Ok", style: TextStyle(color: Colors.blue),)),
            ],
          );
        }
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () => Platform.isAndroid 
              ? displayDialogAndroid(context)
              : displayDialogIos(context), //? Se manda a llamar a la funcion

        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Text(
            'Mostrar alerta',
            style: TextStyle(fontSize: 16),
          ),
        ),
      )),
    );
  }
}
