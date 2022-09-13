import 'bangunRuang.dart';

class Balok extends BangunRuang {
  Balok(double panjang, double lebar, double tinggi, double sisi)
      : super(panjang, lebar, tinggi, sisi);

  @override
  volume(double p, double l, double t) {
    // TODO: implement volume
    print(p * l * t);
  }
}
