import 'bangun_ruang.dart';

class Kubus extends BangunRuang {
  double sisi;
  Kubus(super.panjang, super.lebar, super.tinggi, this.sisi);

  @override
  void volume() {
    var hasil = sisi * sisi * sisi;
    print('Volume Kubus dengan panjang sisi ${sisi} cm adalah ${hasil}');
  }
}
