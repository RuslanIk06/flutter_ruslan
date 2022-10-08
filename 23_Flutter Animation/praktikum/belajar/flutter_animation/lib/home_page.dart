import 'package:flutter/material.dart';
import 'package:flutter_animation/about_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isbig = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
          child: Column(
        children: [
          // ElevatedButton(
          //   onPressed: () {
          //     setState(() {
          //       isbig = !isbig;
          //     });
          //   },
          //   child: Text("Resize"),
          // ),
          // Container(
          //   width: isbig ? 200 : 100,
          //   height: isbig ? 200 : 100,
          //   color: Colors.amber,
          // ),
          // SizedBox(height: 20),

          // InkWell(
          //   onTap: () {
          //     setState(() {
          //       isbig = !isbig;
          //     });
          //   },
          //   child: AnimatedContainer(
          //     width: isbig ? 500 : 100,
          //     height: isbig ? 500 : 100,
          //     color: Colors.amber,
          //     duration: Duration(milliseconds: 300),
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(100),
          //     ),
          //   ),
          // ),
          // SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return AboutScreen();
                  },
                  transitionsBuilder:
                      ((context, animation, secondaryAnimation, child) {
                    final tween = Tween(begin: Offset(1, 1), end: Offset.zero);
                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );

                    // final tween = Tween(begin: 0.0, end: 1.1);
                    // return FadeTransition(
                    //   opacity: animation.drive(tween),
                    //   child: child,
                    // );

                    // final tween = Tween(begin: 1.0, end: 1.0);
                    // return ScaleTransition(
                    //   scale: animation.drive(tween),
                    //   child: child,
                    // );
                  }),
                ),
              );
            },
            child: Text("Go To About Screen"),
          ),
        ],
      )),
    );
  }
}
