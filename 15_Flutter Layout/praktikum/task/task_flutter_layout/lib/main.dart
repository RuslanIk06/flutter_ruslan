import 'package:flutter/material.dart';
import 'package:task_flutter_layout/grid_view.dart';
import 'package:task_flutter_layout/list_view.dart';
import 'contact.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Flutter Layout"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: ("Task 01 (ListView)"),
                ),
                Tab(
                  text: ("Task 02 (GridView)"),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [ListViewDislay(), GridViewDisplay()]),
        ),
      ),
    );
  }
}
