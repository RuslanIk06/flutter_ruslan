import 'dart:io';

class BangunRuang {
  double? panjang, lebar, tinggi, sisi;

  BangunRuang(double panjang, double lebar, double tinggi, double sisi) {
    this.panjang = panjang;
    this.lebar = lebar;
    this.tinggi = tinggi;
    this.sisi = sisi;
  }

  volume(double param1, double param2, double param3) {
    param1 * param2 * param3;
  }
}
