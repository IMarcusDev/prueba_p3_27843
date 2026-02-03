import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:prueba_app/view/viaje_view.dart';

void main() {
  testWidgets('Prueba de Página Viaje', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: PaginaView(),));

    final field = find.byType(TextField);
    await tester.enterText(field, '100000000000');
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();

    expect(find.text("El número es demasiado grande, intente otro número mas pequeño"), findsOneWidget);
  });
}
