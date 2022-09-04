import 'dart:io';

void main(List<String> args) async {
  pengali([1, 2, 3, 4], 2);
}

void pengali(List<int> a, int b) async {
  var hasil;
  var hasilAkhir = [];

  await Future.delayed(Duration(seconds: 1), () {
    for (var i = 0; i < a.length; i++) {
      hasil = [a[i] * b];
      hasilAkhir = hasil;
    }

    // print(hasilAkhir);
    hasilAkhir = [a[0] * b, a[1] * b, a[2] * b, a[3] * b];
    print(hasilAkhir);
  });
}
