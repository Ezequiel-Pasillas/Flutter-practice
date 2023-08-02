import 'package:flutter/material.dart';


import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {

  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), //? Poner un padding
        children: const [
          
          CustomCardTyoe1(), //? Se importan desde una carpeta de widgets predefinidos

          SizedBox(height: 10),

          CustomCardType2(description: "Un hermoso paisaje", imageUrl:"https://www.treehugger.com/thmb/Ls6h5XKJbOH3JkgSrhx_QVIUSdc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-500870206-13863de4f327467ebbabd0bffafbaf94.jpg" ),

          SizedBox(height: 10),

          CustomCardType2(imageUrl: 'https://d150u0abw3r906.cloudfront.net/wp-content/uploads/2021/10/image2-2-1024x649.png'),

          SizedBox(height: 10),

          CustomCardType2(imageUrl: 'https://previews.123rf.com/images/isampuntarat/isampuntarat1912/isampuntarat191200151/135656070-beautiful-of-variety-spring-flower-garden-landscape-design.jpg'),

          SizedBox(height: 10),

        ],
      )
      );
  }
}

