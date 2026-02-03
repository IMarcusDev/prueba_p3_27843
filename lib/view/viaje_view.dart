import 'package:flutter/material.dart';
import 'package:prueba_app/controller/viaje_controller.dart';
import 'package:prueba_app/widgets/input_field.dart';
import '../widgets/boton_comprobar.dart';

class PaginaView extends StatefulWidget {
  @override
  State<PaginaView> createState() => _PaginaViewState();
}

class _PaginaViewState extends State<PaginaView> {
  final controller = ViajeController();
  final numeroCtrl = TextEditingController();

  void _calcular() {
    final resultado = controller.calcularAbudante(numeroCtrl.text);
    Navigator.pushNamed(context, '/resultado', arguments: resultado);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Comprobar números abundantes")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InputField(
              controller: numeroCtrl,
              label: "Ingrese el número (Ej.10)",
            ),
            const SizedBox(height: 20),
            BotonComprobar(onPressed: _calcular),
          ],
        ),
      ),
    );
  }
}