import 'package:active_fit/view/Categoria/CategoriaScreen.dart';
import 'package:active_fit/view/Categoria/CrearCategoria.dart';
import 'package:active_fit/view/Categoria/DetalleCategoriaScreen.dart';
import 'package:active_fit/view/Ejercicio/CrearEjercicio.dart';
import 'package:active_fit/view/Ejercicio/DetalleEjercicio.dart';
import 'package:active_fit/view/Ejercicio/EjercicioScreen.dart';
import 'package:active_fit/view/HomeScreen.dart';
import 'package:active_fit/view/Usuario/HomeScreenUsuario.dart';
import 'package:active_fit/view/Login/Inicio.dart';
import 'package:active_fit/view/Login/Registro.dart';
import 'package:active_fit/view/Programacion/ProgramacionScreen.dart';
import 'package:active_fit/view/Rutina/CrearRutinaScreen.dart';
import 'package:active_fit/view/Rutina/RutinaScreen.dart';
import 'package:active_fit/view/Usuario/PerfilScreen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
 
  GoRoute(
    path: '/',
    name: LoginScreen.name,
    builder: (context, state) => const LoginScreen(),
  ),
   
  GoRoute(
    path: '/registro',
    name: RegistroScreen.name,
    builder: (context, state) =>  RegistroScreen(),
  ),
  GoRoute(
    path: '/homeScreen',
    name: HomeScreen.name,
    builder: (context, state) =>  HomeScreen(),
  ),
  GoRoute(
    path: '/categoria',
    name: CategoriaScreen.name,
    builder: (context, state) =>  CategoriaScreen(),
  ),
  GoRoute(
    path: '/detalleCategoria',
    name: DetalleCategoriaScreen.name,
    builder: (context, state) =>  DetalleCategoriaScreen(),
  ),
  GoRoute(
    path: '/crearCategoria',
    name: CrearCategoriaScreen.name,
    builder: (context, state) =>  CrearCategoriaScreen(),
  ),
  GoRoute(
    path: '/ejercicio',
    name: EjercicioScreen.name,
    builder: (context, state) =>  EjercicioScreen(),
  ),
  GoRoute(
    path: '/crearEjercicio',
    name: CrearEjercicioScreen.name,
    builder: (context, state) =>   CrearEjercicioScreen(),
  ),
  // GoRoute(
  //   path: '/DetalleEjercicio',
  //   name: DetalleEjercicioScreen.name,
  //   builder: (context, state) =>  DetalleEjercicioScreen( constvideoUrl: '',nombre: '',descripcion: '',categoria: ''),
  // ),
  GoRoute(
    path: '/rutina',
    name: RutinaScreen.name,
    builder: (context, state) =>  RutinaScreen(),
  ),
  GoRoute(
    path: '/crearRutina',
    name: CrearRutinaScreen.name,
    builder: (context, state) =>  CrearRutinaScreen(),
  ),
  GoRoute(
    path: '/programacion',
    name: ProgramacionScreen.name,
    builder: (context, state) =>  ProgramacionScreen(),
  ),
  GoRoute(
    path: '/homeUsuario',
    name: HomeScreenUsuario.name,
    builder: (context, state) =>  HomeScreenUsuario(),
  ),
  GoRoute(
    path: '/perfil',
    name: PerfilScreen.name,
    builder: (context, state) =>  PerfilScreen(),
  ),
]);
