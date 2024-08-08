import 'package:flutter/material.dart';
import 'package:flutter_application_1/Router/GoRouter.dart';

TextEditingController planetsController = TextEditingController();

List<String> planets = ["Mercury", "Venus", "Earth"];


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Column(
          appBar: AppBar(
          title: const Text('Botón "+" en la Esquina Inferior Derecha'),
        ),
        body: Center(
          child: const Text('Contenido de la pantalla'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Acción a realizar cuando se presiona el botón
            print('Botón "+" presionado');
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          )
        )
    );
  }
}