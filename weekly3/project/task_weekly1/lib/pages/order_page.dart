import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_weekly1/providers/order_provider.dart';
import 'package:task_weekly1/widgets/custom_color.dart';
import 'package:task_weekly1/widgets/item_order.dart';

class OrderPage extends StatefulWidget {
  static const routeName = '/order';
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    final dataorder = Provider.of<OrderProvider>(context).order;
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Transaksi"),
        centerTitle: true,
        backgroundColor: greyColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
          itemBuilder: ((context, index) {
            final order = dataorder.elementAt(index);
            return ItemOrder(order);
          }),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: dataorder.length,
        ),
      ),
    );
  }
}
