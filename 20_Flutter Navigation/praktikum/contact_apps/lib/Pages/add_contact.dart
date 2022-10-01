import 'package:contact_apps/Model/contact_person.dart';
import 'package:contact_apps/Style/custom_color.dart';
import 'package:flutter/material.dart';

class AddContact extends StatefulWidget {
  static const routeName = '/formContact';
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  final formKey = GlobalKey<FormState>();
  var dataContact = {'nama': '', 'phone': ''};
  late Function(ContactPerson) tambahContact;

  void _onSubmit() {
    formKey.currentState!.save();
    print(dataContact);
    final contactBaru = ContactPerson(
      nama: dataContact['nama']!,
      phone: dataContact['phone']!,
    );
    tambahContact(contactBaru);
  }

  @override
  Widget build(BuildContext context) {
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
                    label: Text("Name"),
                    hintText: "Name",
                  ),
                  validator: (value) {
                    if (value == null || value.length < 3) {
                      return "Silahkan input nama dengan benar";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.contact_phone),
                    label: Text("Phone Number"),
                    hintText: "Phone Number",
                  ),
                  validator: (value) {
                    if (value == null || value.length < 3) {
                      return "Silahkan input nama dengan benar";
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: blackColor),
                      onPressed: () {
                        if (formKey.currentState != null &&
                            formKey.currentState!.validate()) {
                          _onSubmit();
                          const SnackBar(content: Text("Menyimpan Data...."));
                          Navigator.of(context).pop();
                        }
                      },
                      child: const Text("Submit"),
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
