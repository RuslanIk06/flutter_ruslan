import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _coun = 0;

  void _increment() {
    _coun++;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Text"),
            centerTitle: true,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                _coun++;
              });
            },
            child: Icon(Icons.add),
          ),
          body: Center(
              child: Text(
            _coun.toString(),
            style: TextStyle(fontSize: 40),
          )),
        ),
      ),
    );
  }
}
