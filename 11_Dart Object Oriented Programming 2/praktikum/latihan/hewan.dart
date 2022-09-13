class Hewan {
  String? namaHewan, jenis;

  Hewan(String nmHewan, String jenisHewan) {
    namaHewan = nmHewan;
    jenis = jenisHewan;
  }

  bersuara(String suara) {
    print(suara);
  }
}

class Kucing extends Hewan {
  Kucing(String nmHewan, String jenisHewan) : super(nmHewan, jenisHewan);

  lari(String berlari) {
    print(berlari);
  }
}

class Unggas extends Hewan {
  String? keluarga;

  Unggas(String nmHewan, String jenisHewan) : super(nmHewan, jenisHewan);
}

class Burung extends Unggas {
  Burung(String nmHewan, String jenisHewan) : super(nmHewan, jenisHewan);

  terbang(String terbang) {
    print(terbang);
  }
}

void main(List<String> args) {
  var hewan1 = Hewan("angsa", "unggas");

  print(hewan1.namaHewan);
  print(hewan1.jenis);
  hewan1.bersuara("kook kook kok");
  print("==========");

  var kucingOrange = Kucing("Goldie", "Kucing");
  print(kucingOrange.namaHewan);
  print(kucingOrange.jenis);
  kucingOrange.bersuara("Kucing Orange bersuara meoong");
  kucingOrange.lari("Kucing orange Berlari dengan kaki");
  print("==========");

  var ayam = Unggas("Ayam Jago", "Unggas");

  print(ayam.namaHewan);
  print(ayam.jenis);
  ayam.bersuara("kukuruyuk");
  ayam.keluarga;
  print("======");

  var elang = Burung("Elang", "Burung");
  print(elang.namaHewan);
  print(elang.jenis);
  elang.terbang("Elang terbang dengan sayap");
  elang.keluarga;
}
