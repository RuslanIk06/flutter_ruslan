import 'hewan.dart';

class Mobil {
  num totalMax = 100;
  num kapasitasSementara = 0;
  num totalMuatanMobil = 0;

  List<Hewan> muatan = [];

  void tambahMuatan() {
    print("Berat Max : $totalMax");
    print("Kapasitas Sementara : $kapasitasSementara");

    print("Daftar Hewan");
    for (var i = 0; i < muatan.length; i++) {
      print('[${i + 1}] - ${muatan[i].namaHewan}');
    }
  }

  void totalMuatan() {
    print("===========");
    for (var i = 0; i < muatan.length; i++) {
      totalMuatanMobil += muatan[i].beratBadan;
      print(
          '[${i + 1}] - ${muatan[i].namaHewan} - Berat ${muatan[i].beratBadan}');
    }
    print("========");

    print("Total Muatan $totalMuatanMobil");
  }
}
