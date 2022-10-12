import 'package:flutter/material.dart';

class TimerProvider extends ChangeNotifier {
  int countDown = 1144;

  updatetimer() {
    countDown--;
    notifyListeners();
  }
}
