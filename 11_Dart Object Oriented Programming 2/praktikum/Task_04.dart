class Hewan {
  String? nama;
  String? jenis;

  Hewan(this.nama, this.jenis);

  void suara() {
    print('ada suara');
  }
}

class Kucing extends Hewan {
  Kucing(super.nama, super.jenis);

  @override
  void suara() {
    print('Kucing Bernama ${nama} dan Jenis ${jenis} Suaranya Ngeong');
  }

  void lari() {
    print('Kucing Bernama ${nama} dan Jenis ${jenis} Bisa Berlari Kencang');
  }
}

class Unggas extends Hewan {
  String? keluarga;

  Unggas(super.nama, super.jenis, this.keluarga);

  @override
  void suara() {
    print('Belum diketahui');
  }
}

class Burung extends Unggas {
  Burung(super.nama, super.jenis, super.keluarga);

  void terbang() {
    print('Burung Bernama ${nama} Bisa Terbang');
  }

  void suara() {
    print('Burung Bernama ${nama} dan Jenis ${jenis} Suaranya Cicicuit');
  }
}

void main() {
  var kucing = Kucing('Robert', 'BSH');
  kucing.suara();
  kucing.lari();

  var unggas = Unggas('', '', 'Burung');
  unggas.suara();

  var burung = Burung('Alif', 'Elang', '');
  burung.terbang();
}
