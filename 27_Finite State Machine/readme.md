# (26) Finite State Machine

## Data Diri

Nomor Urut : 1_023FLB_52
Nama : Ruslan

## Summary

Di section ini saya belajar tentang Finite State Machine yang meliputi :

- Pengertian Finite State Machine
  Finite State Machine adalah mesin yang memiliki sejumlah state yang dimana setiap state menunjukan apa yang terjadi sebelumnya.
- Contaoh dari Finite State Machine
  Terdapat 3 state yang menunjukan kejadian dalam suatu proses. berikut kejadiannya : - IDDLE => saat tidak terjadi proses - RUNNING => saat proses sedang berjalan - ERROR => saat proses gagal diselesaikan
- Contoh sukses dari Finite State Machine :
  - IDDLE berubah mejadi RUNNING saat proses berjalan
  - RUNNING kembali menjadi IDDLE saat proses selesai
- Contoh Gagal dari Finite State Machine :

  - IDDLE berubah menjadi running saat proses berjalan
  - RUNNING menjadi ERRIR saat proses mengalami kegagalan
  - ERROR kembali menjadi IDDLE.

- Unit Test
  Unit test adalah salah satu jenis pengujian pada perangkat lunak yang dilakukan pada unit yang berupa method dan fungsi dalam perangkat lunak

- Tujuan unit test

  - Memastikan fungsi dapat mengelola berbagai jenis input
  - Memastikan hasil suatu fungsi atau method sudah sesuai
  - menjadi dokumentasi

- Untuk melakukan unis testing dapat dilakukan dengan 2 cara yitu :

  - Manual => unit dijalankan dan di cek hasilnya secara manual
  - Automated => menulis script yang dapat dijalankan berkali kali menggunakan test runner

- Mocking
  Mocking adalah proses yang terikat dengan sistem eksternal yang dapat memengaruhi jalan nya pengujian. pengaruh tersebut dapat prosses pengujian. mocking dilaukan untuk menghindari masalah masalah tersebut

- Cara kerja mocking
  - Suatu objek dibuat objek tiruannya
  - Bentuk tiruan tersebut memiliki input dan output yang sama dengan yang asli
  - bentuk tiruan menghilangkan ketergantungan pada sistem eksternal
