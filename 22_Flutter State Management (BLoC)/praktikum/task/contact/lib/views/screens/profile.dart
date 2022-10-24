import 'package:contact/main.dart';
import 'package:contact/view_models/profile/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/profile/screen';
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Profile"),
          ),
          body: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return ListView.separated(
                itemBuilder: (context, index) {
                  final profile = state.profiles[index];
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(profile.name[0]),
                    ),
                    title: Text(profile.name),
                    subtitle: Text(profile.phone),
                    trailing: Text(profile.address),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: state.profiles.length,
              );
            },
          )),
    );
  }
}
