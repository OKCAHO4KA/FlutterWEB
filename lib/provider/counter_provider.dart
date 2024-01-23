import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 15;

  CounterProvider(String query) {
    if (int.tryParse(query) != null) {
      _count = int.parse(query);
    }
  }

  void incrementar() {
    _count++;
    notifyListeners();
  }

  void decrementar() {
    _count--;
    notifyListeners();
  }

  get counter => _count;
}
