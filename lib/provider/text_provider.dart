import 'package:flutter/material.dart';

class TextProvider with ChangeNotifier {
  double _initialFontSize = 10;
  double get initialFontSize => _initialFontSize;

  bool _isLightBlue = true;
  bool get isLightBlue => _isLightBlue;

  String get customText => (_isLightBlue) ? "Ini Refactory" : "Ini Yogyakarta";
  Color get customColor => (_isLightBlue) ? Colors.red : Colors.green;

  void onSwitchChanged(bool value) {
    _isLightBlue = value;
    notifyListeners();
  }

  void onSliderChanged(double value) {
    _initialFontSize = value;
    notifyListeners();
  }
}
