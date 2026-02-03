import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prueba_app/view/palindromo_view.dart';

void main() {
  testWidgets('PalindromoView muestra resultado al presionar el botón', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: PalindromoView(),
      ),
    );
    await tester.enterText(find.byType(TextField), 'reconocer');
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    expect(find.textContaining('palíndromo', findRichText: true), findsOneWidget);
  });
}
