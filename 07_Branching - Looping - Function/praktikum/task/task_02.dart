import 'dart:io';

void main(List<String> args) {
  nilaiFaktorial();
}

void nilaiFaktorial() {
  stdout.write("Masukan Nilai : ");
  Bigint nilai = int.parse(stdin.readLineSync()!);
  print("==========================");

  print("Niai dari !$nilai");

  int hasil = 1;
  for (int i = 1; i <= nilai; i++) {
    hasil *= i;
  }

  print("Adalah $hasil");
}
