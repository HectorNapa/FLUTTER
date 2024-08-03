import 'package:flutter/material.dart';
import 'package:lista_clientes/pages/Routers.dart';
import 'package:lista_clientes/pages/home_page.dart';
import 'package:lista_clientes/pages/lista_cliente.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes:{
        Routers.clientList: (context)=> ClientListPage(),
      },
    );
  }
}
