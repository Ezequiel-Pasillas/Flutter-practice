import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? counterText;
  final IconData? icon;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<dynamic, dynamic> formValues;

  const CustomInputField({
    super.key, this.labelText, this.helperText, this.hintText, this.icon, this.suffixIcon, this.counterText, this.prefixIcon, this.keyboardType,
    this.obscureText = false, //? Por defecto se hardcodea en false a menos que se lo envie true
    required this.formProperty, 
    required this.formValues, 
    
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField( //? Tiene más interacciones con un formulario
      autofocus          : true, //? Se centra AUTOMATICAMENTE cuando se  ingresa a la pantalla
      //initialValue       : 'Ezequiel Pasillas', //? Es el texto que aparece en autmatico dentro del input
      textCapitalization : TextCapitalization.words, //? Se hacen mayusculas por cada palabra
      autovalidateMode   : AutovalidateMode.onUserInteraction, //? Se va verificando que cumpla la condicion del validator
      keyboardType: keyboardType, //? Es el tipo de teclado para cada input
      obscureText: obscureText,

      decoration: InputDecoration(

        hintText    : hintText, //? Le indica al usario que va en ese campo
        labelText   : labelText, //? Es el nombre del campo para el usuario
        helperText  : helperText, //? Le ayuda al usuario a saber que se debe de ingresar        
        counterText : counterText == null ? null : '$counterText caracteres', //? Para indicar cuantos caracteres les quedan o ese tipo
        suffixIcon  : prefixIcon == null ? null : Icon(prefixIcon), //? Es el icono del input quer va al final
        prefixIcon  : suffixIcon == null ? null : Icon(suffixIcon), //? Es el icono del input quer va al inicio
        icon        : icon == null ? null : Icon(icon), //? Es el icono que va afuera del input
      ),

      onChanged: (value) {
        formValues[formProperty] = value;
      }, 
      validator: (value) {
        
        if(value == null) return 'Este campo es requerido';

        return value.length <3 ? 'Minimo de 3 letras' : null;
                          
      },

    );
  }
}