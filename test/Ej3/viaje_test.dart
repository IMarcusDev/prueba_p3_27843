import 'package:flutter_test/flutter_test.dart';
import 'package:prueba_app/controller/viaje_controller.dart';
import 'package:prueba_app/model/viaje_model.dart';

void main() {
  ViajeController controller = ViajeController();

  test('Calcular 150 estudiantes', () {
    final int num = 150;
    final model = ViajeModel(num);

    String message = controller.calcularAbudante(num.toString());

    int res = model.calcularCosto();
    expect(message, "El costo individual de cada alumno es: ${model.getCostoIndividual()} y el costo total a la agencia es: $res");
  });
}