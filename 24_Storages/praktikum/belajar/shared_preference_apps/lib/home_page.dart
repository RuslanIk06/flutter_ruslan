import 'package:flutter/material.dart';
import 'package:shared_preference_apps/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SharedPreferences loginData;
  String username = "";

  void initial() async {
    loginData = await SharedPreferences.getInstance();
    setState(() {
      username = loginData.getString("username") ?? "";
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Walcome"),
            const SizedBox(height: 10),
            Text(username),
            ElevatedButton.icon(
              onPressed: () {
                loginData.setBool("login", true);
                loginData.remove("username");
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                    (route) => false);
              },
              icon: Icon(Icons.logout),
              label: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
