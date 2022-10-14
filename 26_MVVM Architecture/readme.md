# (26) MVVM Atchitecture

## Data Diri

Nomor Urut : 1_023FLB_52
Nama : Ruslan

## Summary

Di section ini saya belajar tentang MVVM Atchitecture yang meliputi :

- MVVM atau Model-View ViewModel adalah pandekatan yang memisahkan logic dengan tampilan

- Keuntungan menggunakan MVVM

  - Reusability => jika ada beberapa tampilan atau ui yang memerlukan alur logic yang sama maka bisa menggunakan ViewModel yang sama dengan tampilan atau ui lainnya.
  - Maintainability => mudah dirawat atau di maintain karena tampilan atau ui tidak bertumpung atau tergabung bersama logic
  - Testability => Proses pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktivitas pada pengujian

- Menerapkan MVVM
  Berikut beberapa penerapan atau implementasi MVVM :
  - Strukteur directory
    Pada struktur directory terbagi menjadi 2 bagian, yang pertama directory model yang memiliki 2 bagian yaitu bentuk data yang digunakan dan dan sumber dari data tersebut, yang kedua adakah directory screen yang digunakan untuk halaman atau page dari aplikasasi yang didalam nya terdapat View dan ViewModel
