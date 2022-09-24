import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final Image gambar;
  const SecondScreen(this.gambar, {super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: widget.gambar,
        ),
      ),
    );
  }
}
