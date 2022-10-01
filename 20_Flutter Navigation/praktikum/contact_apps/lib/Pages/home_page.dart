import 'package:contact_apps/Pages/add_contact.dart';
import 'package:contact_apps/Style/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:contact_apps/Model/contact_person.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/contact';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ContactPerson> data = [
    ContactPerson(nama: "Indra", phone: "082262314069"),
    ContactPerson(nama: "Celline", phone: "082262310001"),
    ContactPerson(nama: "Anggel", phone: "082262310002"),
    ContactPerson(nama: "Della", phone: "082262310003"),
    ContactPerson(nama: "Celi", phone: "082262310004"),
    ContactPerson(nama: "Mansur", phone: "082262310005"),
    ContactPerson(nama: "Anton", phone: "082262310006"),
    ContactPerson(nama: "Singo", phone: "082262310007"),
    ContactPerson(nama: "Ruslan", phone: "082262310008"),
    ContactPerson(nama: "Indra", phone: "082262310010"),
    ContactPerson(nama: "Taslim", phone: "082262310011"),
  ];

  void addContact(ContactPerson contactPerson) {
    setState(() {
      data.add(contactPerson);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Contact"),
        centerTitle: true,
        backgroundColor: greyColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: ((context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: greyColor,
                    child: Text(data[index].nama[0]),
                  ),
                  title: Text(data[index].nama),
                  subtitle: Text(data[index].phone),
                ))),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const AddContact()),
          // );

          Navigator.of(context).pushNamed(AddContact.routeName);
        },
        label: const Text("Create New Contact"),
        backgroundColor: blackColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
