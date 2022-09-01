import 'dart:io';

void main(List<String> args) {
  // bool cek = true;

  // while (cek) {
  //   stdout.write("Masukan nilai faktorial : ");
  //   double nilai = double.parse(stdin.readLineSync()!);
  //   double fak = faktorial(nilai);
  //   print("Faktorial dari $nilai : $fak");
  // }

  nilaiAkhir();
}

double faktorial(double n) {
  double i;
  double f = 1;

  for (i = 2; i <= n; i++) {
    f = f * i;
  }
  return f;
}

void nilaiAkhir() {
  stdout.write("Masukan Nilai : ");
  int nilai = int.parse(stdin.readLineSync()!);
  print("==========================");

  String nilaiAkhir;

  print("Nilai    : $nilai");
  if (nilai > 70 && nilai <= 100) {
    print("Nilai Akhir : ${nilaiAkhir = "A"}");
    nilaiAkhir = "A";
  } else if (nilai > 40 && nilai <= 70) {
    print("Nilai Akhir : ${nilaiAkhir = "B"}");
  } else if (nilai > 0 && nilai <= 40) {
    print("Nilai Akhir : ${nilaiAkhir = "C"}");
  } else {
    print("");
  }
}
