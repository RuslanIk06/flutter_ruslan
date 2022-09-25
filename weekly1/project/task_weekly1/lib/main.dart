import 'package:flutter/material.dart';
import 'package:task_weekly1/contact.dart';
import 'package:task_weekly1/custom_color.dart';
import 'package:task_weekly1/form.dart';
import 'package:task_weekly1/image.dart';

void main() {
  runApp(const MyApp());
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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: greyColor,
          title: const Text(
            "MyShoes",
            style: TextStyle(color: blackColor),
          ),
          centerTitle: true,
          leading: Padding(
            padding: EdgeInsets.all(10),
            child: Image.asset(
              "assets/images/logo.png",
            ),
          ),
        ),
        body: Center(
          child: ListView(
            children: [
              const ImagePage(),
              const ContactPage(),
              const FormPage(),
              Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 20, left: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Submit",
                    style: TextStyle(color: whiteColor),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
