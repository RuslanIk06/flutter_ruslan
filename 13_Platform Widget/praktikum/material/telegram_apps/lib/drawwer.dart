import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            image: DecorationImage(
              scale: 0.4,
              image: AssetImage("assets/images/image10.png"),
              fit: BoxFit.fill,
            ),
          ),
          accountName: Text('Ruslan'),
          accountEmail: Text('082262314069'),
          currentAccountPicture: CircleAvatar(
            foregroundImage: AssetImage("assets/images/image01.png"),
          ),
        ),
        ListTile(
          leading: Icon(Icons.contact_page),
          title: Text('New Group'),
        ),
        ListTile(
          leading: Icon(Icons.contact_page),
          title: Text('New Group'),
        )
      ],
    );
  }
}
