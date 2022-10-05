import 'package:contact_apps/Pages/add_contact.dart';
import 'package:contact_apps/Style/custom_color.dart';
import 'package:contact_apps/providers/contact_person_providers.dart';
import 'package:contact_apps/widget/contact_item.dart';
import 'package:flutter/material.dart';
import 'package:contact_apps/Model/contact_person.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/contact';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ContactPerson> data = [];

  @override
  Widget build(BuildContext context) {
    final dataContact = Provider.of<ContactPersonProvider>(context).cp;

    return Scaffold(
      appBar: AppBar(
        title: const Text("List Contact"),
        centerTitle: true,
        backgroundColor: greyColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
          itemBuilder: (context, index) {
            final contact = dataContact.elementAt(index);
            return ItemContact(contact);
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: dataContact.length,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushNamed(AddContact.routeName);
        },
        label: const Text("Create New Contact"),
        backgroundColor: blackColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
