import 'dart:io';

void main(List<String> args) {
  // Task 01 - Luas Lingkaran
  print("Program Menghitung Luas Lingkaran");
  print("=================================");

  final double phi = 3.14;
  stdout.write("Masukan Jari - Jari (r) : ");
  int r = int.parse(stdin.readLineSync()!);

  print("Luas Lingkaran = $phi * $r * $r");
  double luasLingkaran = phi * r * r;

  print("Luas lingkarang denga jari jari $r adalah $luasLingkaran");

  // Task 02 - Variabel
  String nama = "Ruslan";
  String asal = "Sulawesi Tenggara";
  String hoby = "Futsal dan Badminton";

  print(
      "=======================================================================");
  print("Task 02");
  print(
      "Hello nama saya $nama, saya berasal dari $asal dan hobi saya adalah $hoby");
}
