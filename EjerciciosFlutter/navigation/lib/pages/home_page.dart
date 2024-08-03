import 'package:flutter/material.dart';
import 'package:navigation/pages/customers_page.dart';
import 'package:navigation/pages/products_page.dart';
import 'package:navigation/pages/routers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MaterialButton(
              onPressed: () {
                /*final route = MaterialPageRoute(builder: (ctx) {
                  //route es la ruta hacia donde vamos a navegar
                  return const ProductsPage();
                });
                Navigator.push(context,
                    route); //para realizar la navegacion el push va agregando las paginas en una pila*/

                Navigator.pushNamed(context, Routers.products);
              },
              color: Colors.blue,
              child: const Text("IR A PAGINA 2"),
            ),
            MaterialButton(
              onPressed: () {
              /*  final route = MaterialPageRoute(builder: (ctx) {
                  return const CustomersPage();
                });
                Navigator.push(context, route);*/
                Navigator.pushNamed(context, Routers.customers);
              },
              color: Colors.yellow,
              child: const Text("IR A CLIENTES"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, Routers.listview);
              },
              color: Colors.orange,
              child: const Text("IR A LISTVIEW BASICO"),
            ),

            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, Routers.productsList);
              },
              color: Colors.greenAccent,
              child: const Text("IR A LISTa de productos"),
            )
          ],
        ) /*Center(
        child: MaterialButton(
          onPressed: () {
            final route = MaterialPageRoute(builder: (ctx){//route es la ruta hacia donde vamos a navegar
              return const ProductsPage();
            });
            Navigator.push(context, route);//para realizar la navegacion el push va agregando las paginas en una pila
          },
          color: Colors.blue,
          child: const Text("IR A PAGINA 2"),
          ),
      ),*/
        );
  }
}
