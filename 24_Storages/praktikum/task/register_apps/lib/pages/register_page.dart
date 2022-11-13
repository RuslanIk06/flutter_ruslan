import 'package:flutter/material.dart';
import 'package:register_apps/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = '/register';
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();

  final _ctrlName = TextEditingController();
  final _ctrlEmail = TextEditingController();
  final _ctrlPhone = TextEditingController();
  final _ctrlPassword = TextEditingController();

  late SharedPreferences dataUser;
  late bool newUser;

  void checkUser() async {
    dataUser = await SharedPreferences.getInstance();
    newUser = dataUser.getBool('register') ?? true;

    if (newUser == false) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
          (route) => false);
    }
  }

  @override
  void initState() {
    checkUser();
    super.initState();
  }

  @override
  void dispose() {
    _ctrlName;
    _ctrlEmail;
    _ctrlPhone;
    _ctrlPassword;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person_add),
                  label: Text('Nama'),
                  hintText: 'Masukan Nama',
                ),
                validator: (value) {
                  if (value == null || value.length < 3) {
                    return 'Masukan Catatan Dengan Benar';
                  }
                  return null;
                },
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                controller: _ctrlName,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.email_outlined),
                  label: Text('Email'),
                  hintText: 'Masukan Email',
                ),
                validator: (value) {
                  if (value == null || value.length < 5) {
                    return 'Masukan Email Dengan Benar';
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                controller: _ctrlEmail,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone_android_outlined),
                  label: Text('Phone'),
                  hintText: 'Masukan Phone',
                ),
                validator: (value) {
                  if (value == null || value.length < 5) {
                    return 'Masukan Phone Dengan Benar';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                controller: _ctrlPhone,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.password_outlined),
                  label: Text('Password'),
                  hintText: 'Masukan Password',
                ),
                validator: (value) {
                  if (value == null || value.length < 5) {
                    return 'Masukan Password Dengan Benar';
                  }
                  return null;
                },
                obscureText: true,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                controller: _ctrlPassword,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  final isValidForm = formKey.currentState!.validate();
                  final username = _ctrlName.text;
                  final email = _ctrlEmail.text;

                  dataUser.setBool('register', false);
                  dataUser.setString('username', username);
                  dataUser.setString('email', email);
                  if (isValidForm) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                        (route) => false);
                  }
                },
                child: const Text('Tambah'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
