import 'dart:io';

void main(List<String> args) {
  stdout.write("Masukan Nilai : ");
  int nilai = int.parse(stdin.readLineSync()!);
  print("==========================");

  final String nilaiA = "A";
  final String nilaiB = "B";
  final String nilaiC = "C";

  print("Nilai    : ${nilaiAkhir(nilai)}");
  if (nilai > 70 && nilai <= 100) {
    print("Nilai Akhir : $nilaiA");
  } else if (nilai > 40 && nilai <= 70) {
    print("Nilai Akhir : $nilaiB");
  } else if (nilai > 0 && nilai <= 40) {
    print("Nilai Akhir : $nilaiC");
  } else {
    print("");
  }
}

int nilaiAkhir(int nilai) {
  return nilai;
}
