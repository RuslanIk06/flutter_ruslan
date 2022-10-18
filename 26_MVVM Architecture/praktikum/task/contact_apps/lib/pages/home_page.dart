import 'package:contact_apps/Pages/add_contact.dart';
import 'package:contact_apps/components/styles/custom_color.dart';
import 'package:contact_apps/models/providers/contact_provider.dart';
import 'package:contact_apps/components/widgets/contact_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/contact';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final dataKontak = Provider.of<ContactProvider>(context).cp;
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Contact"),
        centerTitle: true,
        backgroundColor: greyColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
          itemBuilder: ((context, index) {
            final kontak = dataKontak.elementAt(index);
            return ContactItem(kontak);
          }),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: dataKontak.length,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, AddContactPage.routeName);
        },
        label: const Text("Create New Contact"),
        backgroundColor: blackColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
