import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatars"),
        actions: [
          
          Container(
            margin: const EdgeInsets.only(right: 5),
            child:  CircleAvatar( //? Agrega un circulo para mostrar una imagen de avatar
              backgroundColor: Colors.red.shade900, //? Agrega un circulo para mostrar una imagen de avatar
              child: const Text("SL"),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage("https://i.blogs.es/bb9a8f/spider-man-across-the-spider-verse-1-16856001883x2/840_560.jpeg"), //? Le agrega una imagen al circleAvatar
        )
      ),
    );
  }
}