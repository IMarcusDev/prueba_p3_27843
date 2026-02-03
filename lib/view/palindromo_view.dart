import 'package:flutter/material.dart';
import 'package:prueba_app/controller/palidromo_controller.dart';
import 'package:prueba_app/widgets/input_field.dart';
import '../widgets/boton_comprobar.dart';

class PalindromoView extends StatefulWidget {
  @override
  State<PalindromoView> createState() => _PalindromoViewState();
}

class _PalindromoViewState extends State<PalindromoView> {
  final palabraCtrl = TextEditingController();
  String resultado = "";

  void comprobar() {
    final palabra = palabraCtrl.text;

    if (palabra.isEmpty) {
      setState(() {
        resultado = "Por favor ingrese una palabra";
      });
      return;
    }

    final esPalindromo = isPalindrome(palabra);

    setState(() {
      if (esPalindromo) {
        resultado = "La palabra '$palabra' SI es un palíndromo";
      } else {
        resultado = "La palabra '$palabra' NO es un palíndromo";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Comprobar Palíndromo")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InputField(
              controller: palabraCtrl,
              label: "Ingrese una palabra",
            ),
            const SizedBox(height: 20),
            BotonComprobar(onPressed: comprobar),
            const SizedBox(height: 20),
            Text(
              resultado,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
