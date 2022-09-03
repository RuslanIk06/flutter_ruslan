# (08) Advance Function, Async-Await

## Data Diri

Nomor Urut : 1_023FLB_52
Nama : Ruslan

## Summary

Di section ini saya belajar tentang Basic Dart Programming yang meliputi

- Pengenalan bahasa dart
  Dart adalah bahasa pemrograman yang dirancang untuk membuat aplikasi yang dapat berjalan lebih cepat, tujuan awal di buat dart adalah untuk menggantikan javascript yang dinilai masih memiliki banyak kekurangan.
  ***
- kelebihan dart

  - Type safe
    dart adalah bahasa pemrograman yang menjamin konsistensi pada tipe data
  - Null safety
    Dart merupakan bahasa pemrograman yang memberikan keamanan dari data yang bernilai null
  - Rich standart library
    Dart adalah bahasa pemrograman dengan dukungan library internal dan menjadi salah satu bahasa pemrograman yang memiliki library yang kompleks
  - multiplatform
    Dart adalah bahasa pemrograman yang mampu berjalan di bebrbagai jenis perangkat

---

- Dasar pemrrograman dart

  - Menampilkan text
    untuk menampilkan teks di konsol pada pemrograman dart menggunakan perintah print();
  - Komentar
    komentar bertujuan agar dapat memberikan catatan pada code dan mencegah perintah di jalankan. terdapat 2 cara untuk membuat komentar yang pertama adalah single line komentar dengan diawali dengan garis miring 2x (//) dan multi line komentar yang diawali dengan garis miring dan bintang dan diakhiri dengan tanda bintang dan garis miring (\*/)
  - variabel
    variabel adalah wadah untuk menyimpan data yang memiliki tipe data dan nama variabel. contoh penulisan variabel String nama = "Ruslan".
  - konstanta
    sama seperti variabel namun konstanta digunakan saat kondisi dimana nilai sebuah variabel bernilai tetap dan tidak dapat di ubah.

---

- Tipe data
  Tipe data adalah klasifikasi atau jenis data yang dapat di kelola. berikut jenis - jenis tipe data :

  - int => tipe data untuk mengelola bilangan bulat.
  - double => tipe data untuk mengelola bilangan pecahan.
  - bool => tipe data untuk mengelola kondisi (true/false)
  - string => tipe data untuk mengelola teks

---

- Operator
  operator digunakan untuk melakukan pengoperasian pada data. adapun jenis - jenis operator adalah sebagai berikut :
  - Operator arithmetic => operator untun melakukan perhitungan matematis
  - Operator assignment => operator untuk memberikan nilai pada variabel
  - Operator comparison => operator yang digunakan untuk membandingkan kesetaraan nilai
  - Operator logical => operator yang digunakan untuk menggabungkan beberapa kondisi

---

- Fungsi Lanjutan
  - Anonymous function
    Anonymous function atau lambda adalah function yang tidak memiliki nama
  - Arrow function
    Arrow function dapat memiliki nama dan tidak memiliki nama yang dimana nilai return dari function diambil dari data function tersebut. arrow fuction bertujuan untuk menuliskan function menjadi lebih ringkas

---

- Async-Await
  dengan menggunakan keyword sync-await dapat menjalankan beberapa proses secara Asynchronous tanpa menunggu proses lainnya selesai yang ditulis kedalam bentuk fungsi

---

- Tipe Data Future
  Future dapat membuat suatu proses berjalan nya fungsi bisa di beri waktu atau durasi. jika ingin mengembalikan data return dari objek future memerlukan keyword async untuk menjalankan proses karena async berjalan secara Asynchronous

---

- Collection
  - List
    List dapat menampung banyak data ke dalam satu objek. menyimpan bermacam-macam tipe data seperti string, number, dan boolean. contoh penulisan list
    - var numberList = [1, 2, 3, 4, 5];
    - var stringList = ['Hello', 'Dicoding', 'Dart'];
  - Set
    Set merupakan sebuah collection yang hanya dapat menyimpan nilai yang unik.
  - Map
    Ma adalah sebuah collection yang dapat menyimpan data dengan format key-value. Berikut contoh penulisan map:
    var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan'
    };

---

##Task
###Task 01
Penjumlahan List

Berikut code program task 01
![Task2](../screenshots/output%20task%201.png)

pada kode program di atas saya membuat sebuah fungsi pengali dengan paramter List yang bertipe int dan sebuah parameter pengali dengan tipe int dan untuk fungsi tersebut saya buat secara asynchronous dengan tipe data Future dengan duration 3 second yang dimana hasil akhir dari hasil perkalian liat tersebut disimpan kedalam sebuah variabel list. dan ketika memanggil fungsi pengali pada fungsi main maka fungsi pengali akan diminta memasukan 2 parameter yakni parameter pertama list dan parameter kedua angka pengali. sebagai contoh saya memasukian list [1,2,3,4] dan bilangan pengali 2 sehingga hasilnya adalah sebuah list dengan nilai [2,4,6,8]

###Task 02
Membuat Collection List dan Map

Berikut kode program dari task 02
![Task2](../screenshots/code%20task%202.png)

Secara umum program di atas saya membuat sebuah list ibu kota dan di dalam list ibu kota menampung nilai list juga yang dimana nantinya value dari dari list ibu kota tersebut akan di jadikan sebuah map. saya membuat sebuah menu untuk melakuakan pengecekan value dari list dan map yang dimana menu tersebut saya lakukan perulangan dengan kondisi variabel cek bernilai true maka akan terus belakukan perulangan menu. jika inputan nya 1 makan akan melakukan pengecekan value dari list yang dibuat sebelumnya dan jika inputanya 2 maka akan melakukan pengecekan nilai value dan key dari map yang di buat bedasarkan value dari list dan jika inputan nya 3 maka akan keluar dari program atau variabel cek nya bernilai false dan selain dari inputan 1 , 2, dan 3 maka akan memunculkan pesan "Masukan Angka Dengan Benar".

Berikut output dari program diatas.
![Task2](../screenshots/hasil%20task%202.png)
