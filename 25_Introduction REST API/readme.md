# (24) Introduction REST API – JSON serialization/deserialization

## Data Diri

Nomor Urut : 1_023FLB_52
Nama : Ruslan

## Summary

Di section ini saya belajar tentang Introduction REST API – JSON serialization/deserialization yang meliputi :

- REST API
  REST API atau Representational State Tranfer Application Programing Interface mrupakan arsitektural yang memisaahkan tampilan dengan progres bisnis dan tampilan dengan proses bisnis pengiriman data melalui HTTP Request.

- HTTP
  HTTP merupakan protokol yang digunakan untuk pengiriman data pada internet dan biasanya data tersebut berbentuk media web

- Pola Komunikasi
  Adapun pola kumunikasi nya adalah client mengirimkan request ke server lalu server mengelola dan membalas dengan memberi response.

- Struktur Request

  - URL => alamat halaman yang akan diakses
  - Method(GET, POST, PUT, DELETE) => menunjujan aksi yang diinginkan
  - Header => Informasi tambahan terkait request yang dikirimkan
  - Body => Data yang disertakan berasama request,

- Struktur Response

  - Struktir Code => kode yang mewakili keseluruhan response, baik sukses maupun gagal
  - Header
    Informasi tambahan terkait response yang diberikan
  - Body
    Data yang disertakan berasama response.

- Dio
  Dio merupakan sebuah package yang tersedia di pub.dev yang merupakan http client yang dimanfaatkan untuk melakukan REST API, untuk menggunakan doi perlu menginstall package nya terlebih dahulu.

- Serialisasi dan Deserialisasi JSON
  JSON merupakan JavaScript Onject Notation yang umumnya digunakan pada REST API, cara penulisan data pada json biasanya berupa key-value. Serialisasi JSON mengubah struktur data dalam bentuk json, Serialisasi JSON dapat digunakan menggunakan fungsi jsonEncode dari package dart:convert sedangkan Deserialisasi adalah kebalikan dari Serialisasi yaitu mengubah bentuk JSON ke dalam bentuk stuktur data dan dapat mengunakan Deserialisasi JSON dengan mengunakan fungsi jsonDecode dari package package dart:conver juga
