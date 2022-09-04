import 'dart:io';

void main(List<String> args) {
  var ibuKota = [
    ["Jakarta", "Indonesia"],
    ["Tokya", "Jepang"]
  ];
  var country = {};
  var kota;
  bool cek = true;

  while (cek == true) {
    print("|==== Menu ===|");
    print("|1. List      |");
    print("|1. Map       |");
    print("|3. Keluar    |");
    print("|=============|");

    stdout.write("Masukan Pilihan (1/2/3) : ");
    var pilihan = stdin.readLineSync();
    switch (pilihan) {
      case "1":
        print("Ibu Kota | Negara        ");
        print("+========|==============+");
        for (kota in ibuKota) {
          print("${kota[0]}\t|${kota[1]}");
        }
        print("=========================");
        break;
      case "2":
        print("Value Dari Map");
        print("==============");
        for (kota in ibuKota) {
          country['kota'] = kota[0];
          country['negara'] = kota[1];
          for (var countryValue in country.values) {
            print(countryValue);
          }
        }
        print("============");
        print("Key Dari Map");
        print("============");
        for (var countryKesy in country.keys) {
          print(countryKesy);
        }
        print("================");
        break;
      case "3":
        cek = false;
        break;
      default:
        print("Masukan Angka Dengan Benar");
    }
  }
}
