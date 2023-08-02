import 'package:flutter/material.dart';
import 'package:flutter_components2/themes/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? description;


  const CustomCardType2({super.key, required this.imageUrl, this.description});

  @override
  Widget build(BuildContext context) {    
    return  Card(
      clipBehavior: Clip.antiAlias, //? Se redondean los bordes de la tarjeta
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)), //? Se redondea aun mas los cards
      elevation: 30, //? Se le agrega una sombra
      shadowColor: AppTheme.primary.withOpacity(0.5), //? Se le cambia el color de la sombra. withOpacity = cambia la opacidad de la sombra
      child: Column(
        children: [
          
           FadeInImage( //? Se usa para cuando se tarda un poco en cargar la imagen
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/loading.gif'), 
            width: double.infinity, //? Cuando carga la imagen, toma todo el ancho de la pantalla disponible dentro de su contenedor
            height: 230, //? Toma una altura predeterminada
            fit: BoxFit.cover, //? La imagen se adapta a su widget
            fadeInDuration: const Duration(milliseconds: 300), //?Hace que la imagen aparezca ms rapido
            ),

            if( description != null) //? Si la description no viene nulo se hace este contenedor
            Container(
              alignment: AlignmentDirectional.centerEnd, //? Alinea el texto a la derecha o los objetos dentro del contenedorS
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10), //? Se le agrga un espacio para acomodar visualmente
              child: Text(description!) //? Se usa esta expresion solo para verificar que no venga nulo, pero si es necesario si se utiliza el if
              ), 
        ],
      ),
    );
  }
}
