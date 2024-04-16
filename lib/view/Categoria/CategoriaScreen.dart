import 'package:active_fit/config/theme/app_theme.dart';
import 'package:active_fit/view/Categoria/CrearCategoria.dart';
import 'package:active_fit/view/Categoria/DetalleCategoriaScreen.dart';
import 'package:active_fit/view/widget/card_categorias.dart';
import 'package:active_fit/view/widget/custom_image_card.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class CategoriaScreen extends StatefulWidget {
  static const name = '/categoria';
  @override
  _CategoriaScreenState createState() => _CategoriaScreenState();
}

class _CategoriaScreenState extends State<CategoriaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.textFieldBgColor,
      appBar: AppBar(
        backgroundColor: AppTheme.scaffoldBbColor,
        elevation: 0,
       title: Text(
          'Categorias',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: AppTheme.primaryColor,
          ),
        ),
        actions: [
          ElevatedButton(
            child: Row(
              children: [
                Icon(
              Icons.add,
              color: AppTheme.primaryColor,
            ),
                Text(
                  'Agregar',
                  style: TextStyle(
                    color: AppTheme.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
              ],
            ),
            style: ElevatedButton.styleFrom(
              primary: AppTheme.scaffoldBbColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              context.push(CrearCategoriaScreen.name);
            },
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
       body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 2 / 2.2, // Relación de aspecto ajustada
        ),
        itemCount: 4, // Cantidad de elementos en el GridView
        itemBuilder: (context, index) {
          return CardCategoria(
            imagePath: 'assets/gym_ejercicio.jpg', // Ruta de la imagen
            titulo: 'Cardio', // Título de la categoría
            descripcion: 'Descripción $index', // Descripción de la categoría
            onTap: () {
             context.push(DetalleCategoriaScreen.name);
            },
          );
        },
      ),
      
    );
  }

}
