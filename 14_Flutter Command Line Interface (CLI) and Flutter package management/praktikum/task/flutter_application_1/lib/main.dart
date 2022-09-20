import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Barcode Apps"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BarcodeWidget(
                barcode: Barcode.telepen(),
                data: "Alterra Academy",
                width: 400,
                height: 160,
              ),
              SizedBox(height: 25),
              BarcodeWidget(
                barcode: Barcode.code128(escapes: true),
                data: "Flutter Asik",
                width: 400,
                height: 160,
              ),
              SizedBox(height: 25),
              BarcodeWidget(
                barcode: Barcode.code93(),
                data: "RUSLAN",
                width: 400,
                height: 160,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
