import 'matematika.dart';
import 'fpb.dart';
import 'kpk.dart';

void main(List<String> args) {
  List<Matematika> matematika = [];
  matematika.add(KelipatanPersekutuanTerkecil(8, 5));
  matematika.add(FaktorPersekutuanTerbesar(18, 36));

  for (var operation in matematika) {
    operation.hasil();
  }
}
