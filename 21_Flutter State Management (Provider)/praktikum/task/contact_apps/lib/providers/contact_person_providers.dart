import 'package:contact_apps/Model/contact_person.dart';
import 'package:flutter/cupertino.dart';

class ContactPersonProvider with ChangeNotifier {
  final List<ContactPerson> _cp = [
    ContactPerson(nama: "Indra", phone: "082262314069"),
    ContactPerson(nama: "Celline", phone: "082262310001"),
    ContactPerson(nama: "Anggel", phone: "082262310002"),
    ContactPerson(nama: "Della", phone: "082262310003"),
    ContactPerson(nama: "Celi", phone: "082262310004"),
    ContactPerson(nama: "Mansur", phone: "082262310005"),
    ContactPerson(nama: "Anton", phone: "082262310006"),
    ContactPerson(nama: "Singo", phone: "082262310007"),
    ContactPerson(nama: "Ruslan", phone: "082262310008"),
    ContactPerson(nama: "Indra", phone: "082262310010"),
    ContactPerson(nama: "Taslim", phone: "082262310011"),
  ];

  List<ContactPerson> get cp => [..._cp];

  void tambahPeserta(ContactPerson cpBaru) {
    _cp.add(cpBaru);
    notifyListeners();
  }

  void editPeserta(ContactPerson pembaharuanCp) {
    final targetIndex =
        _cp.indexWhere((peserta) => peserta.id == pembaharuanCp.id);
    if (targetIndex != -1) {
      _cp[targetIndex] = pembaharuanCp;
      notifyListeners();
    }
  }

  void hapusPeserta(String id) {
    final targetIndex = _cp.indexWhere((peserta) => peserta.id == id);
    if (targetIndex != -1) {
      _cp.removeAt(targetIndex);
      notifyListeners();
    }
  }
}
