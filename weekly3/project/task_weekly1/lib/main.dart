import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_weekly1/pages/home_page.dart';
import 'package:task_weekly1/pages/order_page.dart';
import 'package:task_weekly1/providers/order_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => OrderProvider(),
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
  var formKey = GlobalKey();
  var inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        OrderPage.routeName: (context) => const OrderPage(),
      },
    );
  }
}
