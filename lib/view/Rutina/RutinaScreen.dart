
import 'package:active_fit/config/theme/app_theme.dart';
import 'package:active_fit/view/widget/card_categorias.dart';
import 'package:active_fit/view/widget/card_ejercicios.dart';
import 'package:active_fit/view/widget/card_rutina.dart';
import 'package:active_fit/view/widget/custom_image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


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
        elevation: 0.5,
        
        title: Text('Rutinas'  , style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold),),
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
                    CardRutina(
                      imagePath: 'assets/gym_ejercicio.jpg',
                      titulo: 'Rutina de piernas ',
                      descripcion: "piernas",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RutinaScreen(),
                          ),
                        );
                      },
                    ),
                     const SizedBox(
                      height: 10,
                    ),
                    
                     
                    CardRutina(
                      imagePath: 'assets/gym_programacion.jpg',
                      titulo: 'Rutina de brazos',
                      descripcion: "brazos",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RutinaScreen(),
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
}