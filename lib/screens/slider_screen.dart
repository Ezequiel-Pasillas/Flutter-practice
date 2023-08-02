import 'package:flutter/material.dart';
import 'package:flutter_components2/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 0;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider & Chekcs"),
      ),
      body: Column(
        children: [
          
          Slider.adaptive( //? Se utliza .adaptative para que se adapate dependiendo de la plataforma
            min : 0,
            max: 1600,
            activeColor: AppTheme.primary,
            divisions: 10, //? Le agrega puntos de anclaje y tiene valores fijos
            value: _sliderValue, //? Es par aque se vaya almacenando el valor del slider
            label: _sliderValue.toInt().toString(), //? Le da un texto ecuando se recorre el slider
      
      
            onChanged: _sliderEnable ? (value) {
              _sliderValue = value; //? Con este codigo se va redibujando y se puede mover visualmente el slider
              setState(() {});
            }
            : null
          ),

          Checkbox(
            value: _sliderEnable, 
            activeColor: AppTheme.primary,
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});

            }
          ),

          CheckboxListTile(
            value: _sliderEnable,             
            title: const Text('Habilitar Slider'),
            activeColor: AppTheme.primary,
            onChanged: (value) {
              _sliderEnable = value ?? true;    
              setState(() {});          
            },
          ),

          Switch(
            value: _sliderEnable,                         
            activeColor: AppTheme.primary,
            onChanged: (value) {
              _sliderEnable = value ?? true;    
              setState(() {});          
            },
            ),
      
          Expanded( //? Toma todo el tamaño posible de la pantalla
            child: SingleChildScrollView( //? Se adapta para que se pueda hacer scroll si sobre pasa el tamaño de la pantalla
              child: Image(
                image: const NetworkImage('https://www.pngmart.com/files/12/Miles-PNG-Image.png'),
                fit: BoxFit.contain,            
                height: _sliderValue,
                width: _sliderValue,
                ),
            ),
          ),
            
        ]
      ),
    );
  }
}
