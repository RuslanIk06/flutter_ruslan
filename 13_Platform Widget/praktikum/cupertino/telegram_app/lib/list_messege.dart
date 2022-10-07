import 'package:cupertino_lists/cupertino_lists.dart';
import 'package:flutter/material.dart';
import 'package:telegram_app/messege.dart';

class ListMessege extends StatelessWidget {
  final List<Message> data;
  const ListMessege(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) => CupertinoListTile(
            leading: CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage(data[index].profile),
            ),
            title: Text(data[index].nama),
            subtitle: Text(data[index].pesan),
            trailing: Wrap(spacing: 8, children: <Widget>[
              (Text(
                data[index].waktu,
                style: const TextStyle(fontSize: 8),
              )),
              const Icon(
                Icons.circle,
                color: Color.fromARGB(255, 54, 169, 245),
              )
            ]),
          )),
      itemCount: data.length,
    );
  }
}
