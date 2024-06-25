import 'package:active_fit/config/theme/app_theme.dart';
import 'package:active_fit/view/Categoria/CrearCategoria.dart';
import 'package:active_fit/view/widget/card_categorias.dart';
import 'package:active_fit/view/widget/card_ejercicios.dart';
import 'package:active_fit/view/widget/card_rutina.dart';
import 'package:active_fit/view/widget/card_rutina_ejercicio.dart';
import 'package:active_fit/view/widget/custom_image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class RutinaUsuarioScreen extends StatefulWidget {
  static const name = '/rutinaUsuario';
  @override
  _RutinaUsuarioScreenState createState() => _RutinaUsuarioScreenState();
}

class _RutinaUsuarioScreenState extends State<RutinaUsuarioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffoldBbColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/montaun.png',
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Mantener  peso ideal',
                        style: TextStyle(
                          color: AppTheme.whiteTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'El mantenimiento del peso ideal implica un equilibrio entre la ingesta calórica y el gasto energético',
                        style: TextStyle(
                          color: AppTheme.whiteTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 20,
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CardRutinaUsuario(
                        imagePath: 'assets/sentadillas.png',
                        titulo: 'Sentadillas ',
                        series: "3",
                        repeticiones: "13", 
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
                        height: 15,
                      ),
                      CardRutinaUsuario(
                        imagePath: 'assets/flexiones.png',
                        titulo: 'Flexiones',
                        series: "3",
                        repeticiones: "10",
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
                        height: 15,
                      ),
                      CardRutinaUsuario(
                        imagePath: 'assets/plancha.png',
                        titulo: 'Plancha ',
                        series: "3",
                        repeticiones: "60",
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
                        height: 15,
                      ),
                      CardRutinaUsuario(
                        imagePath: 'assets/zancadas.png',
                        titulo: 'Zancadas  ',
                        series: "3",
                        repeticiones: "12",
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
                        height: 15,
                      ),
                      CardRutinaUsuario(
                        imagePath: 'assets/burpes.jpg',
                        titulo: 'Burpees',
                        series: "3",
                        repeticiones: "10",
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
                        height: 50,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height -
                    60), // 100 es el alto del botón
            color: Colors.black,
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 237, 214, 8),
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Iniciar rutina',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
