import 'package:contact/view_models/contact/contact_bloc.dart';
import 'package:contact/view_models/profile/profile_bloc.dart';
import 'package:contact/views/screens/contact_screen.dart';
import 'package:contact/views/screens/entry_contact_screen.dart';
import 'package:contact/views/screens/entry_profile.dart';
import 'package:contact/views/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ContactBloc>(
          create: (context) => ContactBloc(),
        ),
        BlocProvider<ProfileBloc>(
          create: (context) => ProfileBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
          useMaterial3: true,
        ),
        initialRoute: HomeScreen.rotuteName,
        routes: {
          HomeScreen.rotuteName: (context) => const HomeScreen(),
          EntryContactScreen.routeName: (context) => const EntryContactScreen(),
          EntryProfile.routeName: (context) => const EntryProfile(),
          ProfileScreen.routeName: (context) => const ProfileScreen(),
        },
      ),
    );
  }
}
