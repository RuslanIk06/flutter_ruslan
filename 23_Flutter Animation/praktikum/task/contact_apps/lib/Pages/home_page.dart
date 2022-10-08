import 'package:contact_apps/Pages/add_contact.dart';
import 'package:contact_apps/Style/custom_color.dart';
import 'package:contact_apps/providers/contact_provider.dart';
import 'package:contact_apps/widget/contact_item.dart';
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
          // Navigator.pushNamed(context, AddContactPage.routeName);
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return AddContactPage();
              },
              transitionsBuilder:
                  ((context, animation, secondaryAnimation, child) {
                final tween = Tween(begin: Offset(0, 1), end: Offset.zero);
                return RotationTransition(
                  turns:
                      CurvedAnimation(parent: animation, curve: Curves.linear),
                  child: child,
                );
              }),
            ),
          );
        },
        label: const Text("Create New Contact"),
        backgroundColor: blackColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
