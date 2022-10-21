import 'package:flutter/material.dart';
import 'package:flutter_animation/about_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Juduhalaman harus about screen", (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AboutScreen(),
      ),
    );
  });
  expect(find.text("About Screen"), findsOneWidget);
}
