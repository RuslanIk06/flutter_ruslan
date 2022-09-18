import 'bangun_ruang.dart';
import 'balok.dart';
import 'kubus.dart';

void main(List<String> args) {
  List<BangunRuang> bangunRuang = [];
  bangunRuang.add(Balok(10, 4, 6));
  bangunRuang.add(Kubus(0, 0, 0, 4));

  for (var bangun in bangunRuang) {
    bangun.volume();
  }
}
