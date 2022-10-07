import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_color.dart';
import 'font_style.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset("assets/images/image10.png"),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 20),
            Icon(Icons.contact_page),
            SizedBox(width: 20),
            Text(
              "New Group",
              style: headerText,
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 20),
            Icon(Icons.lock),
            SizedBox(width: 20),
            Text(
              "New Secret Chat",
              style: headerText,
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 20),
            Icon(Icons.notifications),
            SizedBox(width: 20),
            Text(
              "New Channel",
              style: headerText,
            ),
          ],
        ),
        SizedBox(height: 40),
        Row(
          children: [
            SizedBox(width: 20),
            Icon(Icons.add_call),
            SizedBox(width: 20),
            Text(
              "Contacts",
              style: headerText,
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 20),
            Icon(Icons.add_ic_call),
            SizedBox(width: 20),
            Text(
              "Invite Frineds",
              style: headerText,
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 20),
            Icon(Icons.settings),
            SizedBox(width: 20),
            Text(
              "Setttings",
              style: headerText,
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 20),
            Icon(Icons.help),
            SizedBox(width: 20),
            Text(
              "Telegram FAQ",
              style: headerText,
            ),
          ],
        ),
      ],
    );
  }
}
