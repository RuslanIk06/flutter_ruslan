import 'bangunRuang.dart';

double? sisi;

class Kubus extends BangunRuang {
  Kubus(double panjang, double lebar, double tinggi, double sisi)
      : super(panjang, lebar, tinggi, sisi) {
    this.sisi = sisi;
  }

  @override
  volume(double sisi1, double sisi2, double sisi3) {
    // TODO: implement volume
    print(sisi1 * sisi2 * sisi3);
  }
}
