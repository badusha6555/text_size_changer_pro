import 'package:flutter/material.dart';

class SizeChangerProvider extends ChangeNotifier {
  double size = 16;

  void increaseSize() {
    size += 10;
    notifyListeners();
  }

  void decreaseSize() {
    size -= 10;
    notifyListeners();
  }
}
