import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
//-------------------------------------------------------------------
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.grey,
          items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.abc)),
           BottomNavigationBarItem(label: "Home", icon: Icon(Icons.abc)),
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.abc))
        ],),
//------------------------------------------------------------------------------
floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.home),
          onPressed:()=>{
          print("test")
        },),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//------------------------------------------------------------------------------
        body: const Center(
          child: Drawer(
           child:  Column(
           // mainAxisAlignment: MainAxisAlignment.center,
          //  mainAxisAlignment: MainAxisAlignment.start,
           // mainAxisAlignment: MainAxisAlignment.end,
           // mainAxisAlignment: MainAxisAlignment.spaceAround,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Icon(Icons.abc,
                    color: Colors.pink,
                    size: 50.0,
                    ),
                     Text("- OPCION 1",
                          style: TextStyle(
                            color: Colors.pink,
                            fontWeight: FontWeight.bold,
                            fontSize: 20, // Aquí defines el color del texto
                          ),)
                  ]
                ),
                Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children:[
                    Icon(Icons.abc,
                     color: Colors.green,
                     size: 50.0,
                     ),
                     Text("- OPCION 2",
                     style: TextStyle(
                      color:  Colors.green,
                      fontWeight: FontWeight.bold,
                        fontSize: 20,
                     ),
                     ),
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children:[
                    Icon(Icons.abc,
                     color: Colors.blue,
                     size: 50.0,),
                     Text("- OPCION 3",
                     style: TextStyle(
                      color:  Colors.blue,
                      fontWeight: FontWeight.bold,
                        fontSize: 20,
                     ),
                     ),
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                   children:[
                    Icon(Icons.abc,
                     color: Color.fromARGB(255, 176, 233, 5),
                     size: 50.0,),
                     Text("- OPCION 4", 
                     style: TextStyle(
                      color:  Color.fromARGB(255, 176, 233, 5),
                       fontWeight: FontWeight.bold,
                        fontSize: 20,
                     ),),
                  ]
                ),
              ],
            ),
          ) //Text('Hello World!!!'),
        ),
//----------parte superior-------
     appBar: AppBar(
      title: const Center(child: Text("APP TEST")),
      titleTextStyle: const TextStyle(
        color: Colors.blueAccent,
         fontStyle: FontStyle.italic,
         fontWeight: FontWeight.bold,
         fontSize: 30,
      ),
      centerTitle: true,
      backgroundColor: Colors.grey,
      shadowColor: Colors.blue,
      elevation:7,
     ),
      //------------------------------------
      ),
    );
  }
}
