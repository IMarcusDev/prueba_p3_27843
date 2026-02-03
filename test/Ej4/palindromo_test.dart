import 'package:flutter_test/flutter_test.dart';
import 'package:prueba_app/controller/palidromo_controller.dart';

void main() {
  final controller = PalindromoController();

  test('15251 pasa como palabra palíndroma', () {
    int num = 15251;

    String message = controller.verificarPalindromo(num.toString());

    expect(message, "La palabra '$num' SÍ es un palíndromo");
  });
}