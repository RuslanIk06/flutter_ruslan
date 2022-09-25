import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: const [
          Text(
            "For more information contact us",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Card(
            color: Colors.amber,
            child: Text(
              "*** myshoes@gmail.com ***",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Card(
            color: Colors.amber,
            child: Text(
              "*** 082262314069 ***",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
