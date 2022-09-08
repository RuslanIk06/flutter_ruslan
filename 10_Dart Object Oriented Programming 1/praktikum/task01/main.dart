import 'hewan.dart';
import 'mobil.dart';

void main(List<String> args) {
  var truk = Mobil();

  truk.totalMax;
  truk.kapasitasSementara;

  var hewan1 = Hewan();
  var hewan2 = Hewan();
  var hewan3 = Hewan();

  hewan1.namaHewan = "Kucing";
  hewan1.beratBadan = 10;

  hewan2.namaHewan = "Sapi";
  hewan2.beratBadan = 30;

  hewan3.namaHewan = "Gajah";
  hewan3.beratBadan = 10;

  truk.kapasitasSementara =
      hewan1.beratBadan + hewan2.beratBadan + hewan3.beratBadan;
  if (truk.kapasitasSementara < truk.totalMax) {
    truk.muatan.add(hewan1);
    truk.muatan.add(hewan2);
    truk.muatan.add(hewan3);
  } else {
    print("Muatan Di Tolak");
  }
  truk.tambahMuatan();
  truk.totalMuatan();
}
