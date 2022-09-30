# (19) Dialog Bottom Sheet

## Data Diri

Nomor Urut : 1_023FLB_52
Nama : Ruslan

## Summary

Di section ini saya belajar tentang Dialog Bottom Sheet yang meliputi :

- Alert Dialog
  Alert dialog merupakan tampilan android dari material desain yang menginformasikan pengguna tentang situasi tertentu, bisa digunakan untuk mendapatkan input dari user dan membutuhkan helpel method showDialog.

---

- Cara membuat alert dialog
  - Aleart Dialog menyediakan properti seperti content dan actions
  - Content bisa dimmasukan widget text, gambar, animasi dll.
  - Actions bisa ditambahkan button untuk membuat properti onPresses

---

- Bottom Sheet
  Bottom sheet sama seperti dialog namum muncul dari bawaah laar aplikasi dan untuk membuat bottom sheet menggunakan fungsi bawaan flutter yaitu showModalBottomSheet dan membutuhkan 2 properti yaitu context dan builder.

---

- Membuat aplikasi taks management
  - Membuat model untuk informasi yang akan disimpan yang disimpan kedalam folder model dan dalam folder tesebut buat sebuah file baru dengan nama task_model.dart untuk menyimpan model nya
  - Membuat task screen yang disimpan kedalam folder task screen dengan nama file task_screen.dart
  - Membuat empty screen dalam folder screens dengan nama file empty_screen.dart
  - Menambahkan package provider di pubspec.yaml
  - Membuat task manager dengan nama task_manager.dart di dalam folder models dan didalam file tersebut tambahkan 2 buah method yaitu delete task dan add task.
  - Tambahka TaskManager sebagai profider pada main.dart
  - Pada task_screen.dart, buat fungsi build task screen yang akan mereturn antara task screen dan data nya atau yang kosong dan menggil fungsinya di body
  - Membuat task item screen dengan nama task_item_screen yang berisikan method on create di folder screens
  - Pada task screen.dart buatlah sebuah floating action button untuk navigasi ke TaskItemScreen.
  - Pada task_item_screen.dart tambahkan sebuah state properti, initState, dan dispose
  - Membuat buidNameField di task_item_screen.dart dan panggil fungsi tersebut dalam ListView
  - Masih pada task_item_screen.dart, membuat buildButtton dan memanggil fungsi tersebut kedalam ListView
  - Membuat Task Item Card pada file baru task_item_card.dart yang terletak di folder Components
  - Menambahkan call back handler di elepatedButton pada buildButton dan menambahkan package uuid pada task_item_screen.dart
  - Membuat Task List Screen dalam folder screens dengnan file baru task_list_screen.dart dan menambahkan buildTaskScreen.
  - Pada task_list_screen.dart tambahkan properti yang dibutuhkan pada TaskItemCard untuk melihat task yang sudah di buat
  - Maenambahkan AlertDialog pada task_item_screen.dart
  - Membuat properti onPressed pada task_item_card.dart
  - menambahkan fungsi onPresses pada TaskItemCard, pada body fungsi nya menambahkan method delete task, Navigator.pop(context) dan ScaffoldMessenger
  - Membuat bottom sheet pada task_screen.dart
  - Membuat file baru profile_sheet.dart did alam folder components
  - Pada task_screen.dart ganti Container pada builder showModalBottomSheet menjadi ProfileSheet
