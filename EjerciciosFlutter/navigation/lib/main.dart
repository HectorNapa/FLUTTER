import 'package:flutter/material.dart';
import 'package:navigation/pages/customers_page.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/listview_pages.dart';
import 'package:navigation/pages/productList_pages.dart';
import 'package:navigation/pages/products_page.dart';
import 'package:navigation/pages/routers.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const HomePage(),
      routes:{//MAP UN CODIGO Y SU CONTENIDO
        Routers.products:(context)=> const ProductsPage(),
        Routers.customers:(context)=>  const CustomersPage(),
        Routers.listview:(context)=> const ListviewPages(),
        Routers.productsList:(context)=> ProductsListPage(),
      },
    );
  }
}
