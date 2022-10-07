import 'package:flutter/material.dart';
import 'package:telegram_apps/drawwer.dart';
import 'font_style.dart';
import 'model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Message> data = [
    Message(
      profile: "assets/images/factory.png",
      nama: "Ruslan",
      pesan: "Hallo",
      waktu: "23:59",
    ),
    Message(
      profile: "assets/images/factory.png",
      nama: "Ruslan",
      pesan: "Hallo",
      waktu: "23:59",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Telegram Apps"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
      drawer: Drawer(child: DrawerPage()),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: ((context, index) => ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(data[index].profile),
              ),
              title: Text(
                data[index].nama,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(data[index].pesan),
              trailing: Wrap(
                spacing: 8,
                children: [
                  Column(
                    children: [
                      Text(
                        data[index].waktu,
                        style: massageText,
                      ),
                      const Icon(
                        Icons.circle,
                        color: Color.fromARGB(255, 64, 233, 140),
                      ),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
