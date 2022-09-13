import 'matematika.dart';

class FaktorPersekutuanTerbesar implements Matematika {
  var x, y;
  fpb(int x, int y) {
    this.x = x;
    this.y = y;

    if (x == 0) {
      return y;
    } else if (y == 0) {
      return x;
    } else {
      return fpb(y, x % y);
    }
  }

  @override
  hasil() {
    print(fpb(20, 60));
  }
}
