# (23) Flutter Animation

## Data Diri

Nomor Urut : 1_023FLB_52
Nama : Ruslan

## Task

### Task 01

- Main.dart

```
class _MyAppState extends State<MyApp> {
  bool isBig = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image Animation"),
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                isBig = !isBig;
              });
            },
            child: GestureDetector(
              child: SizedBox(
                width: isBig ? double.infinity : 100,
                child: const AnimatedSize(
                  duration: Duration(seconds: 1),
                  curve: Curves.linear,
                  child: Image(
                    image: AssetImage("assets/images/image.jpg"),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

Pada project ini, pertama saya membuat variabel isBig dengan tipe bool yang bernilai false. dan pada bagian body saya membuat widget center dengan child InkWell dengan child saya menggunakan GestureDetector dengan child SizedBox yang dimana width nya jika isBig nya bernilai false maka width nya memenuhi layar dan jika bernilai true maka width nya 100 dan pada child dari SizedBox saya memanggil widget AnimatedSize dengan duration 1 detik dimana curve dari animation nya adalah linear dan pada child dari widget AnimatedSize saya memangambil image dari assets yang sudah saya sediakan

- Hasil
  <img src=../screenshots/1.gif>

###Task 02 (Contact Apps dengan animation transition)

```
floatingActionButton: FloatingActionButton.extended(
  onPressed: () {
    // Navigator.pushNamed(context, AddContactPage.routeName);
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return AddContactPage();
        },
        transitionsBuilder:
            ((context, animation, secondaryAnimation, child) {
          final tween = Tween(begin: Offset(0, 1), end: Offset.zero);
          return RotationTransition(
            turns:
                CurvedAnimation(parent: animation, curve: Curves.linear),
            child: child,
          );
        }),
      ),
    );
  },
  label: const Text("Create New Contact"),
  backgroundColor: blackColor,
),
```

Pada floating action button di halaman home page saya memabuat animasi untuk berpindah dari halaman home page create contact page dengan menggunakan RotationTransition dengan turns CurvedAnimation dimana parent nya merupakan animation dari page builder dan curve linear.

- Hasil

<img src=../screenshots/2.gif>

#####Note : Karena emulator saya sedang bermasalah ketika melakukan record maka saya record manual
