
import 'package:active_fit/view/HomeScreen.dart';
import 'package:active_fit/view/Login/Registro.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const name = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ 
          Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/gym_login.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                const Text(
                  'Iniciar sesión',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 100),
                TextField(
                  
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: const TextStyle(
                      color: Colors.white30,
                    ),
                    filled: true,
                    fillColor: Colors.grey[800],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    labelStyle: const TextStyle(
                      color: Colors.white30,
                    ),
                    filled: true,
                    fillColor: Colors.grey[800],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                
                const SizedBox(height: 20.0),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    maximumSize: const Size(500, 100),
                    minimumSize: const Size(300, 70),
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text(
                    'Iniciar sesión',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  onPressed: () {
                    context.push(HomeScreen.name);
                  },
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("No tienes una cuenta?", style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold )),
                    TextButton(
                    onPressed: () {
                      context.push(RegistroScreen.name);
                    },
                    child: Text(
                      'Crear cuenta', // Texto del botón
                      style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold ),
                    ),
                  ),
                  ],
                ),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     maximumSize: const Size(300, 100),
                //     minimumSize: const Size(300, 70),
                //     backgroundColor: Colors.white,
                //     padding: const EdgeInsets.symmetric(vertical: 15.0),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(20.0),
                //     ),
                //   ),
                //   onPressed: () {
                //     //print('Nombre de usuario: ${_usernameController.text}');
                //     //print('Contraseña: ${_passwordController.text}');
                //   },
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Image.asset(
                //         'assets/google.png',
                //         height: 30.0,
                //         width: 30,
                //       ),
                //       const SizedBox(
                //           width: 10), // Espacio entre el icono y el texto
                //       const Text(
                //         'Iniciar sesión con Google',
                //         style: TextStyle(fontSize: 18.0, color: Colors.black),
                //       ),
                //     ],
                //   ),
                // ),
                const SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
      ]),
    );
    
        
  }
}