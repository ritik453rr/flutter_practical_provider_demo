import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;

  ///get count value
  int getCount() => _count;

  ///increment count value
  void increment() {
    _count++;
    notifyListeners();
  }

  ///decrement count value
  void decrement() {
    if (_count > 0) {
      _count--;
      notifyListeners();
    }
  }
  
}
