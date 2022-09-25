import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "To order please complete the following data",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              label: Text("First Name"),
              hintText: "First Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Last Name",
              label: Text("Last Name"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Email",
              label: Text("Email"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          TextField(
            keyboardType: TextInputType.multiline,
            maxLines: 4,
            decoration: InputDecoration(
              label: Text("Massage"),
              hintText: "Massage",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
