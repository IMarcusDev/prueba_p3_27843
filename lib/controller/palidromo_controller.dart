import 'package:prueba_app/model/palidromo_model.dart';

class PalindromoController {
  String verificarPalindromo(String palabra) {
    String mensaje = "";

    if (palabra.isEmpty) {
      return "El campo está vacío, por favor ingrese una palabra";
    }

    if (palabra.length > 100) {
      return "La palabra es demasiado larga, intente con una más corta";
    }

    final model = PalindromoModel();
    final esPalindromo = model.isPalindrome(palabra);

    if (esPalindromo) {
      mensaje = "La palabra '$palabra' SÍ es un palíndromo";
    } else {
      mensaje = "La palabra '$palabra' NO es un palíndromo";
    }

    return mensaje;
  }
}
