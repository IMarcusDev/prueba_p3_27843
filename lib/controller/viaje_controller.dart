import 'package:prueba_app/model/viaje_model.dart';

class ViajeController {
  String calcularAbudante(String textoNumeroAlumnos) {
    String mensaje = "";

    if (textoNumeroAlumnos.isEmpty) {
      return "El campo esta vacío, por favor ingrese el número de alumnos!";
    }

    final numeroAlumnos = int.tryParse(textoNumeroAlumnos);

    if (numeroAlumnos == null) {
      return "El valor ingresado no es válido";
    }

    if (numeroAlumnos <= 0) {
      return "Debe ingresar al menos un alumno";
    }

    if (numeroAlumnos > 1000000) {
      return "El número es demasiado grande, intente otro número mas pequeño";
    }

    final model = ViajeModel(numeroAlumnos);
    final resultado = model.calcularCosto();
    final costoIndividual = model.getCostoIndividual();

    mensaje =
        "El costo individual de cada alumno es: $costoIndividual y el costo total a la agencia es: $resultado";

    return mensaje;
  }
}
