import 'package:flutter/material.dart';

class ListviewPages extends StatelessWidget {
  const ListviewPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:const Text("Listview Basico"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);//va sacando las paginas q estan dentro de la pila 
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(// ListView de tipo comun y silvestre para lista pequenas y estaticas
        children:const <Widget> [
          ListTile(
            title: Text("Elemento 1"),
            subtitle: Text("Subtitle del elemeto1"),
            leading: Icon(
              Icons.add_to_queue,
              color:  Colors.orange,
            ),
          ),
              ListTile(
            title: Text("Elemento 2"),
            subtitle: Text("Subtitle del elemeto2"),
            leading: Icon(
              Icons.add_to_queue,
              color:  Colors.blue,
            ),
          ),
              ListTile(
            title: Text("Elemento 3"),
            subtitle: Text("Subtitle del elemeto3"),
            leading: Icon(
              Icons.add_to_queue,
              color:  Colors.pink,
            ),
          )
        ],
      ),
    );
  }
}
