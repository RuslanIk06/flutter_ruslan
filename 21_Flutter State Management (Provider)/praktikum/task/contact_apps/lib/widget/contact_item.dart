import 'package:contact_apps/Model/contact_person.dart';
import 'package:flutter/material.dart';

class ItemContact extends StatelessWidget {
  final ContactPerson contactPerson;
  const ItemContact(this.contactPerson, {super.key});

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
    );
  }
}
