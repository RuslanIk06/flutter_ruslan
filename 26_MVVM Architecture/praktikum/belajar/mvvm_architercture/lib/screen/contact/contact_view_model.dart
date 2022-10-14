import 'package:flutter/cupertino.dart';
import 'package:mvvm_architercture/model/api/contact_app.dart';
import 'package:mvvm_architercture/model/contact_model.dart';

class ContactViewModel with ChangeNotifier {
  List<Contact> _contact = [];
  List<Contact> get contacts => [..._contact];

  getAllContacts() async {
    final c = await ContactAPI.getContact();
    _contact = c;
    notifyListeners();
  }
}
