import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task02/provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<DataProvider>(context, listen: false).getAllData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<DataProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task JSON 02"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final data = modelView.modelData[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(data.name[0]),
            ),
            title: Text(data.name),
            subtitle: Text(data.email),
          );
        },
        itemCount: modelView.modelData.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
