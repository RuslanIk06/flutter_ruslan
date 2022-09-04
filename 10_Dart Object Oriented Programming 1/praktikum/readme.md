# (10) Dart Object Oriented Programming 1

## Data Diri

Nomor Urut : 1_023FLB_52
Nama : Ruslan

## Summary

Di section ini saya belajar tentang Dart Object Oriented Programming 1 yang meliputi :

- Objek Oriented Programming atau yang biasa di kenal sebagai OOP adalah sebuah program yang disusun dalam bentuk abstraksi objek yang dimana data dan proses diletakan pada abstraksi tersebut

---

- Ada bebebrapa keuntungan dalam menggunakan konsep paradigma OOP diantaranya adalah mudah melakukan troubleshoot jika terdapat error pada program serta mudah untuk digunakan ulang.

---

- Berikut beberapa komponen OOP diantaranya :

  - Class
    Class adalah sebuah abstraksi atau blueprint dari sebuah objek yang memiliki ciri ciri yang di sebut sebagai properti dan juga memiliki sifat dan kemampuan yang disebut sebagai method. Berikut contoh penulisan class :

    class Hewan {
    ......
    }

  - Objek
    Objek adalah bentuk sebenarnya dari sebuah class atau biasa disebut instance of class. berikut contoh penulisan objek dari class hewan diatas :

    void main() {
    var h1 = Hewan();
    var h2 = Hewan();
    var h3 = Hewan();
    }

  - Property
    Propery adalah ciri - ciri dari suatu class atau hal hal yang dimiliki suatu class dan memiliki sifat seperti variabel. Berikut contoh penulisan property pada class Sapi :

    class Hewan {
    var mata = 2;
    var kaki = 4;
    }

    Dan berikut conntoh dalam mengakses property :

    void main() {
    var h1 = Sapi();

        print(h1.mata);
        print(h1.kaki);

    }

  - Method
    Method adalah sifat dari suatu class atau aktivitas yang dapat dikerjakan suatu class dan memiliki sifat seperti fungsi. berikut contoh dalam membuat method pada class Kucing :

    class Kucing {
    void bersuara() {
    print("Meonggg..")
    }
    }

    Berikut cara pemanggilan method :

    void main() {
    var h1 = Kucing();
    h1.bersuara();
    }

  - Inheritance
  - Generics

---

##Task
###Task 01
###Task 02
