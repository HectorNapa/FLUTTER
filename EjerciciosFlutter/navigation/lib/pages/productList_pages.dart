import 'package:flutter/material.dart';
import 'package:navigation/pages/products.dart';

class ProductsListPage extends StatelessWidget {
  final List<Products> products = [
    Products(
        name: "Producto 1",
        prices: 20.2,
        description: "Descripcion del producto 1"
        ),
     Products(
        name: "Producto 2",
        prices: 10.2,
        description: "Descripcion del producto 2"
        ),
     Products(
        name: "Producto 3",
        prices: 30.2,
        description: "Descripcion del producto 3"
        ),
     Products(
        name: "Producto 4",
        prices: 2.2,
        description: "Descripcion del producto 4"
        ),
    Products(
        name: "Producto 5",
        prices: 29.2,
        description: "Descripcion del producto 5"
        ),
     Products(
        name: "Producto 6",
        prices: 55.2,
        description: "Descripcion del producto 6"
        ),
         Products(
        name: "Producto 1",
        prices: 20.2,
        description: "Descripcion del producto 1"
        ),
     Products(
        name: "Producto 2",
        prices: 10.2,
        description: "Descripcion del producto 2"
        ),
     Products(
        name: "Producto 3",
        prices: 30.2,
        description: "Descripcion del producto 3"
        ),
     Products(
        name: "Producto 4",
        prices: 2.2,
        description: "Descripcion del producto 4"
        ),
    Products(
        name: "Producto 5",
        prices: 29.2,
        description: "Descripcion del producto 5"
        ),
     Products(
        name: "Producto 6",
        prices: 55.2,
        description: "Descripcion del producto 6"
        ),
  ];

  ProductsListPage({super.key});

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
        itemCount: products.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text(products[index].description),
            trailing: Text("\$${products[index].prices.toStringAsFixed(2)}"),
          );
        },
        )
    );
  }
}
