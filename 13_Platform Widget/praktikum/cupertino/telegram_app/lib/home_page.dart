import 'package:flutter/cupertino.dart';
import 'package:telegram_app/list_messege.dart';
import 'package:telegram_app/messege.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final chat = <Message>[
    Message(
        profile: "assets/images/factory.png",
        nama: 'Tresnna Apriliana',
        pesan: 'Besok main yaa!',
        waktu: '9:43 PM'),
    Message(
        profile: "assets/images/image01.png",
        nama: 'Arya',
        pesan: 'Ngga tau apa',
        waktu: '6.31 PM'),
    Message(
        profile: "assets/images/image02.png",
        nama: 'Putra Eka',
        pesan: 'Tunggu ya, nanti dikabarin',
        waktu: '4:04 PM'),
    Message(
        profile: "assets/images/image02.png",
        nama: 'Muhammad Ghifari',
        pesan: 'Ok, jam 9 otw',
        waktu: '8:35 AM'),
    Message(
        profile: "assets/images/image03.png",
        nama: 'Yulita',
        pesan: 'Gatau ini selesai jam berapa',
        waktu: 'Yesterday'),
    Message(
        profile: "assets/images/image04.png",
        nama: 'Inggit',
        pesan: 'Iya ka, nanti telfon inggit ya',
        waktu: 'Yesterday'),
    Message(
        profile: "assets/images/image05.png",
        nama: 'Bagaskara Aria',
        pesan: 'Hahahahahaha, ngakak',
        waktu: 'Fri'),
    Message(
        profile: "assets/images/image06.png",
        nama: 'Mudho Ryan',
        pesan: 'Film apa yaa yang bagus?',
        waktu: 'Thu'),
    Message(
        profile: "assets/images/image07.png",
        nama: 'Indira Andreany',
        pesan: 'ok gapapa lanjutt',
        waktu: 'Thu'),
    Message(
        profile: "assets/images/image08.png",
        nama: 'Angel Leory',
        pesan: 'see you',
        waktu: 'Wed'),
    Message(
        profile: "assets/images/image09.png",
        nama: 'Zhein Arifin',
        pesan: 'Pasti bisa',
        waktu: 'Tue'),
    Message(
        profile: "assets/images/image10.png",
        nama: 'Dimas Prayoga',
        pesan: 'Semangatt',
        waktu: 'Tue'),
  ];

  @override
  Widget build(BuildContext context) {
    final pageContent = [
      const Center(
        child: Text('Contacs'),
      ),
      const Center(
        child: Text('Recently Calls'),
      ),
      ListMessege(chat),
      const Center(
        child: Text('Settings'),
      ),
    ];
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Chats'),
        trailing: Icon(CupertinoIcons.pencil_ellipsis_rectangle),
        leading: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            'Edit',
            style: TextStyle(color: Color.fromARGB(255, 99, 173, 197)),
          ),
        ),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.person,
                ),
                label: 'Contacs'),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.phone,
                ),
                label: 'Calls'),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.chat_bubble_2,
                ),
                label: 'Chats'),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.settings,
                ),
                label: 'Settings'),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) => pageContent[index],
          );
        },
      ),
    );
  }
}
