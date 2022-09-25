import 'package:flutter/material.dart';
import 'package:task_weekly1/about_us.dart';
import 'package:task_weekly1/contact.dart';
import 'package:task_weekly1/custom_color.dart';
import 'package:task_weekly1/drawer_page.dart';
import 'package:task_weekly1/form.dart';
import 'package:task_weekly1/image.dart';
import 'package:task_weekly1/product.dart';

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
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              "assets/images/logo.png",
            ),
          ),
        ),
        endDrawer: DrawerPage(),
        body: Center(
          child: ListView(
            children: [
              const ImagePage(),
              const AboutUs(),
              const SizedBox(height: 20),
              const ProductPage(),
              const ContactPage(),
              const FormPage(),
              Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 20, left: 20),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Checkout",
                      style: TextStyle(color: whiteColor),
                    ),
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
