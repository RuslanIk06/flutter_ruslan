import 'package:contact_apps/Pages/add_contact.dart';
import 'package:contact_apps/Pages/home_page.dart';
import 'package:contact_apps/providers/contact_person_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ContactPersonProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        AddContact.routeName: (context) => const AddContact(),
      },
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
