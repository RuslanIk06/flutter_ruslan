import 'package:flutter/material.dart';
import 'package:food_apps/providers/foods_provider.dart';
import 'package:provider/provider.dart';

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
      Provider.of<FoodsProvider>(context, listen: false).getAllFoods();
    });
  }

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<FoodsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Foods Apps"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final food = modelView.foods[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(food.name[0]),
            ),
            title: Text(food.name),
          );
        },
        itemCount: modelView.foods.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
