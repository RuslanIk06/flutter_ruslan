import 'package:contact_apps/Model/contact_person.dart';
import 'package:contact_apps/Style/custom_color.dart';
import 'package:contact_apps/providers/contact_person_providers.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddContact extends StatefulWidget {
  static const routeName = '/formContact';
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  final formKey = GlobalKey<FormState>();
  var dataContact = {'nama': '', 'phone': ''};
  final TextEditingController _ctrlNama = TextEditingController();
  final TextEditingController _ctrlPhone = TextEditingController();
  ContactPerson? editContactPerson;

  void _onSubmit() {
    formKey.currentState!.save();
    final contactbaru = ContactPerson(
      nama: dataContact['nama']!,
      phone: dataContact['phone']!,
    );
    // tambahPeserta(pesertaBaru);
    if (dataContact != null) {
      contactbaru.id = editContactPerson!.id;
      Provider.of<ContactPersonProvider>(context, listen: false)
          .editPeserta(contactbaru);
    } else {
      Provider.of<ContactPersonProvider>(context, listen: false)
          .tambahPeserta(contactbaru);
    }
  }

  @override
  Widget build(BuildContext context) {
    editContactPerson =
        ModalRoute.of(context)!.settings.arguments as ContactPerson?;
    if (editContactPerson != null) {
      _ctrlNama.text = editContactPerson!.nama;
      _ctrlPhone.text = editContactPerson!.phone;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Create New Contact"),
        backgroundColor: greyColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          key: formKey,
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    label: Text('Nama'),
                    hintText: 'Nama',
                  ),
                  validator: (value) {
                    if (value == null || value.length < 5) {
                      return 'Silakan input nama yang valid';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    if (newValue != null) dataContact['nama'] = newValue;
                  },
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  controller: _ctrlNama,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.phone),
                    label: Text('Phone Number'),
                    hintText: 'Phone Number',
                  ),
                  validator: (value) {
                    if (value == null || value.length < 10) {
                      return 'Silakan input nomor telepon yang valid';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    if (newValue != null) dataContact['phone'] = newValue;
                  },
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  controller: _ctrlPhone,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState != null) {
                          _onSubmit();
                        }
                        Navigator.pop(context);
                      },
                      child: Text("Simpan"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
