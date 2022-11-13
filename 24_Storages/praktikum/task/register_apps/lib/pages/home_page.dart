import 'package:flutter/material.dart';
import 'package:register_apps/pages/register_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SharedPreferences dataUser;
  String name = "";
  String email = "";

  void initial() async {
    dataUser = await SharedPreferences.getInstance();
    setState(() {
      name = dataUser.getString("username") ?? "";
      email = dataUser.getString("email") ?? "";
    });
  }

  @override
  void initState() {
    super.initState();
    initial();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Text(name),
              Text(email),
              ElevatedButton.icon(
                onPressed: () {
                  dataUser.setBool("register", true);
                  dataUser.remove("username");
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                      (route) => false);
                },
                icon: Icon(Icons.logout),
                label: Text("Logout"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
