import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  var themeMode = ThemeMode.light;

  void setTheme(ThemeMode theme) {
    themeMode = theme;
    notifyListeners();
  }
}
