import 'package:contact/views/screens/entry_contact_screen.dart';
import 'package:contact/views/screens/entry_profile.dart';
import 'package:contact/views/widgets/contact_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const rotuteName = '/contacts';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Apps"),
        actions: [
          IconButton(
            onPressed: () =>
                Navigator.pushNamed(context, EntryProfile.routeName),
            
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: const ContactList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, EntryContactScreen.routeName);
        },
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
