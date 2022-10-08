import 'package:contact_apps/Model/contact_person.dart';
import 'package:contact_apps/Style/custom_color.dart';
import 'package:contact_apps/providers/contact_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddContactPage extends StatefulWidget {
  static const routeName = '/contact/new';
  const AddContactPage({super.key});

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  final formKey = GlobalKey<FormState>();
  var dataKontak = {'nama': '', 'phone': ''};

  ContactPerson? editContact;

  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerPhone = TextEditingController();

  void _onSubmit() {
    formKey.currentState!.save();
    // const print(dataKontak);
    final kontakBaru = ContactPerson(
      nama: dataKontak['nama']!,
      phone: dataKontak['phone']!,
    );

    if (editContact != null) {
      kontakBaru.id = editContact!.id;
      Provider.of<ContactProvider>(context, listen: false)
          .editKontak(kontakBaru);
    } else {
      Provider.of<ContactProvider>(context, listen: false)
          .tambahKontak(kontakBaru);
    }
  }

  @override
  Widget build(BuildContext context) {
    editContact = ModalRoute.of(context)!.settings.arguments as ContactPerson?;

    if (editContact != null) {
      _controllerName.text = editContact!.nama;
      _controllerPhone.text = editContact!.phone;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Create New Contact"),
        backgroundColor: greyColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: _controllerName,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    label: Text('Name'),
                    hintText: 'Input Name',
                  ),
                  validator: (value) {
                    if (value == null || value.length < 2) {
                      return 'Silakan input nama yang valid';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    if (newValue != null) dataKontak['nama'] = newValue;
                  },
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  controller: _controllerPhone,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.phone),
                    label: Text('Phone Number'),
                    hintText: 'Input Phone Number',
                  ),
                  validator: (value) {
                    if (value == null || value.length < 10) {
                      return 'Silakan input nomor telepon yang valid';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    if (newValue != null) dataKontak['phone'] = newValue;
                  },
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: greyColor),
                  onPressed: () {
                    if (formKey.currentState != null &&
                        formKey.currentState!.validate()) {
                      _onSubmit();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Menyinmpan data peserta...',
                          ),
                        ),
                      );
                      Navigator.of(context).pop();
                    }
                  },
                  child: const Text('Simpan'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
