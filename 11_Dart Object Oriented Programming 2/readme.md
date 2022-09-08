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
