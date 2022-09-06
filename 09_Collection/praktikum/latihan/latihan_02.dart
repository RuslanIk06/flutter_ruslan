void main(List<String> args) {
  var nilai;
  var jumlah;
  var rata2;
  var max = 0;
  var min;

  var angka = [
    [1, 2, 3, 4],
    [5, 6, 7, 8],
    [9, 10, 11, 12],
    [13, 14, 15, 16],
    [19, 1, 12, 19]
  ];

  for (nilai in angka) {
    jumlah = nilai[0] + nilai[1] + nilai[2] + nilai[3];

    print("Jumlah Dari $nilai : $jumlah");

    rata2 = jumlah / nilai.length;
    print("Rata - Rata Dari  $nilai : $rata2");

    min = jumlah;

    for (var i = 0; i < nilai.length; i++) {
      if (nilai[i] < min) {
        min = nilai[i];
      }
      if (max < nilai[i]) {
        max = nilai[i];
      }
    }
    print("nilai min dari $nilai : $min");
    print("nilai max dari $nilai : $max");

    print("=================");
  }
}
