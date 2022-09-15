import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'home_page_tugas-2.dart';

class GetTime extends StatefulWidget {
  const GetTime({Key? key}) : super(key: key);

  @override
  State<GetTime> createState() => _GetTimeState();
}

class _GetTimeState extends State<GetTime> {
  String? _waktu;

  void _getWaktu() {
    final String formattedDateTime =
        DateFormat('hh:mm:ss').format(DateTime.now()).toString();
    setState(() {
      _waktu = formattedDateTime;
      print(_waktu);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(_waktu.toString());
  }
}
