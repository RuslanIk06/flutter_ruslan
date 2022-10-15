import 'package:dio/dio.dart';
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
  int status = -1;
  String value = "";

  getData() async {
    var dio = Dio();
    var res = await dio.get("https://api.jepriana.com/contacts",
        options: Options(
          responseType: ResponseType.plain,
        ));

    print(res.data);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan JSOn"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    getData();
                  });
                },
                child: Text("Get"),
              ),
              Text("Status : $status"),
              Text("result : $value"),
            ],
          ),
        ),
      ),
    );
  }
}
