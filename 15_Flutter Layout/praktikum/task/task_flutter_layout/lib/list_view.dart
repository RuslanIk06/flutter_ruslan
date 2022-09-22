import 'package:flutter/material.dart';
import 'contact.dart';
import 'font_style.dart';

class ListViewDislay extends StatelessWidget {
  ListViewDislay({super.key});

  final List<ContactPerson> data = [
    ContactPerson(
        profile: "assets/images/image00.png",
        nama: "Indra",
        cp: "082262314069"),
    ContactPerson(
        profile: "assets/images/image01.png",
        nama: "Celline",
        cp: "082262310001"),
    ContactPerson(
        profile: "assets/images/image02.png",
        nama: "Anggel",
        cp: "082262310002"),
    ContactPerson(
        profile: "assets/images/image03.png",
        nama: "Della",
        cp: "082262310003"),
    ContactPerson(
        profile: "assets/images/image04.png", nama: "Jaka", cp: "082262310004"),
    ContactPerson(
        profile: "assets/images/image05.png",
        nama: "Mansur",
        cp: "082262310005"),
    ContactPerson(
        profile: "assets/images/image06.png",
        nama: "Anton",
        cp: "082262310006"),
    ContactPerson(
        profile: "assets/images/image07.png",
        nama: "Singo",
        cp: "082262310007"),
    ContactPerson(
        profile: "assets/images/image08.png",
        nama: "Ruslan",
        cp: "082262310008"),
    ContactPerson(
        profile: "assets/images/image10.png", nama: "Joe", cp: "082262310010"),
    ContactPerson(
        profile: "assets/images/factory.png",
        nama: "Taslim",
        cp: "082262310011"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: ((context, index) => ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(data[index].profile),
              ),
              title: Text(
                data[index].nama,
                style: nameText,
              ),
              subtitle: Text(data[index].cp),
            )));
  }
}