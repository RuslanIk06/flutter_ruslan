import 'matematika.dart';

class FaktorPersekutuanTerbesar implements Matematika {
  int x;
  int y;

  FaktorPersekutuanTerbesar(this.x, this.y);

  @override
  void hasil() {
    for (int hasil = x; hasil > 0; hasil--) {
      if (x % hasil == 0 && y % hasil == 0) {
        print('FPB dari ${x} dan ${y} adalah ${hasil}');
        break;
      }
    }
  }
}
