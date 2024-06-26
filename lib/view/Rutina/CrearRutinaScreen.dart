

import 'package:active_fit/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class CrearRutinaScreen extends StatelessWidget {
  const CrearRutinaScreen({super.key});
  static const name = '/crearRutina';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.textFieldBgColor,
      appBar: AppBar(
        backgroundColor: AppTheme.scaffoldBbColor,
        elevation: 0,
       title: Text(
          'Crear Rutina',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: AppTheme.primaryColor,
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
       body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          //key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                //controller: _nombreController,
                decoration: InputDecoration(
                  labelText: 'Nombre',
                ),
                // validator: (value) {
                //   if (value.isEmpty) {
                //     return 'Por favor ingresa un nombre';
                //   }
                //   return null;
                // },
              ),
              TextFormField(
                //controller: _descripcionController,
                decoration: InputDecoration(
                  labelText: 'Descripción',
                ),
                // validator: (value) {
                //   if (value.isEmpty) {
                //     return 'Por favor ingresa una descripción';
                //   }
                //   return null;
                // },
              ),
              DropdownButtonFormField<String>(
                value: null,
                decoration: InputDecoration(
                  labelText: 'Ejercicios',
                ),
                items: [
                  DropdownMenuItem(
                    value: 'Opción 1',
                    child: Text('Flexiones de brazos'),
                  ),
                  DropdownMenuItem(
                    value: 'Opción 2',
                    child: Text('Abdominales'),
                  ),
                  DropdownMenuItem(
                    value: 'Opción 3',
                    child: Text('Sentadillas'),
                  ),
                ],
                onChanged: (value) {
                  // Handle dropdown value change
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // if (_formKey.currentState.validate()) {
                      //   // Realizar acción cuando se presiona "Aceptar"
                      //   String nombre = _nombreController.text;
                      //   String descripcion = _descripcionController.text;
                      //   // Aquí puedes hacer lo que necesites con los datos ingresados
                      //   print('Nombre: $nombre, Descripción: $descripcion');
                      // }
                    },
                    child: Text('Aceptar'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Realizar acción cuando se presiona "Cancelar"
                      Navigator.pop(context); // Cerrar el formulario
                    },
                    child: Text('Cancelar'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    
    );
  }
}