import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardTyoe1 extends StatelessWidget {
  const CustomCardTyoe1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children: [
          
          const ListTile(
            title: Text('Soy un titulo'),
            leading: Icon(Icons.photo_album, color: AppTheme.primary,),
            subtitle: Text('In id aliquip culpa et exercitation elit ea non commodo exercitation. Non deserunt adipisicing ut ea fugiat mollit ea culpa. Sit laborum id eu quis et voluptate aliqua. Duis et aliquip nisi in minim occaecat excepteur enim. Ad labore duis ea mollit nostrud.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5), //? Se hace un pagdding solo al lado derecho 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end, //? SE manda a la derecha los botones de Ok y cancelar
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Cancel'),
                  
                  ),
                  
          
                  TextButton(
                    onPressed: () {}, 
                    child: const Text('Ok'),    
                    style: TextButton.styleFrom(primary: Colors.blue.shade800)
                    ),
                    
              ],
            ),
          )

        ],
      ),
    );
  }
}