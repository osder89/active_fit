import 'package:active_fit/config/theme/app_theme.dart';
import 'package:active_fit/view/Rutina/CrearRutinaScreen.dart';
import 'package:active_fit/view/Usuario/RutinaUsuarioScreen.dart';
import 'package:active_fit/view/widget/card_categorias.dart';
import 'package:active_fit/view/widget/card_ejercicios.dart';
import 'package:active_fit/view/widget/card_rutina.dart';
import 'package:active_fit/view/widget/custom_image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class RutinaScreen extends StatefulWidget {
  static const name = '/rutina';
  @override
  _RutinaScreenState createState() => _RutinaScreenState();
}

class _RutinaScreenState extends State<RutinaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.textFieldBgColor,
      appBar: AppBar(
        backgroundColor: AppTheme.scaffoldBbColor,
        elevation: 0,
        title: Text(
          'Rutina',
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
              context.push(CrearRutinaScreen.name);
            },
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    CardRutina(
                      imagePath: 'assets/montaun.png',
                      titulo: 'Mantener el peso ideal ',
                      descripcion:"",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RutinaUsuarioScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CardRutina(
                      imagePath: 'assets/flexiones.png',
                      titulo: 'Bajar de peso',
                      descripcion:"",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RutinaUsuarioScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CardRutina(
                      imagePath: 'assets/plancha.png',
                      titulo: 'Aumentar masa muscular',
                      descripcion:"",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RutinaUsuarioScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
