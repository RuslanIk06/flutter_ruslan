import 'package:contact_apps/providers/contact_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:contact_apps/Pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('Test Home Page', (WidgetTester tester) async {
    await tester.pumpWidget(
  Provider.value<ContactProvider>(
   
    child: HomePage(), 
  ),
)  
    expect(find.text('List Contact'), findsWidgets);
    final testing = await find.ancestor(
      of: find.byType(Padding),
      matching: find.byType(ListView),
    );
    expect(testing, findsWidgets);
  });
}
