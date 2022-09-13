import 'faktorPersekutuanTerbesar.dart';
import 'matematika.dart';

class KelipatanPersekutuanTerkecil implements Matematika {
  var x, y;
  var nilaiKpk = 0;
  kpk(int x, int y) {
    this.x = x;
    this.y = y;
  }

  @override
  hasil() {
    print(kpk(24, 38));
  }
}
