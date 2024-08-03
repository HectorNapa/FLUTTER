import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return CalculatorPageState();
  }
}

class CalculatorPageState extends State {
  final TextEditingController controllerValor1 =
      TextEditingController(text: "0");
  final TextEditingController controllerValor2 =
      TextEditingController(text: "0");
  int? valor1;
  int? valor2;
  int resultado=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Ingrese el primer valor:"),
            TextField(
              controller: controllerValor1,
              textAlign: TextAlign.right,
              keyboardType: TextInputType.number,
              onChanged: (value) => {
                setState(() {
                  valor1 = int.parse(value);
                }),
              },
            ),
            const Text("Ingrese el segundo valor:"),
            TextField(
              controller: controllerValor2,
              textAlign: TextAlign.right,
              keyboardType: TextInputType.number,
              onChanged: (value) => {
                setState(() {
                  valor2 = int.parse(value);
                }),
              },
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                resultado = valor1! + valor2!;
                setState(() {});
              },
              child: const Text(
                "SUMAR",
              ),
            ),
            Text(resultado.toString())
          ],
        ),
      ),
    );
  }
}
