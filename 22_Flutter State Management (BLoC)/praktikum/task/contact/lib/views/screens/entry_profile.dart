import 'package:contact/models/profile.dart';
import 'package:contact/views/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:contact/view_models/profile/profile_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EntryProfile extends StatefulWidget {
  static const routeName = '/profile';
  const EntryProfile({super.key});

  @override
  State<EntryProfile> createState() => _EntryProfileState();
}

class _EntryProfileState extends State<EntryProfile> {
  final _formKey = GlobalKey<FormState>();

  var _contactProfile = {'name': '', 'phone': '', 'address': ''};

  @override
  Widget build(BuildContext context) {
    final argProfile = ModalRoute.of(context)!.settings.arguments as Profile?;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Profile"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Profile Name"),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama tidak boleh kosong';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      _contactProfile['name'] = newValue!;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Phone Number"),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'No Telp tidak boleh kosong';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      _contactProfile['phone'] = newValue!;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Address"),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Alamat tidak boleh kosong';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      _contactProfile['address'] = newValue!;
                    },
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        final newprofile = Profile(
                          name: _contactProfile['name'].toString(),
                          phone: _contactProfile['phone'].toString(),
                          address: _contactProfile['address'].toString(),
                        );
                        context
                            .read<ProfileBloc>()
                            .add(SaveProfile(newprofile));
                        Navigator.pushNamed(context, ProfileScreen.routeName,
                            arguments: argProfile);
                      }
                    },
                    icon: const Icon(Icons.save_alt),
                    label: const Text("Save Profile"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
