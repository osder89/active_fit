
import 'package:active_fit/config/theme/app_theme.dart';

import 'package:active_fit/view/widget/card_categorias.dart';
import 'package:active_fit/view/widget/card_ejercicios.dart';
import 'package:active_fit/view/widget/custom_image_card.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class DetalleCategoriaScreen extends StatefulWidget {
  static const name = '/detalle_categoria';
  @override
  _DetalleCategoriaScreenState createState() => _DetalleCategoriaScreenState();
}

class _DetalleCategoriaScreenState extends State<DetalleCategoriaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.textFieldBgColor,
      appBar: AppBar(
        backgroundColor: AppTheme.scaffoldBbColor,
        elevation: 0.5,
        
        title: Text('Ejercicios de la categoria'  , style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold),),
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.menu,
        //     color: AppTheme.primaryColor,
        //   ),
        //   onPressed: () {},
        // ),
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
                    CardEjercicio(
                      imagePath: 'assets/gym_ejercicio.jpg',
                      titulo: 'Cardio ',
                      descripcion: "Categorias de ejercicios de cardio y o de fuerza",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetalleCategoriaScreen(),
                          ),
                        );
                      },
                    ),
                     const SizedBox(
                      height: 10,
                    ),
                    CardEjercicio(
                      imagePath: 'assets/gym_programacion.jpg',
                      titulo: 'Cardio ',
                      descripcion: "Categorias de ejercicios de cardio y o de fuerza",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetalleCategoriaScreen(),
                          ),
                        );
                      },
                    ),
                     const SizedBox(
                      height: 10,
                    ),
                    CardEjercicio(
                      imagePath: 'assets/gym_programacion.jpg',
                      titulo: 'Cardio ',
                      descripcion: "Categorias de ejercicios de cardio y o de fuerza",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetalleCategoriaScreen(),
                          ),
                        );
                      },
                    ),
                     const SizedBox(
                      height: 10,
                    ),
                    CardEjercicio(
                      imagePath: 'assets/gym_programacion.jpg',
                      titulo: 'Cardio ',
                      descripcion: "Categorias de ejercicios de cardio y o de fuerza",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetalleCategoriaScreen(),
                          ),
                        );
                      },
                    ),
                     const SizedBox(
                      height: 10,
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

  Widget promoCard(
      BuildContext context, String image, Widget destinationScreen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationScreen),
        );
      },
      child: AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: const EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: [0.1, 0.9],
                colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
