# (10) Dart Object Oriented Programming 2

## Data Diri

Nomor Urut : 1_023FLB_52
Nama : Ruslan

## Summary

Di section ini saya belajar tentang Dart Object Oriented Programming 2 yang meliputi :

- constructor digunakan untuk menkonstruksi objek baru dan constructor merupakan funsi atau method yang dijalankan saat pembuatan objek, sama seperti method constructor juga dapat menerima parameter namun constructor tidak memiliki return value. suatu constructor juga akan memiliki nama yang sama dengan nama class nya

---

- inheritance
  inheritance atau pewarisan adalah membuat class baru dengan memanfaatkan class yang sudah ada, inheritance bisa dianalogikan seperti seorang anak yang mewariskan sifat seperti orang tuanya dimana yang diwarisi bisa di sebut sebagai class anak atau class child dan yang menurunkannya di sebut sebagai class induk atau class parent yang bertujuan agar kemapuan yang dimiliki class parent dapat dimiliki oleh class child nya. untuk melakukan inheritance atau pewarisan bisa dengan menggunakan keyword extends saat pembuatan class child

---

- method overriding adalah kemampuan menulis ulang method yang sudah ada pada super-class nya atau class induk nya yang bertujuan untuk agar method child nya memiliki method yang sama namun dengan proses yang berbeda. saat melakukan overriding ada beberapa hal yang dapat dilakukan : - overriding dilakukan pada class yang melakukan inheritance - menggunakan method yang sudah ada palda class parent - menulis ulang seperti membuat method baru pada class child - menambahkan tanda @oberride dibaris sebelum method dibuat

---

- Interface adalah _class_ yang menunjukan method apa saja yang ada pada suatu class dan slurh method yang ada wajib di override, interface dapat digunakan dengan kata kunci implements. saat menggunakan interface sekilas mirip dengan inheritance namun pada class yang melakukan implements wajob melakukan override pada semua method yang ada pada class induk nya

- Abstrak class meruapakan class abstrak yang artinya class ini hanya gambaran umum dari sebuah class dan tidak dapat dibuat _pada suatu class secara langsung_ namun dapat menurunkan semua properti dan method method yang dimiliki class abstrak tersebut dan semua method tidak harus di override

- Polymorphism adalah kemapuan sebuah data objek berubah menjadi bentuk lain, tipe data yang dapat digunakan adalah super class dan dapat dilakukan pada class dengan melakukan extends ataupun implements

- Generics adalah memapuan menambahkan parameter tye pada class atau fungsi dan memberikan kemampuan agar dapar menerima data dengan type yang berbeda atau tipe data yang kita inginkan, tipe data tersebut ditentukan saat membuat class atau saat menjalankan fungsi

##Task
###Task 01
####Bangun Ruang

Berikut code program dari mencari volume dari bangun ruang :

- class bangun ruang
  ![](../screenshots/Upgrade%20Remedial/classBangunRuang.png)

  Pada class bangun ruang saya membuat variabel panjang, lebar, tinggi dan juga membuat sebuah construtor dari bangun ruang. dan sebuah method kosong volume untuk mencari nilai volume.

  ***

- class Balok
  ![](../screenshots/Upgrade%20Remedial/classBalok.png)

  Pada class balok pertama tama saya melakukan import class bangun ruang kemudian saya membuat sebuah konstructor dari class balok dengan parameter panjang, lebar dan tinggi dan memanggil methon volume yang ada di class bangun ruang dengan cara override yang didalam nya saya buat sebuah variabel hasil dimana nilai dari variabel hasil adalah hasil kali antara panjang, lebar dan tinggi lalu mencetak variabel hasil tersebut.

  ***

- class Kubus
  ![](../screenshots/Upgrade%20Remedial/classKubus.png)

  Pada class kubus pertama tama saya melakukan import class bangun ruang kemudian saya membuat sebuah variabel sisi dengan tipe data double dan membuat sebuah konstructor dari class kubus dengan parameter panjang, lebar, tinggi ditambah sisi dari variabel sisi yang saya buat sebelumnya dan memanggil methon volume yang ada di class bangun ruang dengan cara override yang didalam nya saya buat sebuah variabel hasil dimana nilai dari variabel hasil adalah hasil kali sisi sebanyak 3x (sisi _ sisi _ sisi) lalu mencetak variabel hasil tersebut.

  ***

- class main
  ![](../screenshots/Upgrade%20Remedial/classMain1.png)
  Pada class kubus pertama tama saya melakukan import class bangun ruang, balok dan kubus lalu membuat sebuah list dari bangun ruang dengan nama bangun ruang yang selanjutnya saya menambahkan list bangun ruang tersebut dengan cara add dari dimana nilai yang di add adalah memanggil class balok dengan parameter panjang = 10, lebar = 4 dan tinggi 6 selanjutnya menambahkan list bangun ruang dengan value class dari kubuh dengan parameter panjang, lbar dan tinggi = 0 karena kubus tidak memiliki panjang, lebar dan tinggi dan paramet sisi = 4. selanjutnya adalah melakukan perulangan nilai dari list bangun ruang yang dimana dicetak dengan mamanggil method volume.

  ***

- Berikut output dari program diatas
  ![](../screenshots/Upgrade%20Remedial/hasilTask01.png)

##Task
###Task 02
####KPK dan FPB

Berikut code program dari KPK dan FPB :

- class matematika
  ![](../screenshots/Upgrade%20Remedial/classMatematika.png)
  Pada class mmatematika saya membuat sebuah method hasil dengan value kosong

  ***

- clss KPK
  ![](../screenshots/Upgrade%20Remedial/classKpk.png)
  Pada class kpk pertama tama saya melakukan import class matermatika dan mengimplement class tersebut. Kemudian saya membuat 2 buah variabel x dan y dengan tipe data int. Kemudian saya membuat sebuah constructor dari class KPK dengan parameter x dan y dari class tersebut dan memanggil method hasil dari class matematika dengan cara override yang didalam nya saya melakukan perulangan dengan menginisialisasi nilai variabel x kedalam variabel hasil lalu meng-increment dari variabel hasil tersebut kemudian melakukan pengkondisian dengan if dimana jika sisa hasil bagi antara vaariabel hasil dan x sama dengan 0 dan sisa hasil bagi antara varabel hasail dan y sama dengan 0 maka akan menampilkan nilai dari hasil atau nilai dari kpk kemudian melakukan break.

  ***

- class FPB
  ![](../screenshots/Upgrade%20Remedial/classFpb.png)
  Sama seperti class KPK Pada class FPB juga pertama tama saya melakukan import class matermatika dan mengimplement class tersebut. Kemudian saya membuat 2 buah variabel x dan y dengan tipe data int. Kemudian saya membuat sebuah constructor dari class FPB dengan parameter x dan y dari class tersebut dan memanggil method hasil dari class matematika dengan cara override yang didalam nya saya melakukan perulangan dengan menginisialisasi nilai variabel x kedalam variabel hasil dengan kondisi nilai dari variabel hasil lebih besar dari 0 dan melakuakan decrement pada variabel hasil dimana didalam perulangan tersebut saya membuat sebuah kondisi jika sisa hasil bagi antara variabel x dan variabel hasil sama dengan 0 dan sisa hasil bagi variabel y dengan variabel hasil sama dengan 0 maka akan mencetak dari variabel hasil dimana itu adala nilai dari FBP variabel x dan y selanjutnya menghentikan perulangan dengan brak.

  ***

- class main
  ![](../screenshots/Upgrade%20Remedial/classMain2.png)

  Pada class main pertama tama saya mengimport class matematika, fpb dan kpk lalu membuat sebuah list dari class Matematika dengan nama matematika kemudian menambahkan nilai kpk kedalam list dengan command add dengan memanggil class KPk dengan variabel x = 8 dan y = 5, selanjutnya menambahkan nilai fpb kedalam list dengan command add dengan memanggil class FPb dengan variabel x = 18 dan y = 26 selanjutnya adalah melakukan perulangan nilai dari list matematika dengan nama operator yang dimana variabel operator tersebut memanggil method hasil.

  ***

- hasil
  berikut hasil dari program diatas
  ![](../screenshots/Upgrade%20Remedial/hasilTask02.png)

##Latihan
###Latihan 01 (Hewan)
Berikut kode program :

- class hewan
  ![](../screenshots/classHewan.png)
  pada class hewan saya membuat 2 variabel nama hewan dan jenis hewan yang bertipe string dan boleh null dan sebuah constructor hewan dengan parameter nama hewan dan jenis hewan dan sebuah method bersuara dengan parameter suara
- class kucing
  ![](../screenshots/classKucing.png)
  pada class kucing saya membuat sebuah kontructor kucing dengan parameter nama hewan dan jenis hewan yang mengextends dari class hewan dan sebuah method berlari dengan parameter inputan berlari
- class unggas
  ![](../screenshots/classUnggas.png)
  pada class unggas saya membuat sebuah variabel keluarga dan contructor dari unggas dengan paramter nama hewan dan jenis hewan yang di extends dari class hewan
- class burung
  ![](../screenshots/classBurung.png)
  pada class burung saya melakukan extends ke class unggas dan membuat contructor burung dengan parameter nama hewan dan jenishewan dan sebuah method terbang dengan parameter inputan terbang
- class main
  ![](../screenshots/classMainLatihan.png)

  - pada class main saya membuat objek hewan 1 dari class hewan dengan paramert nama hewan angsa dan jenis hewan nya unggas, lalu mencetak nama hewan dan jenis hewan dari objek hewan 1 dan juga memanggil method bersuara dengan parameter "koook kok kok".

  - selanjutnya saya membuat objek kucing orange dari class kucing dengan parameter nama hewan "goldie" dan jenis hewan "kucing" lalu mencetak nama hewan, jenis hewan, dan memanggil method bersuaran dan lari.

  - selanjutnya saya membuat sebuah objek ayam dari class unggas dengan parameter nama hewan "ayam jago" dan jenis hewan "unggas" kemudian mencetak nama dan jenis hewan dan juga memanggail method bersuaran dan juga properti kluarga.

  - yang terakhir saya membuat sebuah objek elang dari class burung dengan parameter nama hewan "elang" dan jenis hewan "burung" kemudian mencetak nama dan jenis hewan dan mmanggil method terbang dan properti keluagra.

  - Berikut hasil dari program diaatas

  ![](../screenshots/hasilLatihanHewan.dart.png)
