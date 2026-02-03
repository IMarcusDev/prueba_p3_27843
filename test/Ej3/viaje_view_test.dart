import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:prueba_app/view/viaje_view.dart';

void main() {
  testWidgets('Prueba de Página Viaje', (WidgetTester tester) async {
    await tester.pumpWidget(PaginaView());

    final field = find.byType(TextField);
    await tester.enterText(field, '100000000000');
    tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    expect(find.text("El número es demasiado grande, intente otro número mas pequeño"), findsOneWidget);
  });
}
