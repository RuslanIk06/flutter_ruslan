import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? _waktu;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) => _getWaktu());
  }

  void _getWaktu() {
    final String formattedDateTime =
        DateFormat('hh:mm:ss').format(DateTime.now()).toString();
    setState(() {
      _waktu = formattedDateTime;
      print(_waktu);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter Widget")),
        body: Center(
          child: Text(
            _waktu.toString(),
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
