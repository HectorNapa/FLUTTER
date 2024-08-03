import 'package:flutter/material.dart';
import 'package:lista_clientes/pages/routers.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, Routers.clientList);
              },
              color: Colors.blue,
              child: const Text("ListarClientes"),
            ),
        ],),
    );
  }

}