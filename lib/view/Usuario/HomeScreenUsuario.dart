import 'dart:convert';

import 'package:active_fit/view/Ejercicio/EjercicioScreen.dart';
import 'package:active_fit/view/Programacion/ProgramacionScreen.dart';
import 'package:active_fit/view/Rutina/RutinaScreen.dart';
import 'package:active_fit/view/Usuario/RutinaUsuarioScreen.dart';
import 'package:active_fit/view/widget/card_inicio_usuario.dart';
import 'package:active_fit/view/widget/card_categorias.dart';
import 'package:active_fit/view/widget/menu_de_navegacion.dart';
import 'package:flutter/material.dart';
import 'package:active_fit/config/theme/app_theme.dart';
import 'package:active_fit/view/Categoria/CategoriaScreen.dart';

import 'package:http/http.dart' as http;

class HomeScreenUsuario extends StatefulWidget {
  static const name = '/homeScreenUsuario';
  @override
  _HomeScreenUsuarioState createState() => _HomeScreenUsuarioState();
}

class _HomeScreenUsuarioState extends State<HomeScreenUsuario> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.textFieldBgColor,
      bottomNavigationBar: MenuDeNavegacion(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    const Text(
                      'Recomendado para ti',
                      style: TextStyle(
                        color: AppTheme.whiteTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CardInicioUsuario(
                            imagePath: 'assets/gym_categoria.jpg',
                            titulo: 'Bajar de peso',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RutinaUsuarioScreen(),
                                ),
                              );
                            },
                            descripcion: "",
                          ),
                          CardInicioUsuario(
                            imagePath: 'assets/gym_categoria.jpg',
                            titulo: 'Bajar de peso',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CategoriaScreen(),
                                ),
                              );
                            },
                            descripcion: "",
                          ),
                          CardInicioUsuario(
                            imagePath: 'assets/gym_categoria.jpg',
                            titulo: 'Bajar de peso',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CategoriaScreen(),
                                ),
                              );
                            },
                            descripcion: "",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Tus programaciones',
                      style: TextStyle(
                        color: AppTheme.whiteTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    CustomImageCard(
                      imagePath: 'assets/gym_categoria.jpg',
                      title: 'Programacion mixta',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoriaScreen(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 15),
                    const Text(
                      'Ejercicios',
                      style: TextStyle(
                        color: AppTheme.whiteTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                     SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CardInicioUsuario(
                            imagePath: 'assets/gym_categoria.jpg',
                            titulo: 'Bajar de peso',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CategoriaScreen(),
                                ),
                              );
                            },
                            descripcion: "",
                          ),
                          CardInicioUsuario(
                            imagePath: 'assets/gym_categoria.jpg',
                            titulo: 'Bajar de peso',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CategoriaScreen(),
                                ),
                              );
                            },
                            descripcion: "",
                          ),
                          CardInicioUsuario(
                            imagePath: 'assets/gym_categoria.jpg',
                            titulo: 'Bajar de peso',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CategoriaScreen(),
                                ),
                              );
                            },
                            descripcion: "",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomImageCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  const CustomImageCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 2.2,
        child: Container(
          margin: const EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imagePath),
            ),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 8.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
