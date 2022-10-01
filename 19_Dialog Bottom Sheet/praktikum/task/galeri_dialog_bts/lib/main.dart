import 'package:flutter/material.dart';
import 'package:galeri_dialog_bts/custom_color.dart';
import 'grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          title: const Text(
            "Galeri",
          ),
          centerTitle: true,
          backgroundColor: greyColor,
        ),
        body: GridViewDisplay(),
      ),
    );
  }
}
