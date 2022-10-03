# (21) Flutter State Management (Provider)

## Data Diri

Nomor Urut : 1_023FLB_52
Nama : Ruslan

## Summary

Di section ini saya belajar tentang Flutter State Management (Provider)yang meliputi :

- Pengertian state
  State adalah data yang dibaca saat pembuatan widget dan 2.dapat berubah saat widget sedang aktif dan Hanya dimiliki oleh StatefulWidget.

- Global State
  Global state adalah state biasa yang dapat digunakan pada seluruh widget. Global state sangatlah diperlukan Agar antara widget dapat memanfaatkan state yang sama dengan mudah.

- Untuk menggunakan global state dapat menggunakan packages provider yang perlu diinstal terlebih dahulu agar dapat digunakan, dan untuk penggunaan State management.
  - Instalasi Provider:
    1. Menambah package provider pada bagian dependencies dalam file pubspec.yaml.
    2. Jalankan perintah flutter pub get.
  - Membuat State Provider :
    1. Buat file bernama contac.dart
    2. Definisikan state dalam bentuk class
  - Mendaftarkan state provider
    1. Import dalam file main.dart
    2. Daftarkan pada runApp dengan MultiProvider
  - Menggunakan State dari Provider :
    1. Simpan provider dalam variable
    2. Ambil data dari provider melalui getter.
