import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.red;
  static const double elevation = 10;
  
  static final ThemeData lightTheme = ThemeData.light().copyWith( //? Configurar el tema de toda la aplicacion
        primaryColor: Colors.blueGrey.shade700 ,//? Color primario
        
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: elevation
        ),

        //? TextButton Theme

        textButtonTheme:  TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary) 
        ),

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary
        ),

        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(primary)            
          )
        ),

        inputDecorationTheme: const InputDecorationTheme(
          
          floatingLabelStyle: TextStyle( //? El color del nombre del input
            color: primary
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight:  Radius.circular(10)),
          ),

          border: OutlineInputBorder(            
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight:  Radius.circular(10)),
          )
        ),
      ); 

      static final ThemeData darkTheme = ThemeData.dark().copyWith( //? Configurar el tema de toda la aplicacion
        primaryColor: Colors.blueGrey.shade700 ,//? Color primario
        
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: elevation,
          
        ),

        textButtonTheme:  TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary) 
        ),

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5,  
          foregroundColor: Colors.white        
        ),

        elevatedButtonTheme:  ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            shape: const StadiumBorder(),  
            backgroundColor: primary                      
          ),          
        ),

        dialogTheme: DialogTheme(
          elevation: 5,
          shadowColor: primary,          
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
        ),

        inputDecorationTheme: const InputDecorationTheme(

          iconColor: primary,
          prefixIconColor: primary,
          suffixIconColor: primary,
          
          floatingLabelStyle: TextStyle( //? El color del nombre del input
            color: primary
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight:  Radius.circular(10), ), //? Les da un pequeño radio al input
          ),

          border: OutlineInputBorder(            
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight:  Radius.circular(10)),
          )
        ),
        

        scaffoldBackgroundColor: Colors.black
      );

    
    
}