import 'package:flutter/material.dart';
import 'package:lista_clientes/pages/client.dart';

class ClientListPage extends StatelessWidget {
  final List<Client> clients = [
    Client(
        nombre: "Juan 1",
        apellido: "Ceballo 1",
        edad: 10
        ),
     Client(
        nombre: "Juan 2",
        apellido: "Ceballo 2",
        edad: 20
        ),
     Client(
        nombre: "Juan 3",
        apellido: "Ceballo 3",
        edad: 30
        ),
     Client(
        nombre: "Juan 4",
        apellido: "Ceballo 4",
        edad: 40
        ),
    Client(
       nombre: "Juan 5",
        apellido: "Ceballo 5",
        edad: 50
        ),
     Client(
       nombre: "Juan 6",
        apellido: "Ceballo 6",
        edad: 60
        ),
     Client(
       nombre: "Juan 7",
        apellido: "Ceballo 7",
        edad: 70
        ),
     Client(
        nombre: "Juan 8",
        apellido: "Ceballo 8",
        edad: 80
        ),
     Client(
        nombre: "Juan 9",
        apellido: "Ceballo 9",
        edad: 90
        ),
    Client(
       nombre: "Juan 10",
        apellido: "Ceballo 10",
        edad: 100
        ),
  ];

  ClientListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
                context); //va sacando las paginas q estan dentro de la pila
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: ListView.builder(// ListView lista bilder para enlistar listas grandes
        itemCount: clients.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(clients[index].nombre),
            subtitle: Text(clients[index].apellido),
            trailing: Text("${clients[index].edad.toString()}"),
          );
        },
        )
    );
  }
}
