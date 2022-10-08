import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isBig = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image Animation"),
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                isBig = !isBig;
              });
            },
            child: GestureDetector(
              child: SizedBox(
                width: isBig ? double.infinity : 100,
                child: const AnimatedSize(
                  duration: Duration(seconds: 1),
                  curve: Curves.linear,
                  child: Image(
                    image: AssetImage("assets/images/image.jpg"),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
