import 'package:flutter/material.dart';

class CounterNilai with ChangeNotifier {
  var nilaiCounter = 0;
  int count = 1;

  void increment() {
    nilaiCounter = nilaiCounter + count;

    notifyListeners();
  }

  void decrement() {
    nilaiCounter = nilaiCounter - count;
    notifyListeners();
  }

  void reset() {
    nilaiCounter = 0;
    notifyListeners();
  }
}
