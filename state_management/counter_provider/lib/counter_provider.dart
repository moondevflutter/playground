import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  // ChangeNotifier를 extends한다.
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners(); // 숫자가 증가했다는 것을 ChangeNotifierProvider에 알려주기 위해 notifyListeners()를 호출한다.
  }

  void decrement() {
    _count--;
    notifyListeners(); // 숫자가 감소했다는 것을 ChangeNotifierProvider에 알려주기 위해 notifyListeners()를 호출한다.
  }
}
