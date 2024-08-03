import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return WelcomePageState();
  }
}

class WelcomePageState extends State {
  String? nombre;
  String? apellido;
  String saludo="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Text("Ingrese su nombre:"),
              TextField(
                onChanged: (value) => {nombre = value},
              ), //Para ingresar texto
              const Text("Ingrese su apellido:"),
              TextField(
                onChanged: (value) => {apellido = value},
              ),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  saludo= "Bienvenido ${nombre!} ${apellido!}";
                  setState(() {});
                },
                child: const Text(
                  "Saludar",
                ),
              ), //Button
              Text(saludo),
            ],
          ),
        ));
  }
}
