import 'package:contact_apps/models/contact_person.dart';
import 'package:flutter/cupertino.dart';

class ContactProvider with ChangeNotifier {
  final List<ContactPerson> _cp = [];

  List<ContactPerson> get cp => [..._cp];

  void tambahKontak(ContactPerson newContact) {
    _cp.add(newContact);
    notifyListeners();
  }

  void editKontak(ContactPerson updatePeserta) {
    final targetIndex = _cp.indexWhere((cp) => cp.id == updatePeserta.id);

    if (targetIndex != -1) {
      _cp[targetIndex] = updatePeserta;
      notifyListeners();
    }
  }

  void hapusKontak(String id) {
    final targetIndex = _cp.indexWhere((cp) => cp.id == id);

    if (targetIndex != -1) {
      _cp.removeAt(targetIndex);
      notifyListeners();
    }
  }

  void detailKontak(ContactPerson detail) {
    final targetIndex = _cp.indexWhere((cp) => cp.id == detail.id);

    if (targetIndex != -1) {
      _cp[targetIndex] = detail;
      notifyListeners();
    }
  }
}
