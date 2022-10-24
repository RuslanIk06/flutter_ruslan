import 'package:contact/view_models/contact/contact_bloc.dart';

import 'package:contact/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nanoid/non_secure.dart';

class EntryContactScreen extends StatefulWidget {
  static const routeName = "/contacts/entry";
  const EntryContactScreen({super.key});

  @override
  State<EntryContactScreen> createState() => _EntryContactScreenState();
}

class _EntryContactScreenState extends State<EntryContactScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _ctrlName = TextEditingController();
  TextEditingController _ctrlPhone = TextEditingController();

  var _contactData = {'name': '', 'phone': ''};
  String? _existingContactId;

  @override
  Widget build(BuildContext context) {
    final argContact = ModalRoute.of(context)!.settings.arguments as Contact?;
    if (argContact != null) {
      _ctrlName.text = argContact.name;
      _ctrlPhone.text = argContact.phone;
      _existingContactId = argContact.id;
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Contact"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: _ctrlName,
                    decoration: const InputDecoration(
                      label: Text("Contact Name"),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama tidak boleh kosong';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      _contactData['name'] = newValue!;
                    },
                  ),
                  TextFormField(
                    controller: _ctrlPhone,
                    decoration: const InputDecoration(
                      label: Text("Phone Number"),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'No Telp tidak boleh kosong';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      _contactData['phone'] = newValue!;
                    },
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        final newContact = Contact(
                          id: _existingContactId ?? nanoid(10),
                          name: _contactData['name'].toString(),
                          phone: _contactData['phone'].toString(),
                        );

                        if (_existingContactId != null) {
                          context
                              .read<ContactBloc>()
                              .add(UpdateContact(newContact));
                        } else {
                          context
                              .read<ContactBloc>()
                              .add(SaveContact(newContact));
                        }
                        Navigator.of(context).pop();
                      }
                    },
                    icon: const Icon(Icons.save),
                    label: Text(
                      _existingContactId == null
                          ? 'Save Contact'
                          : 'Update Contact',
                    ),
                  ),
                  if (_existingContactId != null)
                    ElevatedButton.icon(
                      onPressed: () {
                        context
                            .read<ContactBloc>()
                            .add(DeleteContact(_existingContactId!));
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.remove_done),
                      label: const Text("Delete Contact"),
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
