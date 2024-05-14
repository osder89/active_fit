import 'dart:convert';

import 'package:active_fit/view/Ejercicio/EjercicioScreen.dart';
import 'package:active_fit/view/Programacion/ProgramacionScreen.dart';
import 'package:active_fit/view/Rutina/RutinaScreen.dart';
import 'package:active_fit/view/widget/menu_de_navegacion.dart';
import 'package:flutter/material.dart';
import 'package:active_fit/config/theme/app_theme.dart';
import 'package:active_fit/view/Categoria/CategoriaScreen.dart';
import 'package:active_fit/view/widget/custom_image_card.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  static const name = '/homeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<dynamic>> _fetchCategorias() async {
    final response = await http
        .get(Uri.parse('https://eeb2-189-28-69-140.ngrok-free.app/categoria'));
    if (response.statusCode == 200) {
      print(json.decode(response.body)['data']);
      return json.decode(response.body)['data'];
    } else {
      throw Exception('Failed to load categorias');
    }
  }

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
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
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppTheme.scaffoldBbColor,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30)),
                ),
                padding: const EdgeInsets.all(20.0),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 5),
                    Text(
                      'ACTIVE FIT',
                      style: TextStyle(
                        color: AppTheme.primaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageCard(
                      imagePath: 'assets/gym_categoria.jpg',
                      title: 'Categorias',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoriaScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 15),
                    CustomImageCard(
                      imagePath: 'assets/gym_ejercicio.jpg',
                      title: 'Ejercicios',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EjercicioScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 15),
                    CustomImageCard(
                      imagePath: 'assets/gym_rutina.jpg',
                      title: 'Rutinas',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RutinaScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 15),
                    CustomImageCard(
                      imagePath: 'assets/gym_programacion.jpg',
                      title: 'Programacion',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProgramacionScreen(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 15),
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
