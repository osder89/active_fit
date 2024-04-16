



import 'package:active_fit/config/theme/app_theme.dart';

import 'package:active_fit/view/widget/card_categorias.dart';
import 'package:active_fit/view/widget/card_ejercicios.dart';
import 'package:active_fit/view/widget/card_programacion.dart';
import 'package:active_fit/view/widget/custom_image_card.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class ProgramacionScreen extends StatefulWidget {
  static const name = '/programacion';
  @override
  _ProgramacionScreenState createState() => _ProgramacionScreenState();
}

class _ProgramacionScreenState extends State<ProgramacionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.textFieldBgColor,
      appBar: AppBar(
        backgroundColor: AppTheme.scaffoldBbColor,
        elevation: 0.5,
        
        title: Text('Programacion'  , style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold),),
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
                    CardProgramacion(
                      imagePath: 'assets/gym_ejercicio.jpg',
                      titulo: 'Programacion  abdominales ',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProgramacionScreen(),
                          ),
                        );
                      },
                       fechaInicio: DateTime(2022,  12,  31),
                      fechaFin: DateTime( 2022,  12,  31),
                    ),
                     const SizedBox(
                      height: 10,
                    ),
                    
                     
                    CardProgramacion(
                      imagePath: 'assets/gym_programacion.jpg',
                      titulo: 'Programacion bicpes',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProgramacionScreen(),
                          ),
                        );
                      }, 
                      fechaInicio: DateTime(2022,  12,  31),
                      fechaFin: DateTime( 2022,  12,  31),
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