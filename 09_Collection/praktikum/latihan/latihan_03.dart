void main(List<String> args) {
  if (args.length > 2) {
    double? angka1, angka2;
    angka1 = double.parse(args[0]);
    angka2 = double.parse(args[2]);
    var operator = args[1];
    double? hasil;

    if (angka1 != null && angka2 != null) {
      switch (operator.toLowerCase()) {
        case '+':
          hasil = angka1 + angka2;
          break;
        case '-':
          hasil = angka1 - angka2;
          break;
        case '*':
          hasil = angka1 * angka2;
          break;
        case '/':
          hasil = angka1 / angka2;
          break;
        default:
          print('Masukan Operator Dengan Benar');
      }
      if (hasil != null) {
        print('$angka1 $operator $angka2 = $hasil');
      }
    } else {
      print('Masukan Angka Dengan Benar');
    }
  } else {
    print('Silahkan Masukan Operasi dan Angka dengan sesuai');
  }
}
