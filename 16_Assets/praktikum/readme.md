# (16) Assets

## Data Diri

Nomor Urut : 1_023FLB_52
Nama : Ruslan

## Summary

Di section ini saya belajar tentang Assets yang meliputi :

- Assets merupakan file yang di bundle dan di deployed bersamaaan dengan aplikasi dan assets memiliki tipe seperti data yang berupa file json dan juga berupa icons, images font file dll.

---

- Memasukan Asets
  Untuk memasukan assets kedalam project menggunakan pubspec.yaml yang terletak pada root untuk mengidentifikasi assets yang dibutuhkan aplikasi. Berikut beberapa contoh assets :
  - Image
    Image atau gambar adalah akan membuat tampilan apliksi menjadi lebih menarik, flutter mendukung format gamber seperti JPEG, WebP, Gif, Animated Web/Gif, PNG, BMP dan WBMP dan untuk menampilkan gambar dapat menggunakan sssets atau dari internet dan untuk loading image bisa menggunakan class AssetsImage() dengan method image.assets untuk mendapatkan image yang sudah di tambahkan kedalam project dan juga menggunakan method image network untuk mendapatkan data image melalui internet dengan memasukan string url nya.
    ***
  - Font
    pengunaan font dengan style tertentu akan menjadai keunikan pada sebuah aplikasi, penentuan font yang dipakai biasanya ditentukan oleh seorang UI designer untuk penerapan font bisa menggunakan custom font atau atau dari package. Berikut cara menggunkan font :
    - Custom Font
      - Cari dan download font yang akan digunakan
      - Masukan font (file.ttf) ke project
      - Daftarkan font di pubspec.yaml
      - mengatur font sebagai default di theme.
      - Gunakan font di spesifik widget
    - Font dari package
      - tambahkan package google font kedalam dependencies
      - import package di file dart
      - gunakan font dengan memanggil GoogleFonts.namaFont()

##Task
###Task 01
