# (22) Flutter State Management (BLoC)

## Data Diri

Nomor Urut : 1_023FLB_52
Nama : Ruslan

## Summary

Di section ini saya belajar tentang Flutter State Management (BLoC)yang meliputi :

- BLoC atau Business Logic Component) state yang memisahakan antara busniness logic dan UI.

- Dengan mengunakan BLoC kita dapat membuat aplikasi dengan lebih simple, powerfull dan stable.

- Cara kerja BLoC adalah menerima event sebagai input yang dianalisa dan di kelola di didalam BLoC yang menghasilkan state sebagai output

- Stream adalah rangkaian proses secara asynchronous dan merupakan actor utama di dalam BLoC

- Latihan BLoC :
  - menginstall package bloc
  - Membuat folder Bloc dengan membuat file bloc, event dan state
  - MEnambahkan event di file event
  - menambahkan state dan menyimpan nilai counter di dalam file counter
  - Menambahkan logika bisnis di file bloc dan mengunakan fungsi emil untuk mengirim state terbaru
  - menambahkan BlockProvider di main.dart
  - membuat UI dengan membuat folder screens yang berisi file home page
  - Menambahkan BlocBuilder di home page
  - mengganti text dengan menampilkan nilai terbaru
  - menambahkan contex.read pada fungsi onPresses di di button
