import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final Icon listIcon;
  const Circle(this.listIcon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.lightBlue,
      ),
      child: listIcon,
    );
  }
}
