import 'package:flutter/material.dart';
import 'package:task_weekly1/widgets/contact.dart';
import 'package:task_weekly1/widgets/custom_color.dart';
import 'package:task_weekly1/widgets/drawer_page.dart';
import 'package:task_weekly1/widgets/about_us.dart';
import 'package:task_weekly1/widgets/form.dart';
import 'package:task_weekly1/widgets/image.dart';
import 'package:task_weekly1/widgets/product.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      endDrawer: const DrawerPage(),
      body: Center(
        child: ListView(
          children: const [
            ImagePage(),
            AboutUs(),
            SizedBox(height: 20),
            ProductPage(),
            ContactPage(),
            FormPage(),
          ],
        ),
      ),
    );
  }
}
