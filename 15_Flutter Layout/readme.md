# (15) Flutter Layout

## Data Diri

Nomor Urut : 1_023FLB_52
Nama : Ruslan

## Summary

Di section ini saya belajar tentang Flutter Layout yang meliputi :

- Layout merupakan tempat untuk mengatur tata letak yang membentuk widget dan mengatur widget di dalam nya

- Single-child layout
  Widget ini hanya memiliki sebuah child, seperti :

  - Container
    Container memberikan tampilan seperti sebuah box dan dapat membungkus widget lain dan juga memiliki margin, padding dan border.
  - Center
    widget center akan memenuhi lebar dan tinggi ruang diluarnnya dan membungkus widget lain sebagain child nya, setiap widget yang menjadi child dari widget center maka widget tersebut akan diletakan pada bagian tengah.
  - SizedBox
    Widget SizedBox merupakan bentuk sederhana dari container karena hanya memiliki beberapa properti yaitu hild, width, height yang dapat digunakan untuk mengatur lebar dan tinggi dari widget child nya

- Multi-child layout
  Widget ini hanya memiliki lebih dari satu child yang menggunakan property children yang tipe nya array widget. contoh multi-child layout :

  - Widget Column
    widget yang digunakan untuk mengatur widget secara vertikal

  - Widget Row
    widget yang digunakan untuk mengatur widget secara horizontal

  - Widget ListView
    widget ListView digunakan untuk mengatur widget children nya dalam bentuk list yang memiliki kemampuan scroll

  - Widget GridView
    widget - Widget GridView
    digunakan untuk mengatur widget children nya dalam bentuk galeri dan bisa menggunakan count untuk menentukan jumlah grid yang akan digunakan
