import 'package:active_fit/view/Categoria/CategoriaScreen.dart';
import 'package:active_fit/view/Categoria/CrearCategoria.dart';
import 'package:active_fit/view/Categoria/DetalleCategoriaScreen.dart';
import 'package:active_fit/view/Ejercicio/EjercicioScreen.dart';
import 'package:active_fit/view/HomeScreen.dart';
import 'package:active_fit/view/Login/Inicio.dart';
import 'package:active_fit/view/Login/Registro.dart';
import 'package:active_fit/view/Programacion/ProgramacionScreen.dart';
import 'package:active_fit/view/Rutina/RutinaScreen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
 
  GoRoute(
    path: '/login',
    name: LoginScreen.name,
    builder: (context, state) => const LoginScreen(),
  ),
   
  GoRoute(
    path: '/registro',
    name: RegistroScreen.name,
    builder: (context, state) =>  RegistroScreen(),
  ),
  GoRoute(
    path: '/',
    name: HomeScreen.name,
    builder: (context, state) =>  HomeScreen(),
  ),
  GoRoute(
    path: '/categoria',
    name: CategoriaScreen.name,
    builder: (context, state) =>  CategoriaScreen(),
  ),
  GoRoute(
    path: '/detalle_categoria',
    name: DetalleCategoriaScreen.name,
    builder: (context, state) =>  DetalleCategoriaScreen(),
  ),
  GoRoute(
    path: '/crear_categoria',
    name: CrearCategoriaScreen.name,
    builder: (context, state) =>  CrearCategoriaScreen(),
  ),
  GoRoute(
    path: '/ejercicio',
    name: EjercicioScreen.name,
    builder: (context, state) =>  EjercicioScreen(),
  ),
  GoRoute(
    path: '/rutina',
    name: RutinaScreen.name,
    builder: (context, state) =>  RutinaScreen(),
  ),
  GoRoute(
    path: '/programacion',
    name: ProgramacionScreen.name,
    builder: (context, state) =>  ProgramacionScreen(),
  ),
]);
