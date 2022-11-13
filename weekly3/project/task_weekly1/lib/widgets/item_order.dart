import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_weekly1/models/order.dart';

class ItemOrder extends StatelessWidget {
  final ModelOrder order;
  const ItemOrder(this.order, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        title: Text("Nama Cuctomer :  ${order.firstName} ${order.lastName}"),
        subtitle: Text("Email : ${order.email} / Alamant : ${order.address}"),
      ),
    );
  }
}
