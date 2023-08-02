import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>(); //? Se usa para disparar las validaciones del formulario y mantener las referencias en el formulario

    final Map<dynamic, dynamic> formValues = {
      'first_name' : 'Ezequiel',
      'last_name'  : 'Pasillas',
      'email'      : 'ezequiel@google.com',
      'password'   : '123456',
      'role'       : 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,

            child: Column(
              children: [
          
                const SizedBox(height: 30,),
                CustomInputField(labelText: "Nombre", helperText: "Nombre de usuario", hintText: "Nombre", counterText: "20", suffixIcon: Icons.supervised_user_circle_sharp, formProperty: 'first_name', formValues: formValues, ),
                const SizedBox(height: 30,),
          
                CustomInputField(labelText: "Apellido", helperText: "Apellido de usuario", hintText: "Apellido", counterText: "20", suffixIcon: Icons.group, formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30,),
          
                CustomInputField(labelText: "Correo", helperText: "Correo de usuario", hintText: "Correo", counterText: "20", keyboardType: TextInputType.emailAddress, suffixIcon: Icons.email, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30,),
          
                CustomInputField(labelText: "Password", helperText: "Password de usuario", hintText: "Password", counterText: "20", obscureText: true, suffixIcon: Icons.password, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30,),
          
                DropdownButtonFormField( //? Se un selector                 
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'Super User', child: Text('Super User')),
                    DropdownMenuItem(value: 'Normal User', child: Text('Normal User')),
                    DropdownMenuItem(value: 'Ocassional User', child: Text('Ocassional User')),
                    DropdownMenuItem(value: 'root', child: Text('root')),
                    ], 
                  onChanged: (value){
                    print(value);

                    formValues['role'] = value ?? 'Admin';

                    print(value);
                  }
                  ),
                  const SizedBox(height: 30,),

                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode()); //? Se utiliza para minizar el teclado cuando se presione el boton 'Guardar'

                    if(!myFormKey.currentState!.validate()){ //? Es para validar el formulario a cada paso
                    print('Formulario no valido');
                      return;
                    }

                    print(formValues);
                  }, 
                child: const SizedBox(
                  width: double.infinity,
                  
                  child: Center(
                    child: Text('Guardar')
                    )
                  )
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}


