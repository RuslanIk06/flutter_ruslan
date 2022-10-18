# (26) MVVM Atchitecture

## Data Diri

Nomor Urut : 1_023FLB_52
Nama : Ruslan

## Task

### Task 01

- Struktur Folder
  ![](../screenshots/struktur%20folder.png)
  Berikut struktur folder diatas :
  - Folder components
    Pada folder components saya membuat sebuah folder style yang berisi file custom_color yang menyimpan semua warna yang digunakan dalam project ini. di folder components juga saya membuat sebuah folder widgets yang didalamnya terdapat file 2 file yang pertama contact item untuk menyimpan hasil data contact yang ditampikan di home page dan yang kedua file contact item details yang digunakan untuk menyimpan data kontak yang lebih detail yang ditampilkan kedalam detail contact page
  - Folder models
    Pada folder models saya membuat sebuah folder providrs yang didalam folder providers terdapat file dengan nama contact provider yang berisi method method yang digunakan dalam project ini. masih dalam folder models terdapat sebuah file dengan nama contact person yang berisi model dari contact dari project dan juga berisi constructor dari model tersebut
  - Folder pages
    Pada folder pages terdapat 3 file yang tentunya file untuk menampilkan ui atau view, file yang pertama adalah file add contact yang berisi form yang menerima inputan data contact, yang kedua file home page yang berfungsi sebagai halaman utama atau tampilan utama dari aplikasi dan yang terakhir adalah file detail contact page yang berfungsi untuk tampilan dari detail kontak.

Selain struktur folder, semua isi file dari project ini sama dengan project di provider sebelumnya.

- Dependencies
  Berikut adalah package yang saya gunakan dalam project ini

```
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2
  nanoid: ^1.0.0
  provider: ^6.0.3
```

- Style (custom_color.dart)

```
const Color whiteColor = Color(0xffF7F8F9);
const Color blueColor = Color(0xff1152FD);
const Color greyColor = Color(0xffD5DDE0);
const Color blackColor = Color(0xff3E4958);
```

Pada file ini saya menginisialisasi color yang sya gunakan pada project ini

- Model (contact_person.dart)

```
import 'package:nanoid/nanoid.dart';

class ContactPerson {
  late String id;
  String nama;
  String phone;

  ContactPerson({
    required this.nama,
    required this.phone,
  }) {
    id = nanoid(5);
  }
}

```

Pertama tama saya membuat model dengan nama ContactPesrson dengan required nama dan nomor telepon dan untuk id saya menggunakan nano id dengan panjang karakter sebanyak 5.

- Provider (contact_provider.dart)

```
class ContactProvider with ChangeNotifier {
  final List<ContactPerson> _cp = [];

  List<ContactPerson> get cp => [..._cp];

  void tambahKontak(ContactPerson newContact) {
    _cp.add(newContact);
    notifyListeners();
  }

  void editKontak(ContactPerson updatePeserta) {
    final targetIndex = _cp.indexWhere((cp) => cp.id == updatePeserta.id);

    if (targetIndex != -1) {
      _cp[targetIndex] = updatePeserta;
      notifyListeners();
    }
  }

  void hapusKontak(String id) {
    final targetIndex = _cp.indexWhere((cp) => cp.id == id);

    if (targetIndex != -1) {
      _cp.removeAt(targetIndex);
      notifyListeners();
    }
  }
}
```

Kemudian saya membuat sebuah provider dengan class ContactProvider dengan ChangeNotifier yang didalam nya saya membuat sebuah list kosong dengan nama \_cp yang diambil dari model ContactPerson dan kemudian saya membuat getter dari list tersebut. dan pada provider ini saya membuat 3 buah event yaitu tambahKontak untuk menambahkan kontak baru, editKontak yang digunakan untuk mengedit atau mengupdate kontak yang sudah ada dan yang terakhir adalah hapusKontak untuk menghapus kontak yang sduah ada.

- Widget (contact_item.dart)

```
class ContactItem extends StatelessWidget {
  final ContactPerson contactPerson;
  const ContactItem(this.contactPerson, {super.key});

  @override
  Widget build(BuildContext context) {
    ...
  }
}
```

Pada widget ini saya membuat sebuah stateless dengan nama ContactItem yang isinya saya membuat sebuah variabel contactPerson dari model ContactPerson dan menambahkan constructor dari class tersebut

```
class ContactItem extends StatelessWidget {
  final ContactPerson contactPerson;
  const ContactItem(this.contactPerson, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        leading: CircleAvatar(
          child: Text(contactPerson.nama[0]),
        ),
        title: Text(contactPerson.nama),
        subtitle: Text(contactPerson.phone),

      ),
      ...
    );
  }
}
```

Kemudian saya mereturn InkWell dengan child ListTile dengan properti leading CircleAvatar yang berisikan huruf pertama dari nama, kemudian pada title saya membuat text yang diambil dari variabel contactPerson dengan value nama.

```
class ContactItem extends StatelessWidget {
  final ContactPerson contactPerson;
  const ContactItem(this.contactPerson, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      ...

      ),
      onLongPress: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Delete Contact"),
              content: Text("Delete Contact With Name ${contactPerson.nama}"),
              actions: [
                TextButton(
                  onPressed: () {
                    Provider.of<ContactProvider>(context, listen: false)
                        .hapusKontak(contactPerson.id);
                    Navigator.pop(context);
                  },
                  child: const Text("Yes"),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("No"))
              ],
            );
          },
        );
      },
      ...
    );
  }
}
```

Masih pada InkWell saya memanggil sebuah event onLongPress yang berisikan showDialog dengan AlertDialog yang berisi title dengan text Delete Contact dan content berisi text Delete Contact With Name "nama dari kontak yang akan di hapus" dan pada actions terdapat 2 buah text button dengan child yes dan no. jika memilih no maka akan keluar dari aler dialog tersebut dengan Navigator.pop(context) dan jika memlih yes maka akan menghapus kontak tersebut yang diambil dari id kontak tersebut

```
class ContactItem extends StatelessWidget {
  final ContactPerson contactPerson;
  const ContactItem(this.contactPerson, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      ...
      onDoubleTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Update Contact"),
              content: Text("Update Contact With Name ${contactPerson.nama}"),
              actions: [
                TextButton(
                  onPressed: () async {
                    await Navigator.of(context).pushNamed(
                        AddContactPage.routeName,
                        arguments: contactPerson);
                    Navigator.pop(context);
                  },
                  child: const Text("Yes"),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("No"))
              ],
            );
          },
        );
      },
    );
  }
}
```

Masih pada InkWell saya juga memanggil sebuah event onDoubleTap yang berisikan showDialog dengan AlertDialog yang berisi title dengan text Update Contact dan content berisi text Update Contact With Name "nama dari kontak yang akan di hapus" dan pada actions terdapat 2 buah text button dengan child yes dan no. jika memilih no maka akan keluar dari aler dialog tersebut dengan Navigator.pop(context) dan jika memlih yes maka berpindah ke page add contact dengan membawa data contact yang berupa nama dan nomor telepon yang dimana jika dilakkan perubahan pada daat tersebut dan tombil simpan di tekan maka akan kembali ke home page dengan data yang sudah di update tadi.

- Home Page (home_page.dart)

```
class HomePage extends StatefulWidget {
  static const routeName = '/contact';
  ....
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final dataKontak = Provider.of<ContactProvider>(context).cp;
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Contact"),
        centerTitle: true,
        backgroundColor: greyColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
          itemBuilder: ((context, index) {
            final kontak = dataKontak.elementAt(index);
            return ContactItem(kontak);
          }),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: dataKontak.length,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, AddContactPage.routeName);
        },
        label: const Text("Create New Contact"),
        backgroundColor: blackColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
```

Pada home page saya membuat sebuah variabel routeName untuk menginisalisasikan root pada home page, selanjutnya saya pada bagian build saya membuat sebuah variabel dataKontak yang diambil dari provider yang berisikan list contact person (cp) dan pada home page saya mereturn Scaffold dengan body Padding dengan child ListView.separated dengan itemBuilder mengambil data kontak dari provider yang berikan list contact person (cp) dan dengan separatorBuilder Divider dan dengan itemCount panjang dari list dataKontak.
dan saya juga membuat sebuah floatingActionButton yang berada di tengah dengan child Text("Create New Contact") yang ketika di klik akan membuka halaman add contact

- Halaman Add Contact (add_contact.dart)

```
class _AddContactPageState extends State<AddContactPage> {
  final formKey = GlobalKey<FormState>();
  var dataKontak = {'nama': '', 'phone': ''};

  ContactPerson? editContact;

  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerPhone = TextEditingController();

  void _onSubmit() {
    formKey.currentState!.save();
    // const print(dataKontak);
    final kontakBaru = ContactPerson(
      nama: dataKontak['nama']!,
      phone: dataKontak['phone']!,
    );

    if (editContact != null) {
      kontakBaru.id = editContact!.id;
      Provider.of<ContactProvider>(context, listen: false)
          .editKontak(kontakBaru);
    } else {
      Provider.of<ContactProvider>(context, listen: false)
          .tambahKontak(kontakBaru);
    }
  }

  @override
  Widget build(BuildContext context) {
    ...
  }
}
```

Pada halaman add contact pertama tama saya membuat formKey dengan GlobalKey untuk membuat form dan variabel dataKontak ayng berisi nama dan no telp, saya juga membuat sebuag variabel editContact dari model ContactPerson yang nullable dan 2 buah TextEditingController untuk nama dan no telp yang disiikan di form dan saya juga membuat method onSubmit untuk menyimpan nama dan no telp yang diimputkan dan juga mengedit nama dan no telp.

```
class _AddContactPageState extends State<AddContactPage> {
  ...

  @override
  Widget build(BuildContext context) {
    editContact = ModalRoute.of(context)!.settings.arguments as ContactPerson?;

    if (editContact != null) {
      _controllerName.text = editContact!.nama;
      _controllerPhone.text = editContact!.phone;
    }

    return Scaffold(
      ...
    );
  }
}
```

pada bagian build saya memanggil variabel editContact dengan ModalRoute dan melakukan kondisi untuk mengedit nama dan no telp

```
class _AddContactPageState extends State<AddContactPage> {
  ...

  @override
  ...

    return Scaffold(
      appBar: AppBar(
        title: const Text("Create New Contact"),
        backgroundColor: greyColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: _controllerName,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    label: Text('Name'),
                    hintText: 'Input Name',
                  ),
                  validator: (value) {
                    if (value == null || value.length < 2) {
                      return 'Silakan input nama yang valid';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    if (newValue != null) dataKontak['nama'] = newValue;
                  },
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  controller: _controllerPhone,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.phone),
                    label: Text('Phone Number'),
                    hintText: 'Input Phone Number',
                  ),
                  validator: (value) {
                    if (value == null || value.length < 10) {
                      return 'Silakan input nomor telepon yang valid';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    if (newValue != null) dataKontak['phone'] = newValue;
                  },
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: greyColor),
                  onPressed: () {
                    if (formKey.currentState != null &&
                        formKey.currentState!.validate()) {
                      _onSubmit();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Menyinmpan data peserta...',
                          ),
                        ),
                      );
                      Navigator.of(context).pop();
                    }
                  },
                  child: const Text('Simpan'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

Dan pada home page saya mereturn sebuah Scaffold dengan body Padding dengan child SingleChildScrollView dan pada SingleChildScrollView saya membat form dengan widget colum yang terdapat 2 buah TextFormField dengan masing masing controller yang sduah di buatkan sebelumnya dan juga setiap TextFormField terdapat validasi input dan terdapat sebuah ElevatedButton untuk menyimpan data yang diiinputkan pada form dengan memanggil method \_onSubmit()

- Main Page (main.dart)

```
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ContactProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        initialRoute: HomePage.routeName,
        routes: {
          HomePage.routeName: (context) => const HomePage(),
          AddContactPage.routeName: (context) => const AddContactPage(),
        });
  }
}
```

pada main, pertama tama saya mendaftarkan provider ke runApp dengan MultiProvider dengan menggunakan ChangeNotifierProvider dengan create ContactProvider atau provider yang telah dibuat dan pada main page saya mereturn MaterialApp dan didalam MaterialApp saya menginsialisasikan route dengan initialRoute dengan memanggil root dari home page dan mendaftarkan route yang ada pada widget routes yaitu routeName dari HomePage yang akan ke halaman HomePage() dan routeName dari AddContactPage yang akan ke halaman AddContactPage

- Hasil
  Berikut hasil dari program diatas
  ![](../screenshots/hasilProvider1.png)
  pada tampilan awal masih kosong karena belum memiliki data dan jika tombol create contact di tekan maka akan membuka halaman create contact
  ![](../screenshots/hasilProvider2.png)
  ![](../screenshots/hasil2.1.png)
  ![](../screenshots/hasilProvider3.png)
  ![](../screenshots/hasilProvider4.png)
  Pada halaman create contact saya emgninputkan nama dan no telp dan jika salah satu form kosong maka akan muncul pesan untuk menginputkan data dengan benar dan jika from sudah di isi dengan benar dan tombol simpan di klik maka akan kembali ke halaman home dangan menampilkan data tersebut di halaman home
  ![](../screenshots/hasilProvider8.png)
  ![](../screenshots/hasilProvider6.png)
  ![](../screenshots/hasilProvider9.png)
  ![](../screenshots/hasilProvider7.png)
  Dan jika data kontak yang ada di home akan di double tab makan akan muncul aler dialog untuk update data tersebut dan jika milih yes maka akan membuka halaman create contact dengan membawa data tersebut dan jika memilih no maka kan kemali ke home page dengan data baru.
  ![](../screenshots/hasilProvider10.png)
  ![](../screenshots/hasilProvider7.png)
  Dan jika data kotak tersebut di tekan lama maka akan muncul aler dialog untuk detele data tersebut dan jika milih yes menghapus data tersebut dan jika memilih no maka kan kemali ke home page.

### Task 02 (Detail Kontak)

- Menambahkan event di provider

```
class ContactProvider with ChangeNotifier {
  final List<ContactPerson> _cp = [];

  List<ContactPerson> get cp => [..._cp];

  ...

  void detailKontak(ContactPerson detail) {
    final targetIndex = _cp.indexWhere((cp) => cp.id == detail.id);

    if (targetIndex != -1) {
      _cp[targetIndex] = detail;
      notifyListeners();
    }
  }
}

```

pada provider saya menambahkan sebuah event baru dengan detail contact yang mengambil dari id dari contanct

- menambahkan method di contact item

```
import 'package:contact_apps/models/contact_person.dart';
import 'package:contact_apps/Pages/add_contact.dart';
import 'package:contact_apps/models/providers/contact_provider.dart';
import 'package:contact_apps/pages/detail_contact_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContactItem extends StatelessWidget {
  final ContactPerson contactPerson;
  ContactItem(this.contactPerson, {super.key});

  var dataKontak = {'nama': '', 'phone': ''};

  ...

  @override
  Widget build(BuildContext context) {
    void _onSubmit() {
      final kontakDetail = ContactPerson(
        nama: dataKontak['nama']!,
        phone: dataKontak['phone']!,
      );

      Provider.of<ContactProvider>(context, listen: false)
          .detailKontak(kontakDetail);
    }

    return InkWell(
      child: ListTile(
        leading: CircleAvatar(
          child: Text(contactPerson.nama[0]),
        ),
        title: Text(contactPerson.nama),
        subtitle: Text(contactPerson.phone),
      ),
      onTap: () {
        _onSubmit();

        Navigator.pushNamed(context, DetailPage.routeName);
      },
      ...
      ...
    );
  }
}

```

Pada contact item item pertama saya menambahkan function onSubmint yang menyimpan data detail contact dan pada onTab saya memanggil function onSubmit dan dinavigasikan ke halaman detail kontak.

- Membuat halaman detail contact

```
...

class DetailPage extends StatefulWidget {
  static const routeName = '/detail';
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final dataKontakById = Provider.of<ContactProvider>(context).cp;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Contact"),
        centerTitle: true,
        backgroundColor: greyColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
          itemBuilder: ((context, index) {
            final kontak = dataKontakById.elementAt(index);
            return ContactItem(kontak);
          }),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: dataKontakById.length,
        ),
      ),
    );
  }
}

```

pada halaman contact detail saya membuat sebuah route buat naviagsi dan pada bagian build saya membuat sebuah variabel dengan nama dataKontakById yang diambil dari list cp di provider. dan mereturn sebuah scaffolde dengan body listview seperateddengan item builder kontakitem dari kontak dan itemcount panjang dari dataKontakById dan dengan separator devider.

- Hasil
  ![](../screenshots/hasil2.1.1.png)
  Ketika kontak dengan nama ruslan di tab maka kontak tersebut akan masuk ke halam detail kontak
  ![](../screenshots/hasil2.1.2.png)
