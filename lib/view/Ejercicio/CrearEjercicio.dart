

import 'package:active_fit/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class CrearEjercicioScreen extends StatelessWidget {
  const CrearEjercicioScreen({super.key});
  static const name = '/crearEjercicio';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.textFieldBgColor,
      appBar: AppBar(
        backgroundColor: AppTheme.scaffoldBbColor,
        elevation: 0,
       title: Text(
          'Crear Ejercicio',
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
              SizedBox(height: 20),
              TextFormField(
                //controller: _descripcionController,
                decoration: InputDecoration(
                  labelText: 'Url del video',
                ),
                // validator: (value) {
                //   if (value.isEmpty) {
                //     return 'Por favor ingresa una descripción';
                //   }
                //   return null;
                // },
              ),
              SizedBox(height: 20),
             
              DropdownButtonFormField<String>(
                value: null,
                decoration: InputDecoration(
                  labelText: 'Categorias',
                ),
                items: [
                  DropdownMenuItem(
                    value: 'Opción 1',
                    child: Text('Cardio'),
                  ),
                  DropdownMenuItem(
                    value: 'Opción 2',
                    child: Text('Pesas y Mancuernas'),
                  ),
                  DropdownMenuItem(
                    value: 'Opción 3',
                    child: Text('Cuerda de saltar'),
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