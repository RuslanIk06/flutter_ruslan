# (03) Basic Version and Branch Management (Git)

## Data Diri

Nomor Urut : 1_023FLB_52
Nama : Ruslan

## Summary

Di section ini saya belajar tentang Basic Versiaon and Branch Management (Git) yang meliputi :

- Branch
- Merge
- Stash
- Pull and Pull Request
  dan masih banyak lagi

##Task
###Task 01
Saya membuat repository github dengan nama Tugas-FlutterB-Section3-GIT.
Berikut adalah ilustrasi halaman pembuatan repository github tersebut :
![Repository](screenshots/repository.png)

###Task 02
Implementasi Branching :

- Master
  Untuk membuat branch master berbeda dengan membuat branch lain nya yang harus di buat secara manual. khusus untuk branch master akan otomatis di buat ketika melakukan push.

  - Berikut contoh pembuatan branch master
    ![branch](screenshots/branch_master.png)
    note : contoh command di atas saya menggunakan repository testing yang saya buat khusus untuk melakuan testing karena saya sudah membuat tugas sebelum ada ketentuan nama repository

  - Berikut branch master nya
    ![branch](screenshots/hasil_branch_master.png)

- Development
  membuat branch development dengan mengambil last file dari branch master lalu di push ke dalam branch developemnt.

  - Berikut contoh pembuatan branch development
    ![branch](screenshots/branch_development.png)
    note : contoh command di atas saya menggunakan repository testing yang saya buat khusus untuk melakuan testing karena saya sudah membuat tugas sebelum ada ketentuan nama repository

  - Berikut branch development nya
    ![branch](screenshots/hasil_branch_development.png)

- featureA
  membuat branch featureA dengan mengambil last file dari branch development lalu di push ke dalam branch developemnt.

  - Berikut contoh pembuatan branch featureA
    ![branch](screenshots/branch_featureA.png)
    note : contoh command di atas saya menggunakan repository testing yang saya buat khusus untuk melakuan testing karena saya sudah membuat tugas sebelum ada ketentuan nama repository

  - Berikut branch featureA nya
    ![branch](screenshots/hasil_branch_featureA.png)

- featureB
  membuat branch featureB dengan mengambil last file dari branch development lalu di push ke dalam branch developemnt.

  - Berikut contoh pembuatan branch featureA
    ![branch](screenshots/branch_featureB.png)
    note : contoh command di atas saya menggunakan repository testing yang saya buat khusus untuk melakuan testing karena saya sudah membuat tugas sebelum ada ketentuan nama repository

  - Berikut branch featureA nya
    ![branch](screenshots/hasil_branch_featureB.png)

###Task 03
Implementasi Push, Pull, Stash and Merge :

- Push
  Berikut contoh implementasi push di branch master
  ![push](screenshots/push_branch_master.png)
- Pull
  Berikut contoh implementasi pull di branch master
  ![push](screenshots/pull_branch_master.png)

- Stash
  Berikut contoh implementasi stash di branch featureA :
  Sebelumnya di branch featureA terdapat 1 file .dart yang di ambil dari last file dari branch development dan di edit menjadi (print("Branch featureA))
  ![stash](screenshots/stash1.png)

  Dan di bawah (print("Branch featureA")) akan di tambahkan featureA.1 dan featureA.2
  ![stash](screenshots/stash2.png)

  Namun ada sebuah fitur yang akan di sisipkan ke atas featureA.1 dan featureA.2 yaitu featureA.3 maka akan di lakukan stash featureA.1 dan featureA.2 lalu memasukan faetureA.3
  ![stash](screenshots/stash3.png)

  Jika faetureA.3 sudah dimasukan kedalam branch faetureA maka tahap selanjutnya adalah memangil featureA.1 dan featureA.2 yang sebelumnya dilakukan stash ke staging area dengan command "git stash apply"
  ![stash](screenshots/stash4.png)

  Dan pada saat menggil git featureA.1 dan featureA.2 ke staging area akan mengakibatkan conflict karena featureA.1 dan featureA.3 berada di baris code yang sama
  ![stash](screenshots/stash5.png)

  Fixing conflict di atas dengan menggabungkan keduanya
  ![stash](screenshots/stash6.png)

- Merge

  - Berikut contoh implementasi merge di branch developemnt dengan mengabil dari branch featureA dan branch featureB
    ![merge](screenshots/merge1.png)
    ![merge](screenshots/merge2.png)

  Ketika melakukan merge dari branch development ke branch featureB akan mengakibatkan conflict karena isi featureA dan featureB berada di baris code yang sama
  ![merge](screenshots/merge3.png)

  fixing branch developemt dengan menggabungkan featureA dan featureB
  ![merge](screenshots/merge4.png)
  ![merge](screenshots/merge5.png)

  - Berikut contoh implementasi merge di branch master dengan mengabil dari branch developemnt
    ![merge](screenshots/merge6.png)

  Berikut gambaran grafik network nya
  ![merge](screenshots/graph.png)

###Task 04
Berikut contoh fixing conflick yang branch developemnt ketika melakukan merge ke branch featureA dan featureB

- merge dari branch development ke ke branch featureA
  ![merge](screenshots/merge1.png)
  ![merge](screenshots/merge2.png)

- merge dari branch development ke ke branch featureB
  Ketika melakukan merge dari branch development ke branch featureB akan mengakibatkan conflict karena isi featureA dan featureB berada di baris code yang sama
  ![merge](screenshots/merge3.png)

- fixing branch developemt dengan menggabungkan featureA dan featureB
  ![merge](screenshots/merge4.png)
  ![merge](screenshots/merge5.png)

###Task 05
Implementasi merge no fast forward

- Berikut implementasi merge no fast forward pada branch master
  ![merge](screenshots/merge6.png)
