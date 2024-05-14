

import 'package:active_fit/config/theme/app_theme.dart';
import 'package:active_fit/view/Ejercicio/CrearEjercicio.dart';
import 'package:active_fit/view/Ejercicio/DetalleEjercicio.dart';
import 'package:active_fit/view/widget/card_ejercicios.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';


class EjercicioScreen extends StatefulWidget {
  static const name = '/ejercicio';
  @override
  _EjercicioScreenState createState() => _EjercicioScreenState();
}

class _EjercicioScreenState extends State<EjercicioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.textFieldBgColor,
      appBar: AppBar(
        backgroundColor: AppTheme.scaffoldBbColor,
        elevation: 0,
       title: Text(
          'Ejercicios',
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
              context.push(CrearEjercicioScreen.name);
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
                    CardEjercicio(
                      imagePath: 'assets/gym_ejercicio.jpg',
                      titulo: 'Flexiones ',
                      descripcion: "Ejercicios para la parte del estomago",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetalleEjercicioScreen( videoUrl:  'https://www.youtube.com/watch?v=wLGn8XmLeEM&ab_channel=ATHLEAN-XEspa%C3%B1ol', nombre: 'Flexiones', descripcion: 'Ejercicio para los pectorales'),
                          ),
                        );
                      },
                    ),
                     const SizedBox(
                      height: 10,
                    ),
                    
                     
                    CardEjercicio(
                      imagePath: 'assets/gym_programacion.jpg',
                      titulo: 'Levantamiento de pesas',
                      descripcion: "EJercicio para los bicpes y triceps",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetalleEjercicioScreen(videoUrl:  'https://www.youtube.com/watch?v=wLGn8XmLeEM&ab_channel=ATHLEAN-XEspa%C3%B1ol', nombre: 'Flexiones', descripcion: 'Ejercicio para los pectorales'),

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
