class Manusia {
  String? nik, nama, alamat;

  Manusia(String nik, nama, alamat) {
    this.nik;
    this.nama;
    this.alamat;
  }

  belajar(String study) {
    print(study);
  }
}

class Mahasiswa extends Manusia {
  Mahasiswa(String nik, nama, alamat) : super(nik, nama, alamat);

  String? nomorIndukMahasiswa, programStudi;

  tampilIpk(double ipk) {
    print("IPK Anda : $ipk");
  }

  jadwalMataKuliah(String jadwal) {
    print(jadwal);
  }
}

class Dosen extends Mahasiswa {
  Dosen(String nik, nama, alamat) : super(nik, nama, alamat);

  String? nomorIndukDosenNasional, jabatanFungsional, pangkat;

  jadwalMengajar(String Mengajar) {
    print(Mengajar);
  }
}
