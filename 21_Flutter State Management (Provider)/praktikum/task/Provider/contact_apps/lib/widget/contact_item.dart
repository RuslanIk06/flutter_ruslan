import 'package:contact_apps/Model/contact_person.dart';
import 'package:contact_apps/Pages/add_contact.dart';
import 'package:contact_apps/providers/contact_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContactItem extends StatelessWidget {
  final ContactPerson contactPerson;
  const ContactItem(this.contactPerson, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        leading: CircleAvatar(
          child: Text(contactPerson.nama[0]),
        ),
        title: Text(contactPerson.nama),
        subtitle: Text(contactPerson.phone),
      ),
      onLongPress: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Delete Contact"),
              content: Text("Delete Contact With Name ${contactPerson.nama}"),
              actions: [
                TextButton(
                  onPressed: () {
                    Provider.of<ContactProvider>(context, listen: false)
                        .hapusKontak(contactPerson.id);
                    Navigator.pop(context);
                  },
                  child: const Text("Yes"),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("No"))
              ],
            );
          },
        );
      },
      onDoubleTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Update Contact"),
              content: Text("Update Contact With Name ${contactPerson.nama}"),
              actions: [
                TextButton(
                  onPressed: () async {
                    await Navigator.of(context).pushNamed(
                        AddContactPage.routeName,
                        arguments: contactPerson);
                    Navigator.pop(context);
                  },
                  child: const Text("Yes"),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("No"))
              ],
            );
          },
        );
      },
    );
  }
}
