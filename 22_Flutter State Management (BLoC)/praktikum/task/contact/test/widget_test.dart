// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:contact/views/screens/entry_profile.dart';
import 'package:contact/views/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:contact/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const EntryProfile());

    final test = await find.ancestor(
      of: find.text('Save Profile'),
      matching: find.byType(ElevatedButton),
    );
    expect(test, findsWidgets);
  });
}
