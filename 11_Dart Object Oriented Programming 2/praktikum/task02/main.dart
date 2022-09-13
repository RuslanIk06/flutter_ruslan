import 'dart:io';

import 'faktorPersekutuanTerbesar.dart';
import 'kelipatanPersekutuanTerkecil.dart';
import 'matematika.dart';

void main(List<String> args) {
  bool isCek = true;

  while (isCek == true) {
    print("===== Program FPB & KPK ======");
    print("1. FPB");
    print("2. KPK");
    print("3. Keluar");
    stdout.write("Masukan Pilihan (1/2/3) : ");
    String pilihan = stdin.readLineSync()!;
    switch (pilihan) {
      case "1":
        var operator = FaktorPersekutuanTerbesar();
        print(operator.hasil());
        break;
      case "2":
        var operator = KelipatanPersekutuanTerkecil();
        print(operator.hasil());
        break;
      case "3":
        isCek = false;
        break;
      default:
        print("Masukan Data dengan benar");
    }
  }
}
