import 'package:flutter/material.dart';
import 'package:register_apps/pages/home_page.dart';
import 'package:register_apps/pages/register_page.dart';

void main() {
  runApp(const MyApp());
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
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        useMaterial3: true,
      ),
      home: const RegisterPage(),
      initialRoute: RegisterPage.routeName,
      routes: {
        RegisterPage.routeName: (context) => const RegisterPage(),
        HomePage.routeName: (context) => const HomePage()
      },
    );
  }
}
