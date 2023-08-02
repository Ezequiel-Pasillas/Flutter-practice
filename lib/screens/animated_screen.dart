import 'dart:math';

import 'package:flutter/material.dart';

class animatedScreen extends StatefulWidget {
   
  const animatedScreen({Key? key}) : super(key: key);

  @override
  State<animatedScreen> createState() => _animatedScreenState();
}

class _animatedScreenState extends State<animatedScreen> {
  double _width = 50; //? Con el _ se hace una propiedad privada
  double _height = 50;
  Color _color = Colors.deepOrange.shade900;
  BorderRadiusGeometry _borderRadius  = BorderRadius.circular(10);

  void changedShape(){
    final random = Random();  

    _width = random.nextInt(300).toDouble() + 70;
    _height = random.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
      random.nextInt(255), 
      random.nextInt(255),
      random.nextInt(255), 
      random.nextDouble());
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 10);


    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      body: Center(
        child: AnimatedContainer(     
          duration: const Duration( milliseconds: 300),    
          curve: Curves.easeInBack,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ), 
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changedShape();
        },

        child: const Icon(Icons.play_circle_fill_outlined, size: 35,),
      ),
    );
  }
}