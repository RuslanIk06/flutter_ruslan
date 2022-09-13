import 'dart:io';

import 'balok.dart';
import 'bangunRuang.dart';
import 'kubus.dart';

void main(List<String> args) {
  bool isCek = true;

  while (isCek == true) {
    print("===== Program Bangun Ruang ======");
    print("1. Balok");
    print("2. Kubus");
    print("3. Keluar");
    stdout.write("Masukan Pilihan (1/2/3) : ");
    String pilihan = stdin.readLineSync()!;
    switch (pilihan) {
      case "1":
        var bangun = Balok(10, 5, 10, 0);

        print("Panjang : ${bangun.panjang}");
        print("Lebar : ${bangun.lebar}");
        print("Tinggi : ${bangun.tinggi}");
        print(bangun.volume(10, 5, 10));

        break;
      case "2":
        var bangun = Kubus(0, 0, 0, 10);
        print("Sisi : ${bangun.sisi}");
        print(bangun.volume(10, 10, 10));
        break;
      case "3":
        isCek = false;
        break;
      default:
        print("Masukan Data dengan benar");
    }
  }
}
