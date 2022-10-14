import 'package:flutter/material.dart';
import 'package:mvvm_architercture/screen/contact/contact_view_model.dart';
import 'package:provider/provider.dart';
import 'screen/contact/contact_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ContactViewModel(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ContactScreen(),
      ),
    ),
  );
}
