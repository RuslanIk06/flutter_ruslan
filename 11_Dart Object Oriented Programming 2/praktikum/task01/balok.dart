import 'bangun_ruang.dart';

class Balok extends BangunRuang {
  Balok(super.panjang, super.lebar, super.tinggi);

  @override
  void volume() {
    var hasil = panjang * lebar * tinggi;
    print(
        'Volume Balok dengan panjang ${panjang}cm lebar ${lebar}cm dan tinggi ${tinggi}cm adalah ${hasil}');
  }
}
