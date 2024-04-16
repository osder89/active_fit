import 'package:active_fit/view/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegistroScreen extends StatelessWidget {
  static const name = '/registro';
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController apellidoController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController numeroController = TextEditingController();
  final TextEditingController ciController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fotoController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();
  final TextEditingController pesoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/gym_registro.jpg'),
              fit: BoxFit.cover,
              //alignment: Alignment.center,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Column(
              children: [
                TextField(
                  controller: nombreController,
                  decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                      labelText: 'Nombre', ),
                ),
                TextField(
                  controller: apellidoController,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                    labelText: 'Apellido'),
                ),
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                    labelText: 'Username'),
                ),
                TextField(
                  controller: numeroController,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                    labelText: 'Número'),
                ),
                TextField(
                  controller: ciController,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                    labelText: 'CI'),
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                    labelText: 'Email'),
                ),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                    labelText: 'Password'),
                  obscureText: true,
                ),
                TextField(
                  controller: fotoController,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                    labelText: 'Foto'),
                ),
                TextField(
                  controller: alturaController,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                    labelText: 'Altura'),
                ),
                TextField(
                  controller: pesoController,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                    labelText: 'Peso'),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.push(HomeScreen.name);
                  },
                  child: Text('Register'),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
