import 'dart:io';

void main(List<String> args) {
  int i = 0;
  int j = 0;
  int nilai = 0;
  double rata2 = 0;
  var listTotal = [];
  double hasil = 0;

  while (i < 5) {
    stdout.write("Masukan Angka ke ${i + 1} : ");
    nilai = int.parse(stdin.readLineSync()!);
    listTotal.add(nilai);
    i++;
  }

  while (j < listTotal.length) {
    hasil += listTotal[j];
    j++;
  }

  print("Jumlah $hasil");
  print("Rata - Rata dari $listTotal : ${hasil / listTotal.length}");
}
