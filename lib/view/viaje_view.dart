import 'package:flutter/material.dart';
import 'package:prueba_app/controller/viaje_controller.dart';
import 'package:prueba_app/widgets/input_numero.dart';
import '../widgets/boton_comprobar.dart';

class PaginaView extends StatefulWidget {
  @override
  State<PaginaView> createState() => _PaginaViewState();
}

class _PaginaViewState extends State<PaginaView> {
  final controller = ViajeController();
  final numeroCtrl = TextEditingController();
  String resultado = "";

  void calcular() {
    final res = controller.calcularAbudante(numeroCtrl.text);
    setState(() {
      resultado = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Costo de Viaje")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InputNumero(
              controller: numeroCtrl,
              label: "Ingrese el número de alumnos",
            ),
            const SizedBox(height: 20),
            BotonComprobar(onPressed: calcular),
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